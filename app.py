'''Takes in documents from the National Database and spits it out with SQLModel and FastAPI'''
from sqlmodel import Session, Field, select, SQLModel
from typing import Optional
from rich.console import Console
from rich.table import Table
from database import create_db_and_tables, ENGINE, import_contract_2023_05, import_enrollment_2023_05, join_tables
from model.contract import *
from model.enrollment import *
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
	create_db_and_tables()
	import_contract_2023_05()
	import_enrollment_2023_05()
	join_tables()

if __name__ == "__main__":
	app()
