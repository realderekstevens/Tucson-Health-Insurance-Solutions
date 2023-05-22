'''Takes in documents from the National Database and spits it out with SQLModel and FastAPI'''
from sqlmodel import Session, Field, select, SQLModel
from typing import Optional
from rich.console import Console
from database import create_db_and_tables, ENGINE
from models import Contract, Enrollment
import csv
import sqlite3
import typer


console = Console()
app = typer.Typer()

@app.on_event("startup")
def on_startup():
    create_db_and_tables()

@app.command()
def import_contract():
    '''Establish Connection'''
    connection = sqlite3.connect('db.db')
    console.print("[bold white]Established Connection![/bold white]")
    cursor = connection.cursor()
    console.print("[bold white]Established Cursor![/bold white]")
    file = open('csv/CPSC_Contract_Info_2023_04.csv', encoding='cp1252')
    contents = csv.reader(file)
    insert_records = "INSERT INTO contract (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
    cursor.executemany(insert_records, contents)
    select_all = "SELECT * FROM contract"
    rows = cursor.execute(select_all).fetchall()
    connection.commit()
    console.print("[bold green]Connection Commit[/bold green]")
    connection.close()
    console.print("[bold red]Connection Close[/bold red]")

@app.command()
def import_enrollment():
    '''Establish Connection'''
    connection = sqlite3.connect('db.db')
    console.print("[bold white]Established Connection![/bold white]")
    cursor = connection.cursor()
    console.print("[bold white]Established Cursor![/bold white]")
    file = open('csv/CPSC_Enrollment_Info_2023_04.csv',encoding='cp1252')
    contents = csv.reader(file)
    insert_records = "INSERT INTO enrollment (ContractID, PlanID, SSACode, FIPSCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
    cursor.executemany(insert_records, contents)
    select_all = "SELECT * FROM enrollment"
    rows = cursor.execute(select_all).fetchall()
    connection.commit()
    console.print("[bold green]Connection Commit[/bold green]")
    connection.close()
    console.print("[bold red]Connection Close[/bold red]")

@app.command()
def join_tables():
    '''Establish Connection'''
    connection = sqlite3.connect('db.db')
    console.print("[bold magenta]Established Connection![/bold magenta]")
    cursor = connection.cursor()
    console.print("[bold magenta]Established Cursor![/bold magenta]")

    print(f"Joining the Contracts and the Enrollments tables")
    with Session(ENGINE) as session:
        statement = select (Enrollment, Contract).join(Contract).where(Enrollment.County == "Tucson")
        results = session.exec(statement)
        for enrollment, contract in results:
            print("Enrollment:", enrollment, "Contract:", contract)

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
