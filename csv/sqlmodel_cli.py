from typing import Optional
from sqlmodel import Field, Session, SQLModel, create_engine, select, col

class enrollment(SQLModel, table=True):
    EnrollmentSerial: int = Field(default=None, primary_key = True)
    ContractNumber: str
    PlanID: int
    SSAStateCountyCode: int
    FIPSStateCountyCode: str
    State = str
    County = str
    Enrollment = int

class contract(SQLModel, table=True):
    ContractSerial: int = Field(default = None, primary_key = True)
    ContractID: str
    PlanID: int
    OrganizationType: str
    PlanType: str
    OffersPartD = bool
    SNPPlan = bool
    EGHP = bool
    OrganizationName = str
    OrganizationMarketingName = str
    PlanName = str
    ParentOrganization = str
    ContractEffectiveDate = str

sqlite_file_name = "db.db"
sqlite_url = f"sqlite:///{sqlite_file_name}"
engine = create_engine(sqlite_url, echo=True)

def select_contractid():
    with Session(engine) as session:
        statement = select(contract).where(contract.ContractID == 'H0028')
        results = session.exec(statement)
        for Contract in results:
            print(Contract)

def select_state():
    with Session(engine) as session:
        statement = select(2022_07).where(2022_07.State == 'AZ')
        results = session.exec(statement)
        for garbage in results:
            print(garbage)

def create_db_and_tables():
    SQLModel.metadata.create_all(engine)

def main():
    select_state()
    
if __name__ == "__main__":
    main()