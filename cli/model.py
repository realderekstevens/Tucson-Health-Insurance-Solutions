import datetime

class Enrollment_Info:
	id: Optional[int] = Field(default=None, primary_key=True)
	contractid: str
	planid: int
	ssastatecountycode: int
	fipsstatecountycode: int
	state: str
	county: str
	enrolled: int

class Contract_Info:
	id: Optional[int] = Field(default=None, primary_key=True)
	contractid: str
	planid: int
	organizationtype: str
	plantype: str
	offerspartd: bool
	snpplan: bool
	eghp: bool
	organizationname: str
	organizationmarketingname: str
	planname: str
	parentorganization: str
	contracteffectivedate: str

class Task:
	def __init__(self, 
	name, 
	category, 
	date_added=None, 
	date_completed=None,
	status=None, 
	position=None):
		self.name = name
		self.category = category
		self.date_added = date_added if date_added is not None else datetime.datetime.now().isoformat()
		self.date_completed = date_completed if date_completed is not None else None
		self.status = status if status is not None else 1  # 1 = open, 2 = completed
		self.position = position if position is not None else None

	def __repr__(self) -> str:
		return f"({self.task}, {self.category}, {self.date_added}, {self.date_completed}, {self.status}, {self.position})"