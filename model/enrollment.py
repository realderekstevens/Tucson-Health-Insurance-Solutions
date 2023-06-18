from typing import List, Optional
from pydantic import condecimal
from database import ENGINE
from sqlmodel import Field, Relationship, Session, SQLModel, create_engine, select

class Enrollment_2023_06(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2023_05(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2023_04(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2023_03(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2023_02(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2023_01(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2022_12(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2022_11(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2022_10(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2022_09(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2022_08(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2022_07(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2022_06(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2022_05(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2022_04(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2022_03(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2022_02(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2022_01(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int






class Enrollment_2021_12(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2021_11(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2021_10(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2021_09(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2021_08(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2021_07(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2021_06(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2021_05(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2021_04(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2021_03(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2021_02(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int

class Enrollment_2021_01(SQLModel, table=True):
	'''Enrollment Identifer'''
	id: Optional[int] = Field(default=None, primary_key=True)
	ContractID: str
	PlanID: str
	SSAStateCountyCode: str
	FIPSStateCountyCode: str
	State: str
	County: str
	Enrollment: int