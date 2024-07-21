DROP TABLE IF EXISTS "enrollments";

CREATE TABLE "enrollments" (
	ContractID VARCHAR(10),
	PlanID INTEGER,
	State VARCHAR(2),
	County VARCHAR(100),
	Enrollment INTEGER );

COPY "enrollments"(ContractID, PlanID, State, County, Enrollment)
FROM 'J:\medicare\CPSC_Enrollment_Info_2022_08.csv'
DELIMITER ','
CSV HEADER;

ALTER TABLE "enrollments" DROP COLUMN ssa;
ALTER TABLE "enrollments" DROP COLUMN fips;
ALTER TABLE "enrollments" ADD COLUMN "Date" DATE DEFAULT '2022-08-15' ;
ALTER TABLE "enrollments" ADD COLUMN "ID" text;
UPDATE "enrollments" SET "ID" = ContractID || '' || PlanID;