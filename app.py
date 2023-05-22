'''Takes in documents from the National Database and spits it out with SQLModel and FastAPI'''
from sqlmodel import Session, Field, select, SQLModel
from typing import Optional
from rich.console import Console
from database import create_db_and_tables, ENGINE
from model.contract import *
from model.enrollment import *
import csv
import sqlite3
import typer
import time

app = typer.Typer(help = "CLI for Patrician from the commandline.")
console = Console()

def play_successful_message(good: bool = True):
	message_start = "Excute: "
	if good:
		ending = typer.style("successful", fg = typer.colors.GREEN, bold=True)
	else:
		ending = typer.style("failure", fg = typer.colors.WHITE, bg=typer.colors.RED)
	message = message_start + ending
	typer.echo(message)

@app.command()
def import_contract():
	'''Establish Connection'''
	connection = sqlite3.connect('db.db')
	console.print("[bold green]Established Connection![/bold green]")
	cursor = connection.cursor()
	console.print("[bold green]Established Cursor![/bold green]")
	file = open('csv/CPSC_Contract_Info_2023_04.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO contract (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	select_all = "SELECT * FROM contract"
	rows = cursor.execute(select_all).fetchall()
	connection.commit()
	connection.close()
	play_successful_message()

@app.command()
def import_enrollment():
	'''Establish Connection'''
	connection = sqlite3.connect('db.db')
	console.print("[bold green]Established Connection![/bold green]")
	cursor = connection.cursor()
	console.print("[bold green]Established Cursor![/bold green]")
	file = open('csv/CPSC_Enrollment_Info_2023_04.csv',encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO enrollment (ContractID, PlanID, SSACode, FIPSCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	select_all = "SELECT * FROM enrollment"
	rows = cursor.execute(select_all).fetchall()
	connection.commit()
	connection.close()
	play_successful_message()

@app.command()
def join_tables():
	'''Establish Connection'''
	connection = sqlite3.connect('db.db')
	console.print("[bold green]Established Connection![/bold green]")
	cursor = connection.cursor()
	console.print("[bold green]Established Cursor![/bold green]")
	sql_command_1 = "DELETE FROM enrollment WHERE enrollment.Enrollment = '*';"
	sql_command_2 = "DELETE FROM enrollment WHERE enrollment.Enrollment = 'Enrollment';"
	sql_command_3 = "DELETE FROM contract WHERE contract.ContractID = 'Contract ID';"
	sql_command_4 = "ALTER TABLE enrollment ADD COLUMN 'Contract_Plan';" 
	sql_command_5 = "ALTER TABLE contract ADD COLUMN 'Contract_Plan';"
	sql_command_6 = "UPDATE enrollment SET 'Contract_Plan' = ContractID || '' || PlanID;"
	sql_command_7 = "UPDATE contract SET 'Contract_Plan' = ContractID || '' || PlanID;"
	sql_command_8 = "SELECT * FROM enrollment INNER JOIN contract ON enrollment.Contract_Plan = contract.Contract_Plan ORDER BY enrollment DESC"
	cursor.execute(sql_command_1)
	cursor.execute(sql_command_2)
	cursor.execute(sql_command_3)
	cursor.execute(sql_command_4)
	cursor.execute(sql_command_5)
	cursor.execute(sql_command_6)
	cursor.execute(sql_command_7)
	rows = cursor.execute(sql_command_8).fetchall()
	connection.commit()
	connection.close()
	play_successful_message()

@app.command()
def clean_enrollment():
	with Session(ENGINE) as session:
		statement = select(Enrollment).where(Enrollment.Enrollment == "*")
		results = session.exec(statement)
		enrollment = results.all()
		Enrollment.enrollment = 0
		session.add(enrollment)
		session.commit()
		session.refresh(enrollment)

@app.command()
def init_all():
	create_db_and_tables()
	import_contract()
	import_enrollment()


@app.command()
def stage_2():
	join_tables()
	clean_enrollment()

if __name__ == "__main__":
	app()
