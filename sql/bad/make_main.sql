DROP TABLE IF EXISTS "enrollments";

CREATE TABLE "enrollments" (
	ContractID text,
	PlanID text,
	SSA VARCHAR(20),
	FIPS VARCHAR(20),
	State VARCHAR(2),
	County VARCHAR(100),
	Enrollment TEXT );
	
ALTER TABLE "enrollments" ADD COLUMN "Date" DATE DEFAULT '2022-08-15' ;
COPY "enrollments" (ContractID, PlanID, SSA, FIPS, State, County, Enrollment)
FROM 'J:\medicare\CPSC_Enrollment_Info_2022_08.csv'
DELIMITER ','
CSV HEADER; 

ALTER TABLE "enrollments" ALTER "Date" SET DEFAULT '2022-07-15' ;
COPY "enrollments" (ContractID, PlanID, SSA, FIPS, State, County, Enrollment)
FROM 'J:\medicare\CPSC_Enrollment_Info_2022_07.csv'
DELIMITER ','
CSV HEADER; 

DELETE FROM "enrollments" WHERE Enrollment = '*';
ALTER TABLE "enrollments" ALTER COLUMN Enrollment TYPE INTEGER USING (Enrollment::integer);
ALTER TABLE "enrollments" ADD COLUMN "ID" text ;
UPDATE "enrollments" SET "ID" = ContractID || '' || PlanID;