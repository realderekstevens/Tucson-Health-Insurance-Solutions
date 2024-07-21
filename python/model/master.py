from typing import List, Optional
from pydantic import condecimal
from database import ENGINE
from sqlmodel import Field, Relationship, Session, SQLModel, create_engine, select

class Master(SQLModel, table=True):
	'''Master database for all data'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	State: str
	County: str
	Enrollment: int
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