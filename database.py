from sqlmodel import SQLModel, create_engine
from rich.console import Console
import csv
import sqlite3

SQLITE_FILE_NAME = "db.db"
SQLITE_URL = f"sqlite:///{SQLITE_FILE_NAME}"

ENGINE = create_engine(SQLITE_URL, echo=True)
console = Console()


def create_db_and_tables():
	SQLModel.metadata.create_all(ENGINE)

# Import Contracts

def import_contract_2023_05():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2023_05.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO contract (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	select_all = "SELECT * FROM contract"
	rows = cursor.execute(select_all).fetchall()
	connection.commit()
	connection.close()

def import_contract_2023_04():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2023_04.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO contract (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	select_all = "SELECT * FROM contract"
	rows = cursor.execute(select_all).fetchall()
	connection.commit()
	connection.close()

def import_contract_2023_03():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2023_04.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO contract (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	select_all = "SELECT * FROM contract"
	rows = cursor.execute(select_all).fetchall()
	connection.commit()
	connection.close()

def import_contract_2023_02():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2023_03.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO contract (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	select_all = "SELECT * FROM contract"
	rows = cursor.execute(select_all).fetchall()
	connection.commit()
	connection.close()

def import_contract_2023_01():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2023_02.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO contract (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	select_all = "SELECT * FROM contract"
	rows = cursor.execute(select_all).fetchall()
	connection.commit()
	connection.close()

# Import Enrollments

def import_enrollment_2023_05():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2023_01.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO enrollment (ContractID, PlanID, SSACode, FIPSCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	select_all = "SELECT * FROM enrollment"
	rows = cursor.execute(select_all).fetchall()
	connection.commit()
	connection.close()

def import_enrollment_2023_04():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2023_04.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO enrollment (ContractID, PlanID, SSACode, FIPSCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	select_all = "SELECT * FROM enrollment"
	rows = cursor.execute(select_all).fetchall()
	connection.commit()
	connection.close()

def import_enrollment_2023_03():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2023_03.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO enrollment (ContractID, PlanID, SSACode, FIPSCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	select_all = "SELECT * FROM enrollment"
	rows = cursor.execute(select_all).fetchall()
	connection.commit()
	connection.close()

def import_enrollment_2023_02():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2023_02.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO enrollment (ContractID, PlanID, SSACode, FIPSCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	select_all = "SELECT * FROM enrollment"
	rows = cursor.execute(select_all).fetchall()
	connection.commit()
	connection.close()

def import_enrollment_2023_01():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2023_01.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO enrollment (ContractID, PlanID, SSACode, FIPSCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	select_all = "SELECT * FROM enrollment"
	rows = cursor.execute(select_all).fetchall()
	connection.commit()
	connection.close()

# Join Tables

def join_tables():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	sql_command_1 = "DELETE FROM enrollment WHERE enrollment.Enrollment = '*';"
	sql_command_2 = "DELETE FROM enrollment WHERE enrollment.Enrollment = 'Enrollment';"
	sql_command_3 = "DELETE FROM contract WHERE contract.ContractID = 'Contract ID';"
	sql_command_4 = "ALTER TABLE enrollment ADD COLUMN 'Contract_Plan';" 
	sql_command_5 = "ALTER TABLE contract ADD COLUMN 'Contract_Plan';"
	sql_command_6 = "UPDATE enrollment SET 'Contract_Plan' = ContractID || '' || PlanID;"
	sql_command_7 = "UPDATE contract SET 'Contract_Plan' = ContractID || '' || PlanID;"
	cursor.execute(sql_command_1)
	cursor.execute(sql_command_2)
	cursor.execute(sql_command_3)
	cursor.execute(sql_command_4)
	cursor.execute(sql_command_5)
	cursor.execute(sql_command_6)
	cursor.execute(sql_command_7)
	connection.commit()
	connection.close()