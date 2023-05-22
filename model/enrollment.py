from typing import List, Optional
from pydantic import condecimal
from database import ENGINE
from sqlmodel import Field, Relationship, Session, SQLModel, create_engine, select

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