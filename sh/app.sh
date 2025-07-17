#!/usr/bin/env bash

set -e # Exit on any error

# Configuration
DB_NAME="medicare"
DB_USER="postgres"
PSQL="psql -X --username=$DB_USER --dbname=$DB_NAME --tuples-only -c"
PSQL_DEFAULT="psql -X --username=$DB_USER --dbname=postgres --tuples-only -c"
BASE_DIR="/home/dude/github/MedicareAPI"
ZIP_DIR="${BASE_DIR}/zip"
CSV_DIR="${BASE_DIR}/csv"
ZIP_FILE="monthly-enrollment-cpsc-2025-06.zip"
CONTRACT_CSV="CPSC_Contract_Info_2025_06.csv"
ENROLLMENT_CSV="CPSC_Enrollment_Info_2025_06.csv"
GUM_STYLE=(
  --border thick
  --margin "0.5"
  --padding "1 2"
  --border-foreground "#04B575"
)

# Reusable styled header function
render_header() {
  gum style "${GUM_STYLE[@]}" "$@"
}

# Main Menu
main_menu() {
  render_header "Welcome to" "HealthcareCLI"
  local options=("Dev Tools" "Importer" "Inserter" "Query" "Database" "Git" "PostgREST" "Arch Linux" "Exit")
  local choice
  choice=$(gum choose --header "Main Menu:" "${options[@]}")
  case "$choice" in
    "Dev Tools") dev_tools_menu ;;
    "Importer") importer_menu ;;
    "Inserter") insert_data_menu ;;
    "Query") query_menu ;;
    "Database") database_management_menu ;;
    "Git") github_management_menu ;;
    "PostgREST") postgrest_management_menu ;;
    "Arch Linux") arch_linux_management_menu ;;
    "Exit") exit_program ;;
    *) main_menu ;;
  esac
}

# Dev Tools Menu
dev_tools_menu() {
  render_header "Dev Tools Menu"
  local options=(
    "Return to Main Menu"
    "Full Process 06.2025"
    "Drop Database $DB_NAME"
    "Create Table Master"
    "Create Table Contracts"
    "Create Table Enrollments"
    "Upload $CONTRACT_CSV"
    "Upload $ENROLLMENT_CSV"
    "Cross Merge into Master"
  )
  local choice
  choice=$(gum choose --header "Importer Menu:" "${options[@]}")
  case "$choice" in
    "Return to Main Menu") main_menu ;;
    "Full Process 06.2025") do_the_thing ;;
    "Drop Database $DB_NAME") delete_database ;;
    "Create Table Master") create_table_master ;;
    "Create Table Contracts") create_table_contracts ;;
    "Create Table Enrollments") create_table_enrollments ;;
    "Upload $CONTRACT_CSV") import_contracts ;;
    "Upload $ENROLLMENT_CSV") import_enrollments ;;
    "Cross Merge into Master") merge_tables ;;
    *) dev_tools_menu ;;
  esac
}

# Importer Menu
importer_menu() {
  render_header "Data Import Menu"
  local options=(
    "Return to Main Menu"
    "Run Full Import Process"
    "Drop Database $DB_NAME"
    "Drop Table Master"
    "Drop Table Contracts"
    "Drop Table Enrollments"
    "Create Table Master"
    "Create Table Contracts"
    "Create Table Enrollments"
    "Download $ZIP_FILE"
    "Upload $CONTRACT_CSV"
    "Upload $ENROLLMENT_CSV"
    "Cross Merge into Master"
    "Delete $CONTRACT_CSV"
    "Delete $ENROLLMENT_CSV"
    "Delete $ZIP_FILE"
  )
  local choice
  choice=$(gum choose --header "Importer Menu:" "${options[@]}")
  case "$choice" in
    "Return to Main Menu") main_menu ;;
    "Fast Full System Check") do_the_thing ;;
    "Drop Database $DB_NAME") delete_database ;;
    "Drop Table Master") delete_table_master ;;
    "Drop Table Contracts") delete_table_contracts ;;
    "Drop Table Enrollments") delete_table_enrollments ;;
    "Create Table Master") create_table_master ;;
    "Create Table Contracts") create_table_contracts ;;
    "Create Table Enrollments") create_table_enrollments ;;
    "Download $ZIP_FILE") download_zip ;;
    "Upload $CONTRACT_CSV") import_contracts ;;
    "Upload $ENROLLMENT_CSV") import_enrollments ;;
    "Cross Merge into Master") merge_tables ;;
    "Delete $CONTRACT_CSV") delete_csv "$CONTRACT_CSV" ;;
    "Delete $ENROLLMENT_CSV") delete_csv "$ENROLLMENT_CSV" ;;
    "Delete $ZIP_FILE") delete_zip ;;
    *) importer_menu ;;
  esac
}

# Database Management Menu
database_management_menu() {
  render_header "Database Management Menu"
  local options=("Return to Main Menu" "List Schemas" "Create" "Delete" "Insert" "Select" "Update")
  local choice
  choice=$(gum choose --header "Database Management Menu:" "${options[@]}")
  case "$choice" in
    "Return to Main Menu") main_menu ;;
    "List Schemas") list_schema_menu ;;
    "Create") create_database_and_tables_menu ;;
    "Delete") delete_database_management_menu ;;
    "Insert") insert_data_menu ;;
    "Select") select_data_menu ;;
    "Update") update_data_menu ;;
    *) database_management_menu ;;
  esac
}

# Git Management Menu
github_management_menu() {
  render_header "Git Management Menu"
  local options=("Return to Main Menu" "Add app.sh" "Commit" "Push")
  local choice
  choice=$(gum choose --header "Git Management Menu:" "${options[@]}")
  case "$choice" in
    "Return to Main Menu") main_menu ;;
    "Add app.sh") github_add ;;
    "Commit") github_commit ;;
    "Push") github_push ;;
    *) github_management_menu ;;
  esac
}

# PostgREST Management Menu
postgrest_management_menu() {
  render_header "PostgREST Management Menu"
  local options=(
    "Return to Main Menu"
    "Create Schema 'api'"
    "Create Table 'api.todos'"
    "Create Role 'web_anon'"
    "Create Role 'authenticator'"
    "Create 'tutorial.conf'"
    "Run PostgREST Tutorial"
    "Create Role 'todo_user'"
  )
  local choice
  choice=$(gum choose --header "PostgREST Management Menu:" "${options[@]}")
  case "$choice" in
    "Return to Main Menu") main_menu ;;
    "Create Schema 'api'") postgrest_create_schema_api ;;
    "Create Table 'api.todos'") postgrest_create_table_api_todos ;;
    "Create Role 'web_anon'") postgrest_create_role_web_anon ;;
    "Create Role 'authenticator'") postgrest_create_role_authenticator ;;
    "Create 'tutorial.conf'") postgrest_create_tutorial_conf ;;
    "Run PostgREST Tutorial") postgrest_start_tutorial_server ;;
    "Create Role 'todo_user'") postgrest_create_role_todo_user ;;
    *) postgrest_management_menu ;;
  esac
}

# Arch Linux Management Menu
arch_linux_management_menu() {
  render_header "Arch Linux Management Menu"
  local options=("Return to Main Menu" "System-Wide Update")
  local choice
  choice=$(gum choose --header "Arch Linux Management Menu:" "${options[@]}")
  case "$choice" in
    "Return to Main Menu") main_menu ;;
    "System-Wide Update") arch_system_update ;;
    *) arch_linux_management_menu ;;
  esac
}

# Schema Management Menu
list_schema_menu() {
  render_header "Schema Management Menu"
  local options=(
    "Return to Database Management Menu"
    "List Databases"
    "List Tables"
    "List Table contracts"
    "List Table enrollments"
  )
  local choice
  choice=$(gum choose --header "Schema Management Menu:" "${options[@]}")
  case "$choice" in
    "Return to Database Management Menu") database_management_menu ;;
    "List Databases") list_databases ;;
    "List Tables") list_tables ;;
    "List Table contracts") list_table_contracts ;;
    "List Table enrollments") list_table_enrollments ;;
    *) list_schema_menu ;;
  esac
}

# Create Database and Tables Menu
create_database_and_tables_menu() {
  render_header "Create Database & Tables Menu"
  local options=(
    "Return to Database Management Menu"
    "Create Database $DB_NAME"
    "Create Table contracts"
    "Create Table enrollments"
    "Create Table master"
  )
  local choice
  choice=$(gum choose --header "Create Database & Tables Menu:" "${options[@]}")
  case "$choice" in
    "Return to Database Management Menu") database_management_menu ;;
    "Create Database $DB_NAME") create_database ;;
    "Create Table contracts") create_table_contracts ;;
    "Create Table enrollments") create_table_enrollments ;;
    "Create Table master") create_table_master ;;
    *) create_database_and_tables_menu ;;
  esac
}

# Delete Database and Tables Menu
delete_database_management_menu() {
  render_header "Delete Database & Tables Menu"
  local options=(
    "Return to Database Management Menu"
    "Delete Database $DB_NAME"
    "Delete Table contracts"
    "Delete Table enrollments"
    "Delete Table master"
  )
  local choice
  choice=$(gum choose --header "Delete Database & Tables Menu:" "${options[@]}")
  case "$choice" in
    "Return to Database Management Menu") database_management_menu ;;
    "Delete Database $DB_NAME") delete_database ;;
    "Delete Table contracts") delete_table_contracts ;;
    "Delete Table enrollments") delete_table_enrollments ;;
    "Delete Table master") delete_table_master ;;
    *) delete_database_management_menu ;;
  esac
}

# Select Data Menu (Placeholder for future expansion)
select_data_menu() {
  render_header "Select Data Menu"
  local options=("Return to Database Management Menu" "Select All from contracts" "Select All from enrollments")
  local choice
  choice=$(gum choose --header "Select Data Menu:" "${options[@]}")
  case "$choice" in
    "Return to Database Management Menu") database_management_menu ;;
    "Select All from contracts") select_all_contracts ;;
    "Select All from enrollments") select_all_enrollments ;;
    *) select_data_menu ;;
  esac
}

# Update Data Menu (Placeholder for future expansion)
update_data_menu() {
  render_header "Update Data Menu"
  local options=("Return to Database Management Menu" "Update contracts" "Update enrollments")
  local choice
  choice=$(gum choose --header "Update Data Menu:" "${options[@]}")
  case "$choice" in
    "Return to Database Management Menu") database_management_menu ;;
    "Update contracts") update_contracts ;;
    "Update enrollments") update_enrollments ;;
    *) update_data_menu ;;
  esac
}

# Database Operations
create_database() {
  if $PSQL_DEFAULT "CREATE DATABASE $DB_NAME;"; then
    render_header "Created Database $DB_NAME"
  else
    render_header "Error: Failed to create database $DB_NAME"
  fi
  create_database_and_tables_menu
}

create_table_contracts() {
  local query="CREATE TABLE contracts (
    postgres_id SERIAL PRIMARY KEY,
    contract_id VARCHAR(10),
    plan_id VARCHAR(10),
    organization_type VARCHAR,
    plan_type VARCHAR,
    offers_part_d BOOLEAN,
    snp_plan BOOLEAN,
    eghp BOOLEAN,
    organization_name VARCHAR,
    organization_marketing_name VARCHAR,
    plan_name VARCHAR,
    parent_organization VARCHAR,
    contract_effective_date VARCHAR
  );"
  if $PSQL "$query"; then
    render_header "Created Table contracts"
  else
    render_header "Error: Failed to create table contracts"
  fi
  create_database_and_tables_menu
}

create_table_enrollments() {
  local query="CREATE TABLE enrollments (
    postgres_id SERIAL PRIMARY KEY,
    contract_id VARCHAR(10),
    plan_id VARCHAR(10),
    ssa_state_county_code VARCHAR(10),
    fips_state_county_code VARCHAR(10),
    state VARCHAR(2),
    county VARCHAR(50),
    enrollment VARCHAR(100)
  );"
  if $PSQL "$query"; then
    render_header "Created Table enrollments"
  else
    render_header "Error: Failed to create table enrollments"
  fi
  create_database_and_tables_menu
}

create_table_master() {
  local query="CREATE TABLE master (
    postgres_id SERIAL PRIMARY KEY,
    contract_id VARCHAR(10),
    plan_id VARCHAR(10),
    ssa_state_county_code VARCHAR(10),
    fips_state_county_code VARCHAR(10),
    state VARCHAR(2),
    county VARCHAR(50),
    enrollment VARCHAR(100),
    organization_type VARCHAR,
    plan_type VARCHAR,
    offers_part_d BOOLEAN,
    snp_plan BOOLEAN,
    eghp BOOLEAN,
    organization_name VARCHAR,
    organization_marketing_name VARCHAR,
    plan_name VARCHAR,
    parent_organization VARCHAR,
    contract_effective_date VARCHAR,
    PRIMARY KEY (contract_id, plan_id)
  );"
  if $PSQL "$query"; then
    render_header "Created Table master"
  else
    render_header "Error: Failed to create table master"
  fi
  create_database_and_tables_menu
}

delete_database() {
  if $PSQL_DEFAULT "DROP DATABASE IF EXISTS $DB_NAME;"; then
    render_header "Dropped Database $DB_NAME"
  else
    render_header "Error: Failed to drop database $DB_NAME"
  fi
  delete_database_management_menu
}

delete_table_master() {
  if $PSQL "DROP TABLE IF EXISTS master;"; then
    render_header "Dropped Table master"
  else
    render_header "Error: Failed to drop table master"
  fi
  delete_database_management_menu
}

delete_table_contracts() {
  if $PSQL "DROP TABLE IF EXISTS contracts;"; then
    render_header "Dropped Table contracts"
  else
    render_header "Error: Failed to drop table contracts"
  fi
  delete_database_management_menu
}

delete_table_enrollments() {
  if $PSQL "DROP TABLE IF EXISTS enrollments;"; then
    render_header "Dropped Table enrollments"
  else
    render_header "Error: Failed to drop table enrollments"
  fi
  delete_database_management_menu
}

# Import Operations
import_enrollments() {
  local csv_path="${CSV_DIR}/${ENROLLMENT_CSV}"
  if [[ ! -f "$csv_path" ]]; then
    render_header "Error: $ENROLLMENT_CSV not found in $CSV_DIR"
    insert_data_menu
    return
  fi
  local query="\COPY enrollments(contract_id, plan_id, ssa_state_county_code, fips_state_county_code, state, county, enrollment) FROM '$csv_path' DELIMITER ',' CSV HEADER;"
  if $PSQL "$query"; then
    render_header "Imported $ENROLLMENT_CSV into enrollments"
  else
    render_header "Error: Failed to import $ENROLLMENT_CSV"
  fi
  insert_data_menu
}

import_contracts() {
  local csv_path="${CSV_DIR}/${CONTRACT_CSV}"
  if [[ ! -f "$csv_path" ]]; then
    render_header "Error: $CONTRACT_CSV not found in $CSV_DIR"
    insert_data_menu
    return
  fi
  local query="\COPY contracts(contract_id, plan_id, organization_type, plan_type, offers_part_d, snp_plan, eghp, organization_name, organization_marketing_name, plan_name, parent_organization, contract_effective_date) FROM '$csv_path' DELIMITER ',' CSV HEADER;"
  if $PSQL "$query"; then
    render_header "Imported $CONTRACT_CSV into contracts"
  else
    render_header "Error: Failed to import $CONTRACT_CSV"
  fi
  insert_data_menu
}

# File Operations
download_zip() {
  render_header "Download functionality not implemented"
  importer_menu
}

delete_csv() {
  local csv_file="${CSV_DIR}/$1"
  if [[ -f "$csv_file" ]]; then
    if rm "$csv_file"; then
      render_header "Deleted $1"
    else
      render_header "Error: Failed to delete $1"
    fi
  else
    render_header "Error: $1 not found"
  fi
  importer_menu
}

delete_zip() {
  local zip_path="${ZIP_DIR}/${ZIP_FILE}"
  if [[ -f "$zip_path" ]]; then
    if rm "$zip_path"; then
      render_header "Deleted $ZIP_FILE"
    else
      render_header "Error: Failed to delete $ZIP_FILE"
    fi
  else
    render_header "Error: $ZIP_FILE not found"
  fi
  importer_menu
}

unzip_cpsc_enrollment() {
  local zip_path="${ZIP_DIR}/${ZIP_FILE}"
  if [[ ! -f "$zip_path" ]]; then
    render_header "Error: $ZIP_FILE not found in $ZIP_DIR"
    importer_menu
    return
  fi
  mkdir -p "$CSV_DIR"
  if gum spin --spinner dot --title "Unzipping $ZIP_FILE..." -- unzip -o "$zip_path" -d "$CSV_DIR"; then
    render_header "Unzipped $ZIP_FILE to $CSV_DIR"
  else
    render_header "Error: Failed to unzip $ZIP_FILE"
  fi
  importer_menu
}

# Merge Tables
merge_tables() {
  local query="INSERT INTO master (
    contract_id, plan_id, organization_type, plan_type, offers_part_d, snp_plan, eghp,
    organization_name, organization_marketing_name, plan_name, parent_organization,
    contract_effective_date, ssa_state_county_code, fips_state_county_code, state, county, enrollment
  ) SELECT
    c.contract_id, c.plan_id, c.organization_type, c.plan_type, c.offers_part_d, c.snp_plan, c.eghp,
    c.organization_name, c.organization_marketing_name, c.plan_name, c.parent_organization,
    c.contract_effective_date, e.ssa_state_county_code, e.fips_state_county_code, e.state, e.county, e.enrollment
  FROM contracts c
  INNER JOIN enrollments e ON c.contract_id = e.contract_id AND c.plan_id = e.plan_id;"
  if $PSQL "$query"; then
    render_header "Merged contracts and enrollments into master"
  else
    render_header "Error: Failed to merge tables"
  fi
  importer_menu
}

# Full Import Process
do_the_thing() {
  delete_database
  create_database
  create_table_contracts
  create_table_enrollments
  create_table_master
  unzip_cpsc_enrollment
  import_contracts
  import_enrollments
  merge_tables
}

# Schema and Table Listing
list_databases() {
  $PSQL_DEFAULT "\l" | gum table
  list_schema_menu
}

list_tables() {
  $PSQL "\dt+" | gum table
  list_schema_menu
}

list_table_contracts() {
  $PSQL "\d contracts" | gum table
  list_schema_menu
}

list_table_enrollments() {
  $PSQL "\d enrollments" | gum table
  list_schema_menu
}

# Select Data (Placeholder Implementations)
select_all_contracts() {
  $PSQL "SELECT * FROM contracts LIMIT 10;" | gum table
  select_data_menu
}

select_all_enrollments() {
  $PSQL "SELECT * FROM enrollments LIMIT 10;" | gum table
  select_data_menu
}

# Update Data (Placeholder Implementations)
update_contracts() {
  render_header "Update contracts functionality not implemented"
  update_data_menu
}

update_enrollments() {
  render_header "Update enrollments functionality not implemented"
  update_data_menu
}

# Git Operations
github_add() {
  if git add app.sh; then
    render_header "Added app.sh to git staging"
  else
    render_header "Error: Failed to add app.sh"
  fi
  github_management_menu
}

github_commit() {
  local message
  message=$(gum input --placeholder "Enter commit message" --value "Committed from HealthcareCLI")
  if git commit -m "$message"; then
    render_header "Committed changes"
  else
    render_header "Error: Failed to commit"
  fi
  github_management_menu
}

github_push() {
  if git push -u origin HEAD; then
    render_header "Pushed to remote repository"
  else
    render_header "Error: Failed to push"
  fi
  github_management_menu
}

# PostgREST Operations
postgrest_create_schema_api() {
  if $PSQL "CREATE SCHEMA api;"; then
    render_header "Created Schema api"
  else
    render_header "Error: Failed to create schema api"
  fi
  postgrest_management_menu
}

postgrest_create_table_api_todos() {
  local query="CREATE TABLE api.todos (
    id INT PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    done BOOLEAN NOT NULL DEFAULT FALSE,
    task TEXT NOT NULL,
    due TIMESTAMPTZ
  ); INSERT INTO api.todos (task) VALUES
    ('finish tutorial 0'),
    ('pat self on back');"
  if $PSQL "$query"; then
    render_header "Created table api.todos"
  else
    render_header "Error: Failed to create table api.todos"
  fi
  postgrest_management_menu
}

postgrest_create_role_web_anon() {
  local query="CREATE ROLE web_anon NOLOGIN;
    GRANT USAGE ON SCHEMA api TO web_anon;
    GRANT SELECT ON api.todos TO web_anon;"
  if $PSQL "$query"; then
    render_header "Created role web_anon"
  else
    render_header "Error: Failed to create role web_anon"
  fi
  postgrest_management_menu
}

postgrest_create_role_authenticator() {
  local query="CREATE ROLE authenticator NOINHERIT LOGIN PASSWORD 'mysecretpassword';
    GRANT web_anon TO authenticator;"
  if $PSQL "$query"; then
    render_header "Created role authenticator"
  else
    render_header "Error: Failed to create role authenticator"
  fi
  postgrest_management_menu
}

postgrest_create_tutorial_conf() {
  local conf_file="tutorial.conf"
  cat << EOF > "$conf_file"
db-uri = 'postgres://authenticator:mysecretpassword@localhost:5432/postgres'
db-schemas = 'api'
db-anon-role = 'web_anon'
server-port = 80
EOF
  if [[ -f "$conf_file" ]]; then
    render_header "Created $conf_file"
  else
    render_header "Error: Failed to create $conf_file"
  fi
  postgrest_management_menu
}

postgrest_start_tutorial_server() {
  if postgrest tutorial.conf; then
    render_header "Started PostgREST server"
  else
    render_header "Error: Failed to start PostgREST server"
  fi
  postgrest_management_menu
}

postgrest_create_role_todo_user() {
  local query="CREATE ROLE todo_user NOLOGIN;
    GRANT todo_user TO authenticator;
    GRANT USAGE ON SCHEMA api TO todo_user;
    GRANT ALL ON api.todos TO todo_user;"
  if $PSQL "$query"; then
    render_header "Created role todo_user"
  else
    render_header "Error: Failed to create role todo_user"
  fi
  postgrest_management_menu
}

# Arch Linux Operations
arch_system_update() {
  if sudo pacman -Syu --noconfirm; then
    render_header "System update completed"
  else
    render_header "Error: Failed to update system"
  fi
  arch_linux_management_menu
}

# Exit Program
exit_program() {
  render_header "Closing HealthcareCLI"
  exit 0
}

# Start the application
main_menu
