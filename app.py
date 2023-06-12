'''Takes in documents from the National Database and spits it out with SQLModel and FastAPI'''
from sqlmodel import Session, Field, select, SQLModel
from typing import Optional
from rich.console import Console
from rich.table import Table
from database import *
from model.contract import *
from model.enrollment import *
from model.month import *
import csv
import sqlite3
import typer
import time

app = typer.Typer(help = "CLI for Patrician from the commandline.")
console = Console()

def play_successful_message(good: bool = True):
	message_start = "Execute: "
	if good:
		ending = typer.style("successful", fg = typer.colors.GREEN, bold=True)
	else:
		ending = typer.style("failure", fg = typer.colors.WHITE, bg=typer.colors.RED)
	message = message_start + ending
	typer.echo(message)

@app.command()
def example():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	sql_command = "SELECT * FROM enrollment INNER JOIN contract ON enrollment.Contract_Plan = contract.Contract_Plan ORDER BY enrollment DESC LIMIT 1"
	rows = cursor.execute(sql_command).fetchall()
	print(rows)
	connection.commit()
	connection.close()
	play_successful_message()

@app.command()
def drop_all():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	cursor.execute("DROP TABLE IF EXISTS 'contracts';")
	play_successful_message()
	cursor.execute("DROP TABLE IF EXISTS 'master';")
	play_successful_message()
	cursor.execute("DROP TABLE IF EXISTS '2023_06';")
	play_successful_message()
	cursor.execute("DROP TABLE IF EXISTS '2023_05';")
	play_successful_message()
	cursor.execute("DROP TABLE IF EXISTS '2023_04';")
	play_successful_message()
	cursor.execute("DROP TABLE IF EXISTS '2023_03';")
	play_successful_message()
	cursor.execute("DROP TABLE IF EXISTS '2023_02';")
	play_successful_message()
	cursor.execute("DROP TABLE IF EXISTS '2023_01';")
	play_successful_message()
	
	cursor.execute("DROP TABLE IF EXISTS '2022_12';")
	play_successful_message()
	cursor.execute("DROP TABLE IF EXISTS '2022_11';")
	play_successful_message()
	connection.commit()
	connection.close()

@app.command()
def county(county: str):
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	county = county.title()
	rows = cursor.execute("SELECT * FROM enrollment INNER JOIN contract ON enrollment.Contract_Plan = contract.Contract_Plan WHERE County = '" + (county) + "' ORDER BY enrollment DESC LIMIT 100").fetchall()
	print(rows)
	connection.commit()
	connection.close()
	play_successful_message()

# @app.command()
# def marketing_name(OrganizationMarketingName: str):
	# connection = sqlite3.connect('db.db')
	# cursor = connection.cursor()
	# rows = cursor.execute("SELECT * FROM enrollment INNER JOIN contract ON enrollment.Contract_Plan = contract.Contract_Plan WHERE contract.OrganizationMarketingName = '" + (OrganizationMarketingName) + "' ORDER BY enrollment DESC LIMIT 100").fetchall()
	# print(rows)
	# connection.commit()
	# connection.close()
	# play_successful_message()

@app.command()
def state(state: str):
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	rows = cursor.execute("SELECT * FROM enrollment INNER JOIN contract ON enrollment.Contract_Plan = contract.Contract_Plan WHERE State = '" + (state) + "' ORDER BY enrollment DESC LIMIT 100").fetchall()
	print(rows)
	connection.commit()
	connection.close()
	play_successful_message()

@app.command()
def contract_plan(contract_plan: str):
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	rows = cursor.execute("SELECT * FROM enrollment INNER JOIN contract ON enrollment.Contract_Plan = contract.Contract_Plan WHERE enrollment.Contract_Plan = '" + (contract_plan) + "' ORDER BY enrollment DESC LIMIT 100").fetchall()
	print(rows)
	connection.commit()
	connection.close()
	play_successful_message()

@app.command()
def contract(contract: str):
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	rows = cursor.execute("SELECT * FROM enrollment INNER JOIN contract ON enrollment.Contract_Plan = contract.Contract_Plan WHERE enrollment.ContractID = '" + (contract) + "' ORDER BY enrollment DESC LIMIT 100").fetchall()
	print(rows)
	connection.commit()
	connection.close()
	play_successful_message()

@app.command()
def show():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	sql_command = "SELECT enrollment, State, County FROM enrollment INNER JOIN contract ON enrollment.Contract_Plan = contract.Contract_Plan ORDER BY enrollment DESC LIMIT 10"
	rows = cursor.execute(sql_command).fetchall()
	
	list = [['Cat', '7', 'Female'],
	['Dog', '0.5', 'Male'],
	['Guinea Pig', '5', 'Male']]
	
	table = Table(show_header=True, header_style="bold blue")
	table.add_column("#", style="dim", width=6)
	table.add_column("State", min_width = 10)
	table.add_column("County", min_width = 20, justify = "right")

	for row in zip(*list):
		table.add_row(*row)
	connection.commit()
	connection.close()
	console.print(table)
	play_successful_message()

@app.command()
def init():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	create_db_and_tables()
	import_contract_2023_05()
	import_enrollment_2023_05()
	cursor.execute("ALTER TABLE '_2023_05' ADD COLUMN 'Date' DATE DEFAULT '2023-05-15'")
	play_successful_message()

	import_contract_2023_04()
	import_enrollment_2023_04()
	cursor.execute("ALTER TABLE '_2023_04' ADD COLUMN 'Date' DATE DEFAULT '2023-04-15'")
	play_successful_message()

	import_contract_2023_03()
	import_enrollment_2023_03()
	cursor.execute("ALTER TABLE '_2023_03' ADD COLUMN 'Date' DATE DEFAULT '2023-03-15'")
	play_successful_message()

	import_contract_2023_02()
	import_enrollment_2023_02()
	cursor.execute("ALTER TABLE '_2023_02' ADD COLUMN 'Date' DATE DEFAULT '2023-02-15'")
	play_successful_message()

	import_contract_2023_01()
	import_enrollment_2023_01()
	cursor.execute("ALTER TABLE '_2023_01' ADD COLUMN 'Date' DATE DEFAULT '2023-01-15'")
	play_successful_message()
	join_tables()

	import_contract_2022_12()
	import_enrollment_2022_12()
	cursor.execute("ALTER TABLE '_2022_12' ADD COLUMN 'Date' DATE DEFAULT '2022-12-15'")
	play_successful_message()
	join_tables()

	import_contract_2022_11()
	import_enrollment_2022_11()
	cursor.execute("ALTER TABLE '_2022_11' ADD COLUMN 'Date' DATE DEFAULT '2022-11-15'")
	play_successful_message()
	join_tables()

	import_contract_2022_10()
	import_enrollment_2022_10()
	cursor.execute("ALTER TABLE '_2022_10' ADD COLUMN 'Date' DATE DEFAULT '2022-10-15'")
	play_successful_message()
	join_tables()

	import_contract_2022_09()
	import_enrollment_2022_09()
	cursor.execute("ALTER TABLE '_2022_09' ADD COLUMN 'Date' DATE DEFAULT '2022-09-15'")
	play_successful_message()
	join_tables()

	import_contract_2022_08()
	import_enrollment_2022_08()
	cursor.execute("ALTER TABLE '_2022_08' ADD COLUMN 'Date' DATE DEFAULT '2022-08-15'")
	play_successful_message()
	join_tables()

	import_contract_2022_07()
	import_enrollment_2022_07()
	cursor.execute("ALTER TABLE '_2022_07' ADD COLUMN 'Date' DATE DEFAULT '2022-07-15'")
	play_successful_message()
	join_tables()

	import_contract_2022_06()
	import_enrollment_2022_06()
	cursor.execute("ALTER TABLE '_2022_06' ADD COLUMN 'Date' DATE DEFAULT '2022-06-15'")
	play_successful_message()
	join_tables()

	import_contract_2022_05()
	import_enrollment_2022_05()
	cursor.execute("ALTER TABLE '_2022_05' ADD COLUMN 'Date' DATE DEFAULT '2022-05-15'")
	play_successful_message()
	join_tables()

	import_contract_2022_04()
	import_enrollment_2022_04()
	cursor.execute("ALTER TABLE '_2022_04' ADD COLUMN 'Date' DATE DEFAULT '2022-04-15'")
	play_successful_message()
	join_tables()

	import_contract_2022_03()
	import_enrollment_2022_03()
	cursor.execute("ALTER TABLE '_2022_03' ADD COLUMN 'Date' DATE DEFAULT '2022-03-15'")
	play_successful_message()
	join_tables()

	import_contract_2022_02()
	import_enrollment_2022_02()
	cursor.execute("ALTER TABLE '_2022_02' ADD COLUMN 'Date' DATE DEFAULT '2022-02-15'")
	play_successful_message()
	join_tables()

	import_contract_2022_01()
	import_enrollment_2022_01()
	cursor.execute("ALTER TABLE '_2022_01' ADD COLUMN 'Date' DATE DEFAULT '2022-01-15'")
	play_successful_message()
	join_tables()

if __name__ == "__main__":
	app()
