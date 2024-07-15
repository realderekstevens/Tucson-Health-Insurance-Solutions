PRAGMA foreign_keys=off;

CREATE TABLE "2022_07"
( id VARCHAR,
  ContractID VARCHAR,
  PlanID VARCHAR,
  State VARCHAR,
  County VARCHAR,
  Enrollment INTEGER,
  OrganizationType VARCHAR,
  PlanType VARCHAR,
  OffersPartD BOOL,
  SNPPLAN BOOL,
  EGHP BOOL,
  OrganizationName VARCHAR,
  OrganizationMarketingName VARCHAR,
  PlanName VARCHAR,
  ParentOrganization VARCHAR,
  ContractEffectiveDate DATE );

INSERT INTO "2022_07" (id, ContractID, PlanID, State, County, Enrollment)
  SELECT id, ContractNumber, PlanID, State, County, Enrollment
  FROM CPSC_Enrollment_Info_2022_07;

COMMIT;

PRAGMA foreign_keys=on;