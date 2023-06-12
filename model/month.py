from typing import List, Optional
from pydantic import condecimal
from database import ENGINE
from sqlmodel import Field, Relationship, Session, SQLModel, create_engine, select

class _2023_06(SQLModel, table=True):
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

class _2023_05(SQLModel, table=True):
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

class _2023_04(SQLModel, table=True):
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

class _2023_03(SQLModel, table=True):
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

class _2023_02(SQLModel, table=True):
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

class _2023_01(SQLModel, table=True):
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

class _2022_12(SQLModel, table=True):
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

class _2022_11(SQLModel, table=True):
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

class _2022_10(SQLModel, table=True):
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

class _2022_09(SQLModel, table=True):
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

class _2022_08(SQLModel, table=True):
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

class _2022_07(SQLModel, table=True):
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

class _2022_06(SQLModel, table=True):
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

class _2022_05(SQLModel, table=True):
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

class _2022_04(SQLModel, table=True):
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

class _2022_03(SQLModel, table=True):
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

class _2022_02(SQLModel, table=True):
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

class _2022_01(SQLModel, table=True):
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