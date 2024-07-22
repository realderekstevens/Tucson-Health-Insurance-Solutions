#!/bin/bash

PSQL="psql -X --username=postgres --dbname=medicare --tuples-only -c"
PSQL_CreateDatabase="psql -X --username=postgres --dbname=postgres --tuples-only -c"

MAIN_MENU(){
   if [[ $1 ]]
   then
      echo -e "\n$1"
   fi
   clear
   echo -e "\n~~~~~ PostgREST MedicareAPI Command Line Interface ~~~~~"
   echo -e "\n0.) Database Management Menu\n1.) Github Management\n2.) PostgREST Management\n3.) Arch Linux Management\n4.) Exit Program"
   echo -e "\nEnter Command: "
   read MAIN_MENU_SELECTION
   case $MAIN_MENU_SELECTION in
   0) DATABASE_MANAGEMENT_MENU ;;
   1) GITHUB_MANAGEMENT_MENU ;;
   2) POSTGREST_MANAGEMENT_MENU ;;
   3) ARCH_LINUX_MANAGEMENT_MENU ;;
   4) EXIT ;;
   *) MAIN_MENU "Please enter a valid option." ;;
esac
}

DATABASE_MANAGEMENT_MENU(){
   if [[ $1 ]]
   then
      echo -e "\n$1"
   fi
   clear
   echo -e "\n~~~~~ PostgREST Management Menu ~~~~~"
   echo -e "\n0. Return To Main Menu\n1. List Schema Menu\n2. Create Databases & Tables Menu\n3. Delete Databases & Tables Menu\n4. Insert Data Menu\n5. Select Data Menu\n6. Update Contracts Menu\n"
   echo "Enter Command: "
   read DATABASE_MANAGEMENT_MENU_SELECTION
   case $DATABASE_MANAGEMENT_MENU_SELECTION in
   0) MAIN_MENU ;;
   1) LIST_SCHEMA_MENU ;;
   2) CREATE_DATABASE_AND_TABLES_MENU ;;
   3) DELETE_DATABASE_MANAGEMENT_MENU ;;
   4) INSERT_DATA_MENU ;;
   5) SELECT_DATA_MENU ;;
   6) UPDATE_DATA_MENU ;;
   *) DATABASE_MANAGEMENT_MENU "Please enter a valid option." ;;
esac
}

ARCH_LINUX_MANAGEMENT_MENU(){
	if [[ $1 ]]
	then
		echo -e "\n$1"
	fi
	clear
	echo -e "\n~~~~~ Arch Linux Management Menu ~~~~~"
	echo -e "\n0. Return to Main Menu\n"
	echo "Enter Command: "
	read ARCH_LINUX_MANAGEMENT_MENU_SELECTION
	case $ARCH_LINUX_MANAGEMENT_MENU_SELECTION in
	0) MAIN_MENU ;;
	*) ARCH_LINUX_MANAGEMENT_MENU "Please enter a valid option." ;;
esac
}

POSTGREST_MANAGEMENT_MENU(){
	if [[ $1 ]]
	then
		echo -e "\n$1"
	fi
	clear
	echo -e "\n~~~~~ PostgREST Management Menu ~~~~~"
	echo -e "\n0.) Return to Main Menu\n1.) Create Schema api\n2.) Create Table api.todos\n3.) Create Role webanon\n4.) Create role Authenticator\n5.) Run PostgREST Tutorial\n"
	echo "ENTER COMMAND: "
	read POSTGREST_MANAGEMENT_MENU_SELECTION
	case $POSTGREST_MANAGEMENT_MENU_SELECTION in
	0) MAIN_MENU ;;
	*) POSTGREST_MANAGEMENT_MENU "Please enter a valid option." ;;
esac
}

GITHUB_MANAGEMENT_MENU(){
   if [[ $1 ]]
   then
      echo -e "\n$1"
   fi
   clear
   echo -e "\n~~~~~ Github Management Menu ~~~~~"
   echo -e "\n0. Return to Main Menu\n1. git add app.sh\n2. git commit -m "Updated within CLI"\n3. git push -u origin HEAD\n"
   echo "Enter Command: "
   read GITHUB_MANAGEMENT_MENU_SELECTION
   case $GITHUB_MANAGEMENT_MENU_SELECTION in
   0) MAIN_MENU ;;
   1) GITHUB_ADD ;;
   2) GITHUB_COMMIT ;;
   3) GITHUB_PUSH ;;
   *) GITHUB_MANAGEMENT_MENU "Please enter a valid option." ;;
esac
}

GITHUB_ADD(){
	git add app.sh
	GITHUB_MANAGEMENT_MENU
}

GITHUB_COMMIT(){
	git commit -m "Committed from the command line"
	GITHUB_MANAGEMENT_MENU
}

GITHUB_PUSH(){
	git push -u origin HEAD
	GITHUB_MANAGEMENT_MENU
}

LIST_SCHEMA_MENU(){
   if [[ $1 ]]
   then
      echo -e "\n$1"
   fi
   echo -e "\n~~~~~ Schema Menu ~~~~~"
   echo -e "\n0. Return To Database Management Menu\n1. List Databases\n2. List Tables\n3. List Table contracts\n4. List Table enrollments\n"
   echo "Enter Command: "
   read DATABASE_MANAGEMENT_MENU_SELECTION
   case $DATABASE_MANAGEMENT_MENU_SELECTION in
   0) DATABASE_MANAGEMENT_MENU ;;
   1) LIST_DATABASES ;;
   2) LIST_TABLES ;;
   3) LIST_TABLE_CONTRACTS ;;
   4) LIST_TABLE_ENROLLMENTS ;;
   *) LIST_SCHEMA_MENU "Please enter a valid option." ;;
esac
}

LIST_DATABASES(){
	$PSQL_CreateDatabase "\l"
	LIST_SCHEMA_MENU "Listed Databases"
}

LIST_TABLES(){
	$PSQL "\dt+"
	LIST_SCHEMA_MENU "Listed Tables"
}

LIST_TABLE_CONTRACTS(){
	$PSQL "\d contracts"
	LIST_SCHEMA_MENU "Listed Table contracts"
}

LIST_TABLE_ENROLLMENTS(){
	$PSQL "\d enrollments"
	LIST_SCHEMA_MENU "Listed Table enrollments"
}

CREATE_DATABASE_AND_TABLES_MENU(){
   if [[ $1 ]]
   then
      echo -e "\n$1"
   fi
   echo -e "\n~~~~~ Create Database & Tables Menu ~~~~~"
   echo -e "\n0. Return To Database Management Menu\n1. Create Database medicare\n2. Create Table contracts\n3. Create Table enrollments"
   echo "Enter Command: "
   read DATABASE_MANAGEMENT_MENU_SELECTION
   case $DATABASE_MANAGEMENT_MENU_SELECTION in
   0) DATABASE_MANAGEMENT_MENU ;;
   1) CREATE_DATABASE ;;
   2) CREATE_TABLE_CONTRACTS ;;
   3) CREATE_TABLE_ENROLLMENTS ;;
   *) CREATE_DATABASE_AND_TABLES_MENU "Please enter a valid option." ;;
esac
}

CREATE_DATABASE(){
	$PSQL_CreateDatabase "CREATE DATABASE medicare;"
	CREATE_DATABASE_AND_TABLES_MENU "Created Database: medicare"
}

CREATE_TABLE_CONTRACTS(){
	$PSQL "CREATE TABLE contracts();"
	$PSQL "ALTER TABLE contracts ADD COLUMN postgres_id SERIAL PRIMARY KEY ;"
	$PSQL "ALTER TABLE contracts ADD COLUMN contract_id VARCHAR;"
	$PSQL "ALTER TABLE contracts ADD COLUMN plan_id SMALLINT;"
	$PSQL "ALTER TABLE contracts ADD COLUMN organization_type VARCHAR;"
	$PSQL "ALTER TABLE contracts ADD COLUMN plan_type VARCHAR;"
	$PSQL "ALTER TABLE contracts ADD COLUMN offers_part_d BOOLEAN;"
	$PSQL "ALTER TABLE contracts ADD column snp_plan BOOLEAN;"
	$PSQL "ALTER TABLE contracts ADD COLUMN eghp BOOLEAN;"
	$PSQL "ALTER TABLE contracts ADD COLUMN organization_name VARCHAR;"
	$PSQL "ALTER TABLE contracts ADD COLUMN organization_marketing_name VARCHAR;"
	$PSQL "ALTER TABLE contracts ADD COLUMN plan_name VARCHAR;"
	$PSQL "ALTER TABLE contracts ADD COLUMN parent_organization VARCHAR;"
	$PSQL "ALTER TABLE contracts ADD COLUMN contract_effective_date DATE;"
	CREATE_DATABASE_AND_TABLES_MENU "Created Tables contracts & Altered"
}

CREATE_TABLE_ENROLLMENTS(){
	$PSQL "CREATE TABLE enrollments();"
	$PSQL "ALTER TABLE enrollments ADD COLUMN postgres_id SERIAL PRIMARY KEY;"
	$PSQL "ALTER TABLE enrollments ADD COLUMN contract_id VARCHAR(10);"
	$PSQL "ALTER TABLE enrollments ADD COLUMN plan_id SMALLINT;"
	$PSQL "ALTER TABLE enrollments ADD COLUMN ssa_state_county_code VARCHAR(10);"
	$PSQL "ALTER TABLE enrollments ADD COLUMN fips_state_county_code VARCHAR(10);"
	$PSQL "ALTER TABLE enrollments ADD COLUMN state VARCHAR(2);"
	$PSQL "ALTER TABLE enrollments ADD COLUMN county VARCHAR(50);"
	$PSQL "ALTER TABLE enrollments ADD COLUMN enrollment VARCHAR(100);"
	CREATE_DATABASE_AND_TABLES_MENU "Created Table enrollments & Altered"
}

DELETE_DATABASE_MANAGEMENT_MENU(){
   if [[ $1 ]]
   then
      echo -e "\n$1"
   fi
   echo -e "\n~~~~~ Delete Database & Tables Menu ~~~~~"
   echo -e "\n0. Return To Database Management Menu\n1. Delete Database medicare\n2. Delete Table contracts\n3. Delete Table enrollments"
   echo "Enter Command: "
   read DATABASE_MANAGEMENT_MENU_SELECTION
   case $DATABASE_MANAGEMENT_MENU_SELECTION in
   0) DATABASE_MANAGEMENT_MENU ;;
   1) DELETE_DATABASE ;;
   2) DELETE_TABLE_CONTRACTS ;;
   3) DELETE_TABLE_ENROLLMENTS ;;
   *) DELETE_DATABASE_MANAGEMENT_MENU "Please enter a valid option." ;;
esac
}

DELETE_DATABASE(){
	$PSQL_CreateDatabase "DROP DATABASE medicare;"
	DELETE_DATABASE_MANAGEMENT_MENU "Dropped Table medicare"
}

DELETE_TABLE_CONTRACTS(){
	$PSQL "DROP TABLE contracts;"
	DELETE_DATABASE_MANAGEMENT_MENU "Dropped Table contracts"
}

DELETE_TABLE_ENROLLMENTS(){
	$PSQL "DROP TABLE enrollments;"
	DELETE_DATABASE_MANAGEMENT_MENU "Dropped Table enrollments"
}

INSERT_DATA_MENU(){
   if [[ $1 ]]
   then
      echo -e "\n$1"
   fi
   echo -e "\n~~~~~ Insert Data Menu ~~~~~"
   echo -e "\n0. Return To Database Management Menu\n1. Insert 07/2024 Data\n"
   echo "Enter Command: "
   read DATABASE_MANAGEMENT_MENU_SELECTION
   case $DATABASE_MANAGEMENT_MENU_SELECTION in
   0) DATABASE_MANAGEMENT_MENU ;;
   1) INSERT_EXAMPLE_BIKES_DATA ;;
   2) IMPORT_EXAMPLE ;;
   *) INSERT_DATA_MENU "Please enter a valid option." ;;
esac
}

INSERT_EXAMPLE_BIKES_DATA(){
	$PSQL "INSERT INTO bikes (type, size) VALUES ('Mountain', 27);"
	$PSQL "INSERT INTO bikes (type, size) VALUES ('Mountain', 28);"
	$PSQL "INSERT INTO bikes (type, size) VALUES ('Mountain', 29);"
	$PSQL "INSERT INTO bikes (type, size) VALUES ('Road', 27);"
	$PSQL "INSERT INTO bikes (type, size) VALUES ('Road', 28);"
	$PSQL "INSERT INTO bikes (type, size) VALUES ('Road', 29);"
	$PSQL "INSERT INTO bikes (type, size) VALUES ('BMX', 19);"
	$PSQL "INSERT INTO bikes (type, size) VALUES ('BMX', 20);"
	$PSQL "INSERT INTO bikes (type, size) VALUES ('BMX', 21);"
	DATABASE_MANAGEMENT_MENU "Inserted Example Bikes"
}

IMPORT_EXAMPLE(){
	psql -d medicare -U postgres -c "\COPY enrollments(contract_id, plan_id, ssa_state_county_code, fips_state_county_code, state, county, enrollment) from /home/dude/MedicareAPI/csv/CPSC_Enrollment_Info_2024_07.csv delimiter ',' csv header;"

}

SELECT_DATA_MENU(){
   if [[ $1 ]]
   then
      echo -e "\n$1"
   fi
   echo -e "\n~~~~~ Insert Data Menu ~~~~~"
   echo -e "\n0. Return To Database Management Menu\n1. Select All Bikes\n"
   echo "Enter Command: "
   read DATABASE_MANAGEMENT_MENU_SELECTION
   case $DATABASE_MANAGEMENT_MENU_SELECTION in
   0) DATABASE_MANAGEMENT_MENU ;;
   1) SELECT_ALL_BIKES ;;
   *) SELECT_DATA_MENU "Please enter a valid option." ;;
esac
}

SELECT_ALL_BIKES(){
	AVAILABLE_BIKES=$($PSQL "SELECT bike_id, type, size FROM bikes WHERE available=TRUE ORDER BY bike_id")
	echo "$AVAILABLE_BIKES"
	SELECT_DATA_MENU
}

UPDATE_DATA_MENU(){
   if [[ $1 ]]
   then
      echo -e "\n$1"
   fi
   echo -e "\n~~~~~ Update Bikes Available ~~~~~"
   echo -e "\n0. Return To Database Management Menu\n1. Update All Bikes as Available\n2. Update All Bikes as Unavailable\n3. Update all bikes available except BMX\n"
   echo "Enter Command: "
   read UPDATE_MENU_SELECTION
   case $UPDATE_MENU_SELECTION in
   0) DATABASE_MANAGEMENT_MENU ;;
   1) UPDATE_ALL_BIKES_AVAILABLE ;;
   2) UPDATE_ALL_BIKES_UNAVAILABLE ;;
   3) UPDATE_ALL_BIKES_AVAILABLE_EXCEPT_BMX ;;
   *) SELECT_DATA_MENU "Please enter a valid option." ;;
esac
}

UPDATE_ALL_BIKES_AVAILABLE(){
	AVAILABLE_BIKES=$($PSQL "UPDATE bikes SET AVAILABLE = true;")
	UPDATE_DATA_MENU
}

UPDATE_ALL_BIKES_AVAILABLE_EXCEPT_BMX(){
	AVAILABLE_BIKES=$($PSQL "UPDATE bikes SET available = TRUE WHERE type != 'BMX';")
	UPDATE_DATA_MENU
}

UPDATE_ALL_BIKES_UNAVAILABLE(){
	AVAILABLE_BIKES=$($PSQL "UPDATE bikes SET AVAILABLE = false;")
	UPDATE_DATA_MENU
}

EXIT(){
   echo -e "\nClosing Program.\n"
}

MAIN_MENU
