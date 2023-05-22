from typing import List, Optional
from pydantic import condecimal
from database import ENGINE
from sqlmodel import Field, Relationship, Session, SQLModel, create_engine, select

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