DROP TABLE IF EXISTS "Contracts";

CREATE TABLE "Contracts" (
	ContractID TEXT,
	PlanID TEXT,
	OrganizationType VARCHAR(100),
	PlanType VARCHAR(100),
	OffersPartD BOOL,
	SNPPlan BOOL,
	EGHP BOOL,
	OrganizationName TEXT,
	OrganizationMarketingName TEXT,
	PlanName TEXT,
	ParentOrganization TEXT,
	ContractEffectiveDate TEXT );

COPY "Contracts"
FROM 'J:\medicare\CPSC_Contract_Info_2022_09.csv'
DELIMITER ','
CSV HEADER;

ALTER TABLE "Contracts" ADD COLUMN "ID" text ;

UPDATE "Contracts" SET "ID" = ContractID || '' || PlanID;