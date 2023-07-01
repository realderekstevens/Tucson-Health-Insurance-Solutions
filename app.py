'''Takes in documents from the National Database and spits it out with SQLModel and FastAPI'''
from sqlmodel import Session, Field, select, SQLModel
from typing import Optional
from rich.console import Console
from rich.table import Table
from database import *
from model.contract import *
from model.enrollment import *
from model.master import *
import csv
import sqlite3
import typer
import time

app = typer.Typer(help = "Command Line Interface for Medicare data.")
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
    sql_command = "SELECT * FROM Enrollment_2023_06 INNER JOIN Contract_2023_06 ON enrollment.Contract_Plan = contract.Contract_Plan ORDER BY enrollment DESC LIMIT 1"
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
    rows = cursor.execute("SELECT * FROM Enrollment_2023_06 INNER JOIN Contract_2023_06 ON Enrollment_2023_06.Contract_Plan = Contract_2023_06.Contract_Plan WHERE County = '" + (county) + "' ORDER BY Enrollment DESC LIMIT 100").fetchall()
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
    rows = cursor.execute("SELECT * FROM Enrollment_2023_06 INNER JOIN Contract_2023_06 ON Enrollment_2023_06.Contract_Plan = Contract_2023_06.Contract_Plan WHERE State = '" + (state) + "' ORDER BY enrollment DESC LIMIT 100").fetchall()
    print(rows)
    connection.commit()
    connection.close()
    play_successful_message()

@app.command()
def contract_plan(contract_plan: str):
    connection = sqlite3.connect('db.db')
    cursor = connection.cursor()
    rows = cursor.execute("SELECT * FROM Enrollment_2023_06 INNER JOIN Contract_2023_06 ON Enrollment_2023_06.Contract_Plan = Contract_2023_06.Contract_Plan WHERE Enrollment_2023_06.Contract_Plan = '" + (contract_plan) + "' ORDER BY enrollment DESC LIMIT 100").fetchall()
    #rows = cursor.execute("SELECT Enrollment, PlanName, PlanType, OrganizationMarketingName, ParentOrganization, OrganizationType, OrganizationName FROM enrollment_2023_05 INNER JOIN contract_2023_05 ON enrollment_2023_05.contractid_planid = contract_2023_05.contractid_planid WHERE county = 'Maricopa' order by enrollment DESC
    print(rows)
    connection.commit()
    connection.close()
    play_successful_message()

@app.command()
def contract(contract: str):
    connection = sqlite3.connect('db.db')
    cursor = connection.cursor()
    rows = cursor.execute("SELECT * FROM Enrollment_2023_06 INNER JOIN Contract_2023_06 ON Enrollment_2023_06.Contract_Plan = Contract_2023_06.Contract_Plan WHERE Enrollment_2023_06.ContractID = '" + (contract) + "' ORDER BY enrollment DESC LIMIT 100").fetchall()
    print(rows)
    connection.commit()
    connection.close()
    play_successful_message()

@app.command()
def show():
    connection = sqlite3.connect('db.db')
    cursor = connection.cursor()
    sql_command = "SELECT enrollment, State, County FROM Enrollment_2023_06 INNER JOIN Contract_2023_06 ON Enrollment_2023_06.Contract_Plan = Contract_2023_06.Contract_Plan ORDER BY enrollment DESC LIMIT 10"
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
def init_small():
    connection = sqlite3.connect('db.db')
    cursor = connection.cursor()
    create_db_and_tables()
    import_contract_2023_06()
    import_enrollment_2023_06()
    cursor.execute("DELETE FROM Enrollment_2023_06 WHERE enrollment = '*'")
    cursor.execute("DELETE FROM Enrollment_2023_06 WHERE enrollment = 'Enrollment'")
    cursor.execute("ALTER TABLE Enrollment_2023_06 DROP COLUMN SSAStateCountyCode")
    cursor.execute("ALTER TABLE Enrollment_2023_06 DROP COLUMN FIPSStateCountyCode")
    cursor.execute("ALTER TABLE Enrollment_2023_06 ADD COLUMN 'Date' DATE DEFAULT '2023-06-15'")
    cursor.execute("ALTER TABLE Enrollment_2023_06 ADD COLUMN 'contractid_planid' text")
    cursor.execute("UPDATE Enrollment_2023_06 SET 'contractid_planid' = contractid || '' || planid")
    cursor.execute("ALTER TABLE Contract_2023_06 ADD COLUMN 'contractid_planid' text")
    cursor.execute("UPDATE Contract_2023_06 SET 'contractid_planid' = contractid || '' || planid")
    connection.commit()
    play_successful_message()



@app.command()
def init_big():
    connection = sqlite3.connect('db.db')
    cursor = connection.cursor()
    create_db_and_tables()

    import_contract_2023_06()
    import_enrollment_2023_06()
    cursor.execute("DELETE FROM Enrollment_2023_06 WHERE enrollment = '*'")
    cursor.execute("DELETE FROM Enrollment_2023_06 WHERE enrollment = 'Enrollment'")
    cursor.execute("ALTER TABLE Enrollment_2023_06 DROP COLUMN SSAStateCountyCode")
    cursor.execute("ALTER TABLE Enrollment_2023_06 DROP COLUMN FIPSStateCountyCode")
    cursor.execute("ALTER TABLE Enrollment_2023_06 ADD COLUMN 'Date' DATE DEFAULT '2023-06-15'")
    cursor.execute("ALTER TABLE Enrollment_2023_06 ADD COLUMN 'contractid_planid' text")
    cursor.execute("UPDATE Enrollment_2023_06 SET 'contractid_planid' = contractid || '' || planid")
    cursor.execute("ALTER TABLE Contract_2023_06 ADD COLUMN 'contractid_planid' text")
    cursor.execute("UPDATE Contract_2023_06 SET 'contractid_planid' = contractid || '' || planid")
    connection.commit()
    play_successful_message()

    import_contract_2023_05()
    import_enrollment_2023_05()
    cursor.execute("DELETE FROM Enrollment_2023_05 WHERE enrollment = '*'")
    cursor.execute("DELETE FROM Enrollment_2023_05 WHERE enrollment = 'Enrollment'")
    cursor.execute("ALTER TABLE Enrollment_2023_05 DROP COLUMN SSAStateCountyCode")
    cursor.execute("ALTER TABLE Enrollment_2023_05 DROP COLUMN FIPSStateCountyCode")
    cursor.execute("ALTER TABLE Enrollment_2023_05 ADD COLUMN 'Date' DATE DEFAULT '2023-05-15'")
    cursor.execute("ALTER TABLE Enrollment_2023_05 ADD COLUMN 'contractid_planid' text")
    cursor.execute("UPDATE Enrollment_2023_05 SET 'contractid_planid' = contractid || '' || planid")
    cursor.execute("ALTER TABLE Contract_2023_05 ADD COLUMN 'contractid_planid' text")
    cursor.execute("UPDATE Contract_2023_05 SET 'contractid_planid' = contractid || '' || planid")
    connection.commit()
    play_successful_message()

    import_contract_2023_04()
    import_enrollment_2023_04()
    cursor.execute("DELETE FROM Enrollment_2023_04 WHERE enrollment = '*'")
    cursor.execute("DELETE FROM Enrollment_2023_04 WHERE enrollment = 'Enrollment'")
    cursor.execute("ALTER TABLE Enrollment_2023_04 DROP COLUMN SSAStateCountyCode")
    cursor.execute("ALTER TABLE Enrollment_2023_04 DROP COLUMN FIPSStateCountyCode")
    cursor.execute("ALTER TABLE Enrollment_2023_04 ADD COLUMN 'Date' DATE DEFAULT '2023-04-15'")
    cursor.execute("ALTER TABLE Enrollment_2023_04 ADD COLUMN 'contractid_planid' text")
    cursor.execute("UPDATE Enrollment_2023_04 SET 'contractid_planid' = contractid || '' || planid")
    cursor.execute("ALTER TABLE Contract_2023_04 ADD COLUMN 'contractid_planid' text")
    cursor.execute("UPDATE Contract_2023_04 SET 'contractid_planid' = contractid || '' || planid")
    connection.commit()
    play_successful_message()

    import_contract_2023_03()
    import_enrollment_2023_03()
    cursor.execute("DELETE FROM Enrollment_2023_03 WHERE enrollment = '*'")
    cursor.execute("DELETE FROM Enrollment_2023_03 WHERE enrollment = 'Enrollment'")
    cursor.execute("ALTER TABLE Enrollment_2023_03 DROP COLUMN SSAStateCountyCode")
    cursor.execute("ALTER TABLE Enrollment_2023_03 DROP COLUMN FIPSStateCountyCode")
    cursor.execute("ALTER TABLE Enrollment_2023_03 ADD COLUMN 'Date' DATE DEFAULT '2023-03-15'")
    cursor.execute("ALTER TABLE Enrollment_2023_03 ADD COLUMN 'contractid_planid' text")
    cursor.execute("UPDATE Enrollment_2023_03 SET 'contractid_planid' = contractid || '' || planid")
    cursor.execute("ALTER TABLE Contract_2023_03 ADD COLUMN 'contractid_planid' text")
    cursor.execute("UPDATE Contract_2023_03 SET 'contractid_planid' = contractid || '' || planid")
    connection.commit()
    play_successful_message()

    import_contract_2023_02()
    import_enrollment_2023_02()
    cursor.execute("DELETE FROM Enrollment_2023_02 WHERE enrollment = '*'")
    cursor.execute("DELETE FROM Enrollment_2023_02 WHERE enrollment = 'Enrollment'")
    cursor.execute("ALTER TABLE Enrollment_2023_02 DROP COLUMN SSAStateCountyCode")
    cursor.execute("ALTER TABLE Enrollment_2023_02 DROP COLUMN FIPSStateCountyCode")
    cursor.execute("ALTER TABLE Enrollment_2023_02 ADD COLUMN 'Date' DATE DEFAULT '2023-02-15'")
    cursor.execute("ALTER TABLE Enrollment_2023_02 ADD COLUMN 'contractid_planid' text")
    cursor.execute("UPDATE Enrollment_2023_02 SET 'contractid_planid' = contractid || '' || planid")
    cursor.execute("ALTER TABLE Contract_2023_02 ADD COLUMN 'contractid_planid' text")
    cursor.execute("UPDATE Contract_2023_02 SET 'contractid_planid' = contractid || '' || planid")
    connection.commit()
    play_successful_message()

    import_contract_2023_01()
    import_enrollment_2023_01()
    cursor.execute("DELETE FROM Enrollment_2023_01 WHERE enrollment = '*'")
    cursor.execute("DELETE FROM Enrollment_2023_01 WHERE enrollment = 'Enrollment'")
    cursor.execute("ALTER TABLE Enrollment_2023_01 DROP COLUMN SSAStateCountyCode")
    cursor.execute("ALTER TABLE Enrollment_2023_01 DROP COLUMN FIPSStateCountyCode")
    cursor.execute("ALTER TABLE Enrollment_2023_01 ADD COLUMN 'Date' DATE DEFAULT '2023-01-15'")
    cursor.execute("ALTER TABLE Enrollment_2023_01 ADD COLUMN 'contractid_planid' text")
    cursor.execute("UPDATE Enrollment_2023_01 SET 'contractid_planid' = contractid || '' || planid")
    cursor.execute("ALTER TABLE Contract_2023_01 ADD COLUMN 'contractid_planid' text")
    cursor.execute("UPDATE Contract_2023_01 SET 'contractid_planid' = contractid || '' || planid")
    connection.commit()
    play_successful_message()

if __name__ == "__main__":
    app()
