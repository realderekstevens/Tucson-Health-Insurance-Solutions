DROP TABLE IF EXISTS "enrollments";

CREATE TABLE "enrollments" (
	ContractID VARCHAR(10),
	PlanID INTEGER,
	SSA INTEGER,
	FIPS INTEGER,
	State VARCHAR(2),
	County VARCHAR(100),
	Enrollment INTEGER );

COPY "enrollments" (ContractID, PlanID, SSA, FIPS, State, County, Enrollment)
FROM 'J:\medicare\CPSC_Enrollment_Info_2022_08.csv'
DELIMITER ','
CSV HEADER;

ALTER TABLE "enrollments" DROP COLUMN ssa;
ALTER TABLE "enrollments" DROP COLUMN fips;
ALTER TABLE "enrollments" ADD COLUMN "date" DATE DEFAULT '2022-08-15' ;
ALTER TABLE "enrollments" ADD COLUMN "id" text;
UPDATE "enrollments" SET "id" = contractid || '' || planid;