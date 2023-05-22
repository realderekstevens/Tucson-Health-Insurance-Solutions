from typing import List, Optional
from sqlmodel import Field, Session, SQLModel, create_engine, select

class Contract(SQLModel, table=True):
    '''Contract Identifer'''
    id: Optional[int] = Field(default=None, primary_key=True)
    ContractID: str
    PlanID: str
    OrganizationType: str
    PlanType: str
    OffersPartD: str
    SNPPlan: str
    EGHP: str
    OrganizationName: str
    OrganizationMarketingName: str
    PlanName: str
    ParentOrganization: str
    ContractEffectiveDate: str

class Enrollment(SQLModel, table=True):
    '''Enrollment Idenfifier'''
    id: Optional[int] = Field(default=None, primary_key=True)
    ContractID: str
    PlanID: str
    SSACode: str
    FIPSCode: str
    State: str
    County: str
    Enrollment: int
