DROP TABLE IF EXISTS "master";
DROP TABLE IF EXISTS "2022_09";
DROP TABLE IF EXISTS "contracts_2022_09";

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
ALTER TABLE "2022_09" ADD COLUMN "contractandplanid" VARCHAR;
UPDATE "2022_09" SET "contractandplanid" = contractid || '' || planid;

CREATE TABLE "contracts_2022_09" (
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

COPY "contracts_2022_09"
FROM 'J:\medicare\csv_big\CPSC_Contract_Info_2022_09.csv'
DELIMITER ','
CSV HEADER;

UPDATE "contracts_2022_09" SET planid = replace (planid, '0','');

ALTER TABLE "contracts_2022_09" ADD COLUMN "contractandplanid" text ;
UPDATE "contracts_2022_09" SET "contractandplanid" = contractid || '' || planid;

SELECT * FROM "2022_09", "contracts_2022_09"
WHERE "2022_09".contractid = "contracts_2022_09".contractid
ORDER BY enrolled DESC;


CREATE TABLE "master" AS TABLE "2022_09" WITH NO DATA;
INSERT INTO "master" (SELECT * FROM "2022_09");

DROP TABLE IF EXISTS "2022_09";
DROP TABLE IF EXISTS "contracts_2022_09";