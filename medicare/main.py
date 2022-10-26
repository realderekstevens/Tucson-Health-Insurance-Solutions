from typing import Optional
from datetime import datetime
from sqlmodel import Field, SQLModel, create_engine
import sqlite3

DB_FILE = 'medicare.db'
engine = create_engine(f"sqlite:///{DB_FILE}", echo=True)

# https://en.wikipedia.org/wiki/FIPS_county_code

class Enrollment(SQLModel, table=True):
    id: Optional[int] = Field(default=None, primary_key=True)
    contract_id: str
    plan_id: str
    social_security_administration_state_county_code: str
    federal_information_processing_standard_state_county_code: str
    state: str
    county: str
    currently_enrolled: int

class Contracts(SQLModel, table=True):
    id: Optional[int] = Field(default=None, primary_key=True)
    contract_id: str
    plan_id: str
    organization_type: str
    plan_type: str
    offers_part_d: bool
    special_needs_plan: bool
    employer_group_health_plan: bool
    organization_name: str
    organization_marketing_name: str
    plan_name: str
    parent_organization: str
    contract_effective_date: str


def create_tables():
    SQLModel.metadata.create_all(engine)

def main():
    create_tables()

if __name__ == "__main__":
    main()