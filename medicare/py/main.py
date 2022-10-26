from typing import Optional
from sqlmodel import Field, Session, SQLModel, create_engine, select
import sqlite3

class Enrollments(SQLModel, table=True):
    id: Optional[int] = Field(default=None, primary_key=True)
    ContractNumber: str
    PlanID: str
    State: str
    County: str
    Enrollment: int

# class Plans(SQLModel, table=True):
    # id: Optional[int] = Field(default=None, primary_key=True)
    # ContractID: str
    # PlanID: str
    # OrganizationType: str
    # PlanType: str
    # OffersPartD: bool
    # SNPPlan: bool
    # EGHP: bool
    # OrganizationName: str
    # OrganizationmarketingName: str
    # PlanName: str
    # ParentOrganization: str
    # ContractEffectiveDate: str

sqlite_file_name = "medicare.db"
sqlite_url = f"sqlite:///{sqlite_file_name}"

engine = create_engine(sqlite_url, echo=True)

def select_enrollments():
    with Session(engine) as session:
        statement = select(Enrollments)
        results = session.exec(statement)
        for i in results:
            print(i)

def create_db_and_tables():
    SQLModel.metadata.create_all(engine)

def main():
    create_db_and_tables()
    select_enrollments()

if __name__ == "__main__":
    main()