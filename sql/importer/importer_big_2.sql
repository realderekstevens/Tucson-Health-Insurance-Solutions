DROP TABLE IF EXISTS "contracts";
DROP TABLE IF EXISTS "master";

CREATE TABLE "2022_09" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2022_09" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2022_09.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2022_09" WHERE enrolled = '*';
ALTER TABLE "2022_09" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2022_09" DROP COLUMN ssa;
ALTER TABLE "2022_09" DROP COLUMN fips;
ALTER TABLE "2022_09" ADD COLUMN "date" DATE DEFAULT '2022-09-15' ;

CREATE TABLE "master" AS TABLE "2022_09" WITH NO DATA;
INSERT INTO "master" (SELECT * FROM "2022_09");

DROP TABLE IF EXISTS "2022_09";

CREATE TABLE "contracts" (
	contractid TEXT,
	planid TEXT,
	organizationtype VARCHAR(100),
	plantype VARCHAR(100),
	offerspartd BOOL,
	snpplan BOOL,
	eghp BOOL,
	organizationname TEXT,
	organizationmarketingname TEXT,
	planname TEXT,
	parentorganization TEXT,
	contracteffectivedate DATE );

COPY "contracts"
FROM 'J:\medicare\csv_big\CPSC_Contract_Info_2022_09.csv'
DELIMITER ','
CSV HEADER;

ALTER TABLE "contracts" ADD COLUMN "ID" text ;

UPDATE "contracts" SET "ID" = contractid || '' || planid; COMMIT;



CREATE TABLE "2022_08" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2022_08" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2022_08.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2022_08" WHERE enrolled = '*';
ALTER TABLE "2022_08" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2022_08" DROP COLUMN ssa;
ALTER TABLE "2022_08" DROP COLUMN fips;
ALTER TABLE "2022_08" ADD COLUMN "date" DATE DEFAULT '2022-08-15';
INSERT INTO "master" (SELECT * FROM "2022_08");
DROP TABLE IF EXISTS "2022_08"; COMMIT;



CREATE TABLE "2022_07" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2022_07" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2022_07.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2022_07" WHERE enrolled = '*';
ALTER TABLE "2022_07" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2022_07" DROP COLUMN ssa;
ALTER TABLE "2022_07" DROP COLUMN fips;
ALTER TABLE "2022_07" ADD COLUMN "date" DATE DEFAULT '2022-07-15';
INSERT INTO "master" (SELECT * FROM "2022_07");
DROP TABLE IF EXISTS "2022_07"; COMMIT;