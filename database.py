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
	insert_records = "INSERT INTO Contract_2023_05 (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_contract_2023_04():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2023_04.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Contract_2023_04 (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_contract_2023_03():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2023_03.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Contract_2023_03 (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_contract_2023_02():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2023_02.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Contract_2023_02 (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_contract_2023_01():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2023_01.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Contract_2023_01 (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_contract_2022_12():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2022_12.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Contract_2022_12 (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_contract_2022_11():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2022_11.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Contract_2022_11 (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_contract_2022_10():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2022_10.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Contract_2022_10 (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_contract_2022_09():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2022_09.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Contract_2022_09 (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_contract_2022_08():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2022_08.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Contract_2022_08 (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_contract_2022_07():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2022_07.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Contract_2022_07 (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_contract_2022_06():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2022_06.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Contract_2022_06 (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_contract_2022_05():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2022_05.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Contract_2022_05 (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_contract_2022_04():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2022_04.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Contract_2022_04 (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_contract_2022_03():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2022_03.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Contract_2022_03 (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_contract_2022_02():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2022_02.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Contract_2022_02 (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_contract_2022_01():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Contract_Info_2022_01.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Contract_2022_01 (ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganization, ContractEffectiveDate) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

# Import Enrollments

def import_enrollment_2023_05():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2023_05.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Enrollment_2023_05 (ContractID, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_enrollment_2023_04():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2023_04.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Enrollment_2023_05 (ContractID, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_enrollment_2023_03():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2023_03.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Enrollment_2023_05 (ContractID, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_enrollment_2023_02():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2023_02.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Enrollment_2023_05 (ContractID, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_enrollment_2023_01():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2023_01.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Enrollment_2023_05 (ContractID, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_enrollment_2022_12():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2022_12.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Enrollment_2023_05 (ContractID, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_enrollment_2022_11():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2022_11.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Enrollment_2023_05 (ContractID, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_enrollment_2022_10():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2022_10.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Enrollment_2023_05 (ContractID, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_enrollment_2022_09():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2022_09.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Enrollment_2023_05 (ContractID, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_enrollment_2022_08():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2022_08.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Enrollment_2023_05 (ContractID, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_enrollment_2022_07():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2022_07.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Enrollment_2023_05 (ContractID, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_enrollment_2022_06():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2022_06.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Enrollment_2023_05 (ContractID, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_enrollment_2022_05():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2022_05.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Enrollment_2023_05 (ContractID, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_enrollment_2022_04():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2022_04.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Enrollment_2023_05 (ContractID, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_enrollment_2022_03():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2022_03.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Enrollment_2023_05 (ContractID, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_enrollment_2022_02():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2022_02.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Enrollment_2023_05 (ContractID, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()

def import_enrollment_2022_01():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	file = open('csv/CPSC_Enrollment_Info_2022_01.csv', encoding='cp1252')
	contents = csv.reader(file)
	insert_records = "INSERT INTO Enrollment_2023_05 (ContractID, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment) VALUES(?, ?, ?, ?, ?, ?, ?)"
	cursor.executemany(insert_records, contents)
	connection.commit()
	connection.close()
# Join Tables

def join_tables():
	connection = sqlite3.connect('db.db')
	cursor = connection.cursor()
	sql_command_1 = "DELETE FROM enrollment WHERE enrollment.Enrollment = '*';"
	sql_command_2 = "DELETE FROM enrollment WHERE enrollment.Enrollment = 'Enrollment';"
	sql_command_3 = "DELETE FROM contract WHERE contract.ContractID = 'Contract ID';"
	sql_command_4 = "ALTER TABLE contract ADD COLUMN 'Contract_Plan';"
	sql_command_5 = "UPDATE enrollment SET 'Contract_Plan' = ContractID || '' || PlanID;"
	sql_command_6 = "UPDATE contract SET 'Contract_Plan' = ContractID || '' || PlanID;"
	cursor.execute(sql_command_1)
	cursor.execute(sql_command_2)
	cursor.execute(sql_command_3)
	cursor.execute(sql_command_4)
	cursor.execute(sql_command_5)
	cursor.execute(sql_command_6)
	connection.commit()
	connection.close()