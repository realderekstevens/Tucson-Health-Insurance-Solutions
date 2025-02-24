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
	ContractEffectiveDate DATE);

COPY "CPSC_Contract_Info_2024_12"(ContractID, PlanID, OrganizationType, PlanType, OffersPartD, SNPPlan, EGHP, OrganizationName, OrganizationMarketingName, PlanName, ParentOrganzation, ContractEffectiveDate)
FROM 'C:\medicare\csv\CPSC_Contract_Info_2024_12.csv'
DELIMITER ','
CSV HEADER;

ALTER TABLE "CPSC_Contract_Info_2024_12" 
ADD COLUMN "ID" text;
UPDATE "CPSC_Enrollment_Info_2024_12" SET "ID" = ContractID || '' || PlanID;


CREATE TABLE "CPSC_Enrollment_Info_2024_12" (
	ContractNumber VARCHAR(10),
	PlanID INTEGER,
	SSAStateCountyCode VARCHAR(100),
	FIPSStateCountyCode VARCHAR(100),
	State VARCHAR(2),
	County VARCHAR(100),
	Enrollment VARCHAR(100));

COPY "CPSC_Enrollment_Info_2024_12"(ContractNumber, PlanID, SSAStateCountyCode, FIPSStateCountyCode, State, County, Enrollment)
FROM 'C:\medicare\csv\CPSC_Enrollment_Info_2024_12.csv'
DELIMITER ','
CSV HEADER;

ALTER TABLE "CPSC_Enrollment_Info_2024_12" 
ADD COLUMN "ID" text;
UPDATE "CPSC_Enrollment_Info_2024_12" SET "ID" = ContractNumber || '' || PlanID;

CREATE TABLE "2024_12" (
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

ALTER TABLE "2024_12" ADD COLUMN "ID" text;
UPDATE "2024_12" SET "ID" = ContractID || '' || PlanID;

ALTER TABLE "2024_12" DROP COLUMN SSAStateCountyCode;
ALTER TABLE "2024_12" DROP COLUMN FIPSStateCountyCode;
ALTER TABLE "2024_12" ADD COLUMN "Date" DATE DEFAULT '2024-12-01';

