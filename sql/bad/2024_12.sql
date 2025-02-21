DROP TABLE IF EXISTS "CPSC_Contract_Info_2024_12";
DROP TABLE IF EXISTS "CPSC_Enrollment_Info_2024_12";
DROP TABLE IF EXISTS "2024_12";

CREATE TABLE "CPSC_Contract_Info_2024_12" (
	ContractID VARCHAR(10),
	PlanID INTEGER,
	OrganizationType VARCHAR(2),
	PlanType VARCHAR(100),
	OffersPartD BOOL,
	SNPPlan BOOL,
	EGHP BOOL,
	OrganizationName VARCHAR(100),
	OrganizationMarketingName VARCHAR(100),
	PlanName VARCHAR(100),
	ParentOrganization VARCHAR(100),
	ContractEffectiveDate VARCHAR(100));

CREATE TABLE "CPSC_Enrollment_Info_2024_12" (
	ContractNumber VARCHAR(10),
	PlanID INTEGER,
	SSAStateCountyCode VARCHAR(100),
	FIPSStateCountyCode VARCHAR(100),
	State VARCHAR(2),
	County VARCHAR(100),
	Enrollment INTEGER );

CREATE TABLE "2024_12" (
	ID VARCHAR(100),
	ContractID VARCHAR(10),
	PlanID INTEGER,
	OrganizationType VARCHAR(2),
	PlanType VARCHAR(100),
	OffersPartD BOOL,
	SNPPlan BOOL,
	EGHP BOOL,
	OrganizationName VARCHAR(100),
	OrganizationMarketingName VARCHAR(100),
	PlanName VARCHAR(100),
	ParentOrganization VARCHAR(100),
	ContractEffectiveDate VARCHAR(100);
	State VARCHAR(2),
	County VARCHAR(100),
	Enrollment INTEGER );

COPY "CPSC_Contract_Info_2024_12"(ContractID, PlanID, State, County, Enrollment)
FROM 'J:\medicare\CPSC_Contract_Info_2024_12.csv'
DELIMITER ','
CSV HEADER;

COPY "CPSC_Enrollment_Info_2024_12"(ContractNumber, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment)
FROM 'J:\medicare\CPSC_Enrollment_Info_2024_12.csv'
DELIMITER ','
CSV HEADER;

ALTER TABLE "enrollments" DROP COLUMN ssa;
ALTER TABLE "enrollments" DROP COLUMN fips;
ALTER TABLE "enrollments" ADD COLUMN "Date" DATE DEFAULT '2024-12-01' ;
ALTER TABLE "enrollments" ADD COLUMN "ID" text;
UPDATE "enrollments" SET "ID" = ContractID || '' || PlanID;
