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

ALTER TABLE "contracts_2022_09" ADD COLUMN "contractandplanid" text ;

UPDATE "contracts_2022_09" SET "contractandplanid" = contractid || '' || planid;





CREATE TABLE "master" AS TABLE "2022_09" WITH NO DATA;
INSERT INTO "master" (SELECT * FROM "2022_09");

DROP TABLE IF EXISTS "2022_09";


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
DROP TABLE IF EXISTS "2022_08";



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
DROP TABLE IF EXISTS "2022_07";



CREATE TABLE "2022_06" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2022_06" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2022_06.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2022_06" WHERE enrolled = '*';
ALTER TABLE "2022_06" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2022_06" DROP COLUMN ssa;
ALTER TABLE "2022_06" DROP COLUMN fips;
ALTER TABLE "2022_06" ADD COLUMN "date" DATE DEFAULT '2022-06-15';
INSERT INTO "master" (SELECT * FROM "2022_06");
DROP TABLE IF EXISTS "2022_06";



CREATE TABLE "2022_05" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2022_05" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2022_05.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2022_05" WHERE enrolled = '*';
ALTER TABLE "2022_05" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2022_05" DROP COLUMN ssa;
ALTER TABLE "2022_05" DROP COLUMN fips;
ALTER TABLE "2022_05" ADD COLUMN "date" DATE DEFAULT '2022-05-15';
INSERT INTO "master" (SELECT * FROM "2022_05");
DROP TABLE IF EXISTS "2022_05";



CREATE TABLE "2022_04" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2022_04" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2022_04.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2022_04" WHERE enrolled = '*';
ALTER TABLE "2022_04" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2022_04" DROP COLUMN ssa;
ALTER TABLE "2022_04" DROP COLUMN fips;
ALTER TABLE "2022_04" ADD COLUMN "date" DATE DEFAULT '2022-04-15';
INSERT INTO "master" (SELECT * FROM "2022_04");
DROP TABLE IF EXISTS "2022_04";



CREATE TABLE "2022_03" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2022_03" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2022_03.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2022_03" WHERE enrolled = '*';
ALTER TABLE "2022_03" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2022_03" DROP COLUMN ssa;
ALTER TABLE "2022_03" DROP COLUMN fips;
ALTER TABLE "2022_03" ADD COLUMN "date" DATE DEFAULT '2022-03-15';
INSERT INTO "master" (SELECT * FROM "2022_03");
DROP TABLE IF EXISTS "2022_03";



CREATE TABLE "2022_02" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2022_02" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2022_02.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2022_02" WHERE enrolled = '*';
ALTER TABLE "2022_02" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2022_02" DROP COLUMN ssa;
ALTER TABLE "2022_02" DROP COLUMN fips;
ALTER TABLE "2022_02" ADD COLUMN "date" DATE DEFAULT '2022-02-15';
INSERT INTO "master" (SELECT * FROM "2022_02");
DROP TABLE IF EXISTS "2022_02";



CREATE TABLE "2022_01" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2022_01" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2022_01.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2022_01" WHERE enrolled = '*';
ALTER TABLE "2022_01" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2022_01" DROP COLUMN ssa;
ALTER TABLE "2022_01" DROP COLUMN fips;
ALTER TABLE "2022_01" ADD COLUMN "date" DATE DEFAULT '2022-01-15';
INSERT INTO "master" (SELECT * FROM "2022_01");
DROP TABLE IF EXISTS "2022_01";



CREATE TABLE "2021_12" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2021_12" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2021_12.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2021_12" WHERE enrolled = '*';
ALTER TABLE "2021_12" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2021_12" DROP COLUMN ssa;
ALTER TABLE "2021_12" DROP COLUMN fips;
ALTER TABLE "2021_12" ADD COLUMN "date" DATE DEFAULT '2021-12-15';
INSERT INTO "master" (SELECT * FROM "2021_12");
DROP TABLE IF EXISTS "2021_12";



CREATE TABLE "2021_11" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2021_11" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2021_11.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2021_11" WHERE enrolled = '*';
ALTER TABLE "2021_11" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2021_11" DROP COLUMN ssa;
ALTER TABLE "2021_11" DROP COLUMN fips;
ALTER TABLE "2021_11" ADD COLUMN "date" DATE DEFAULT '2021-11-15';
INSERT INTO "master" (SELECT * FROM "2021_11");
DROP TABLE IF EXISTS "2021_11";



CREATE TABLE "2021_10" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2021_10" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2021_10.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2021_10" WHERE enrolled = '*';
ALTER TABLE "2021_10" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2021_10" DROP COLUMN ssa;
ALTER TABLE "2021_10" DROP COLUMN fips;
ALTER TABLE "2021_10" ADD COLUMN "date" DATE DEFAULT '2021-10-15';
INSERT INTO "master" (SELECT * FROM "2021_10");
DROP TABLE IF EXISTS "2021_10";


CREATE TABLE "2021_09" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2021_09" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2021_09.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2021_09" WHERE enrolled = '*';
ALTER TABLE "2021_09" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2021_09" DROP COLUMN ssa;
ALTER TABLE "2021_09" DROP COLUMN fips;
ALTER TABLE "2021_09" ADD COLUMN "date" DATE DEFAULT '2021-09-15';
INSERT INTO "master" (SELECT * FROM "2021_09");
DROP TABLE IF EXISTS "2021_09";


CREATE TABLE "2021_08" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2021_08" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2021_08.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2021_08" WHERE enrolled = '*';
ALTER TABLE "2021_08" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2021_08" DROP COLUMN ssa;
ALTER TABLE "2021_08" DROP COLUMN fips;
ALTER TABLE "2021_08" ADD COLUMN "date" DATE DEFAULT '2021-08-15';
INSERT INTO "master" (SELECT * FROM "2021_08");
DROP TABLE IF EXISTS "2021_08";



CREATE TABLE "2021_07" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2021_07" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2021_07.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2021_07" WHERE enrolled = '*';
ALTER TABLE "2021_07" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2021_07" DROP COLUMN ssa;
ALTER TABLE "2021_07" DROP COLUMN fips;
ALTER TABLE "2021_07" ADD COLUMN "date" DATE DEFAULT '2021-07-15';
INSERT INTO "master" (SELECT * FROM "2021_07");
DROP TABLE IF EXISTS "2021_07";



CREATE TABLE "2021_06" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2021_06" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2021_06.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2021_06" WHERE enrolled = '*';
ALTER TABLE "2021_06" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2021_06" DROP COLUMN ssa;
ALTER TABLE "2021_06" DROP COLUMN fips;
ALTER TABLE "2021_06" ADD COLUMN "date" DATE DEFAULT '2021-06-15';
INSERT INTO "master" (SELECT * FROM "2021_06");
DROP TABLE IF EXISTS "2021_06";



CREATE TABLE "2021_05" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2021_05" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2021_05.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2021_05" WHERE enrolled = '*';
ALTER TABLE "2021_05" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2021_05" DROP COLUMN ssa;
ALTER TABLE "2021_05" DROP COLUMN fips;
ALTER TABLE "2021_05" ADD COLUMN "date" DATE DEFAULT '2021-05-15';
INSERT INTO "master" (SELECT * FROM "2021_05");
DROP TABLE IF EXISTS "2021_05";



CREATE TABLE "2021_04" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2021_04" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2021_04.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2021_04" WHERE enrolled = '*';
ALTER TABLE "2021_04" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2021_04" DROP COLUMN ssa;
ALTER TABLE "2021_04" DROP COLUMN fips;
ALTER TABLE "2021_04" ADD COLUMN "date" DATE DEFAULT '2021-04-15';
INSERT INTO "master" (SELECT * FROM "2021_04");
DROP TABLE IF EXISTS "2021_04";



CREATE TABLE "2021_03" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2021_03" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2021_03.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2021_03" WHERE enrolled = '*';
ALTER TABLE "2021_03" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2021_03" DROP COLUMN ssa;
ALTER TABLE "2021_03" DROP COLUMN fips;
ALTER TABLE "2021_03" ADD COLUMN "date" DATE DEFAULT '2021-03-15';
INSERT INTO "master" (SELECT * FROM "2021_03");
DROP TABLE IF EXISTS "2021_03";



CREATE TABLE "2021_02" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2021_02" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2021_02.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2021_02" WHERE enrolled = '*';
ALTER TABLE "2021_02" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2021_02" DROP COLUMN ssa;
ALTER TABLE "2021_02" DROP COLUMN fips;
ALTER TABLE "2021_02" ADD COLUMN "date" DATE DEFAULT '2021-02-15';
INSERT INTO "master" (SELECT * FROM "2021_02");
DROP TABLE IF EXISTS "2021_02";



CREATE TABLE "2021_01" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2021_01" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2021_01.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2021_01" WHERE enrolled = '*';
ALTER TABLE "2021_01" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2021_01" DROP COLUMN ssa;
ALTER TABLE "2021_01" DROP COLUMN fips;
ALTER TABLE "2021_01" ADD COLUMN "date" DATE DEFAULT '2021-01-15';
INSERT INTO "master" (SELECT * FROM "2021_01");
DROP TABLE IF EXISTS "2021_01";



CREATE TABLE "2020_12" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2020_12" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2020_12.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2020_12" WHERE enrolled = '*';
ALTER TABLE "2020_12" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2020_12" DROP COLUMN ssa;
ALTER TABLE "2020_12" DROP COLUMN fips;
ALTER TABLE "2020_12" ADD COLUMN "date" DATE DEFAULT '2020-12-15';
INSERT INTO "master" (SELECT * FROM "2020_12");
DROP TABLE IF EXISTS "2020_12";



CREATE TABLE "2020_11" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2020_11" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2020_11.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2020_11" WHERE enrolled = '*';
ALTER TABLE "2020_11" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2020_11" DROP COLUMN ssa;
ALTER TABLE "2020_11" DROP COLUMN fips;
ALTER TABLE "2020_11" ADD COLUMN "date" DATE DEFAULT '2020-11-15';
INSERT INTO "master" (SELECT * FROM "2020_11");
DROP TABLE IF EXISTS "2020_11";



CREATE TABLE "2020_10" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2020_10" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2020_10.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2020_10" WHERE enrolled = '*';
ALTER TABLE "2020_10" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2020_10" DROP COLUMN ssa;
ALTER TABLE "2020_10" DROP COLUMN fips;
ALTER TABLE "2020_10" ADD COLUMN "date" DATE DEFAULT '2020-10-15';
INSERT INTO "master" (SELECT * FROM "2020_10");
DROP TABLE IF EXISTS "2020_10";


CREATE TABLE "2020_09" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2020_09" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2020_09.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2020_09" WHERE enrolled = '*';
ALTER TABLE "2020_09" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2020_09" DROP COLUMN ssa;
ALTER TABLE "2020_09" DROP COLUMN fips;
ALTER TABLE "2020_09" ADD COLUMN "date" DATE DEFAULT '2020-09-15';
INSERT INTO "master" (SELECT * FROM "2020_09");
DROP TABLE IF EXISTS "2020_09";


CREATE TABLE "2020_08" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2020_08" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2020_08.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2020_08" WHERE enrolled = '*';
ALTER TABLE "2020_08" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2020_08" DROP COLUMN ssa;
ALTER TABLE "2020_08" DROP COLUMN fips;
ALTER TABLE "2020_08" ADD COLUMN "date" DATE DEFAULT '2020-08-15';
INSERT INTO "master" (SELECT * FROM "2020_08");
DROP TABLE IF EXISTS "2020_08";



CREATE TABLE "2020_07" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2020_07" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2020_07.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2020_07" WHERE enrolled = '*';
ALTER TABLE "2020_07" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2020_07" DROP COLUMN ssa;
ALTER TABLE "2020_07" DROP COLUMN fips;
ALTER TABLE "2020_07" ADD COLUMN "date" DATE DEFAULT '2020-07-15';
INSERT INTO "master" (SELECT * FROM "2020_07");
DROP TABLE IF EXISTS "2020_07";



CREATE TABLE "2020_06" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2020_06" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2020_06.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2020_06" WHERE enrolled = '*';
ALTER TABLE "2020_06" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2020_06" DROP COLUMN ssa;
ALTER TABLE "2020_06" DROP COLUMN fips;
ALTER TABLE "2020_06" ADD COLUMN "date" DATE DEFAULT '2020-06-15';
INSERT INTO "master" (SELECT * FROM "2020_06");
DROP TABLE IF EXISTS "2020_06";



CREATE TABLE "2020_05" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2020_05" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2020_05.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2020_05" WHERE enrolled = '*';
ALTER TABLE "2020_05" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2020_05" DROP COLUMN ssa;
ALTER TABLE "2020_05" DROP COLUMN fips;
ALTER TABLE "2020_05" ADD COLUMN "date" DATE DEFAULT '2020-05-15';
INSERT INTO "master" (SELECT * FROM "2020_05");
DROP TABLE IF EXISTS "2020_05";



CREATE TABLE "2020_04" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2020_04" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2020_04.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2020_04" WHERE enrolled = '*';
ALTER TABLE "2020_04" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2020_04" DROP COLUMN ssa;
ALTER TABLE "2020_04" DROP COLUMN fips;
ALTER TABLE "2020_04" ADD COLUMN "date" DATE DEFAULT '2020-04-15';
INSERT INTO "master" (SELECT * FROM "2020_04");
DROP TABLE IF EXISTS "2020_04";



CREATE TABLE "2020_03" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2020_03" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2020_03.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2020_03" WHERE enrolled = '*';
ALTER TABLE "2020_03" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2020_03" DROP COLUMN ssa;
ALTER TABLE "2020_03" DROP COLUMN fips;
ALTER TABLE "2020_03" ADD COLUMN "date" DATE DEFAULT '2020-03-15';
INSERT INTO "master" (SELECT * FROM "2020_03");
DROP TABLE IF EXISTS "2020_03";



CREATE TABLE "2020_02" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2020_02" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2020_02.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2020_02" WHERE enrolled = '*';
ALTER TABLE "2020_02" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2020_02" DROP COLUMN ssa;
ALTER TABLE "2020_02" DROP COLUMN fips;
ALTER TABLE "2020_02" ADD COLUMN "date" DATE DEFAULT '2020-02-15';
INSERT INTO "master" (SELECT * FROM "2020_02");
DROP TABLE IF EXISTS "2020_02";



CREATE TABLE "2020_01" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2020_01" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2020_01.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2020_01" WHERE enrolled = '*';
ALTER TABLE "2020_01" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2020_01" DROP COLUMN ssa;
ALTER TABLE "2020_01" DROP COLUMN fips;
ALTER TABLE "2020_01" ADD COLUMN "date" DATE DEFAULT '2020-01-15';
INSERT INTO "master" (SELECT * FROM "2020_01");
DROP TABLE IF EXISTS "2020_01";



CREATE TABLE "2019_12" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2019_12" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2019_12.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2019_12" WHERE enrolled = '*';
ALTER TABLE "2019_12" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2019_12" DROP COLUMN ssa;
ALTER TABLE "2019_12" DROP COLUMN fips;
ALTER TABLE "2019_12" ADD COLUMN "date" DATE DEFAULT '2019-12-15';
INSERT INTO "master" (SELECT * FROM "2019_12");
DROP TABLE IF EXISTS "2019_12";



CREATE TABLE "2019_11" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2019_11" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2019_11.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2019_11" WHERE enrolled = '*';
ALTER TABLE "2019_11" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2019_11" DROP COLUMN ssa;
ALTER TABLE "2019_11" DROP COLUMN fips;
ALTER TABLE "2019_11" ADD COLUMN "date" DATE DEFAULT '2019-11-15';
INSERT INTO "master" (SELECT * FROM "2019_11");
DROP TABLE IF EXISTS "2019_11";



CREATE TABLE "2019_10" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2019_10" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2019_10.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2019_10" WHERE enrolled = '*';
ALTER TABLE "2019_10" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2019_10" DROP COLUMN ssa;
ALTER TABLE "2019_10" DROP COLUMN fips;
ALTER TABLE "2019_10" ADD COLUMN "date" DATE DEFAULT '2019-10-15';
INSERT INTO "master" (SELECT * FROM "2019_10");
DROP TABLE IF EXISTS "2019_10";


CREATE TABLE "2019_09" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2019_09" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2019_09.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2019_09" WHERE enrolled = '*';
ALTER TABLE "2019_09" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2019_09" DROP COLUMN ssa;
ALTER TABLE "2019_09" DROP COLUMN fips;
ALTER TABLE "2019_09" ADD COLUMN "date" DATE DEFAULT '2019-09-15';
INSERT INTO "master" (SELECT * FROM "2019_09");
DROP TABLE IF EXISTS "2019_09";


CREATE TABLE "2019_08" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2019_08" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2019_08.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2019_08" WHERE enrolled = '*';
ALTER TABLE "2019_08" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2019_08" DROP COLUMN ssa;
ALTER TABLE "2019_08" DROP COLUMN fips;
ALTER TABLE "2019_08" ADD COLUMN "date" DATE DEFAULT '2019-08-15';
INSERT INTO "master" (SELECT * FROM "2019_08");
DROP TABLE IF EXISTS "2019_08";



CREATE TABLE "2019_07" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2019_07" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2019_07.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2019_07" WHERE enrolled = '*';
ALTER TABLE "2019_07" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2019_07" DROP COLUMN ssa;
ALTER TABLE "2019_07" DROP COLUMN fips;
ALTER TABLE "2019_07" ADD COLUMN "date" DATE DEFAULT '2019-07-15';
INSERT INTO "master" (SELECT * FROM "2019_07");
DROP TABLE IF EXISTS "2019_07";



CREATE TABLE "2019_06" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2019_06" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2019_06.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2019_06" WHERE enrolled = '*';
ALTER TABLE "2019_06" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2019_06" DROP COLUMN ssa;
ALTER TABLE "2019_06" DROP COLUMN fips;
ALTER TABLE "2019_06" ADD COLUMN "date" DATE DEFAULT '2019-06-15';
INSERT INTO "master" (SELECT * FROM "2019_06");
DROP TABLE IF EXISTS "2019_06";



CREATE TABLE "2019_05" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2019_05" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2019_05.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2019_05" WHERE enrolled = '*';
ALTER TABLE "2019_05" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2019_05" DROP COLUMN ssa;
ALTER TABLE "2019_05" DROP COLUMN fips;
ALTER TABLE "2019_05" ADD COLUMN "date" DATE DEFAULT '2019-05-15';
INSERT INTO "master" (SELECT * FROM "2019_05");
DROP TABLE IF EXISTS "2019_05";



CREATE TABLE "2019_04" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2019_04" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2019_04.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2019_04" WHERE enrolled = '*';
ALTER TABLE "2019_04" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2019_04" DROP COLUMN ssa;
ALTER TABLE "2019_04" DROP COLUMN fips;
ALTER TABLE "2019_04" ADD COLUMN "date" DATE DEFAULT '2019-04-15';
INSERT INTO "master" (SELECT * FROM "2019_04");
DROP TABLE IF EXISTS "2019_04";



CREATE TABLE "2019_03" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2019_03" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2019_03.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2019_03" WHERE enrolled = '*';
ALTER TABLE "2019_03" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2019_03" DROP COLUMN ssa;
ALTER TABLE "2019_03" DROP COLUMN fips;
ALTER TABLE "2019_03" ADD COLUMN "date" DATE DEFAULT '2019-03-15';
INSERT INTO "master" (SELECT * FROM "2019_03");
DROP TABLE IF EXISTS "2019_03";



CREATE TABLE "2019_02" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2019_02" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2019_02.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2019_02" WHERE enrolled = '*';
ALTER TABLE "2019_02" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2019_02" DROP COLUMN ssa;
ALTER TABLE "2019_02" DROP COLUMN fips;
ALTER TABLE "2019_02" ADD COLUMN "date" DATE DEFAULT '2019-02-15';
INSERT INTO "master" (SELECT * FROM "2019_02");
DROP TABLE IF EXISTS "2019_02";



CREATE TABLE "2019_01" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2019_01" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2019_01.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2019_01" WHERE enrolled = '*';
ALTER TABLE "2019_01" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2019_01" DROP COLUMN ssa;
ALTER TABLE "2019_01" DROP COLUMN fips;
ALTER TABLE "2019_01" ADD COLUMN "date" DATE DEFAULT '2019-01-15';
INSERT INTO "master" (SELECT * FROM "2019_01");
DROP TABLE IF EXISTS "2019_01";



CREATE TABLE "2018_12" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2018_12" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2018_12.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2018_12" WHERE enrolled = '*';
ALTER TABLE "2018_12" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2018_12" DROP COLUMN ssa;
ALTER TABLE "2018_12" DROP COLUMN fips;
ALTER TABLE "2018_12" ADD COLUMN "date" DATE DEFAULT '2018-12-15';
INSERT INTO "master" (SELECT * FROM "2018_12");
DROP TABLE IF EXISTS "2018_12";



CREATE TABLE "2018_11" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2018_11" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2018_11.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2018_11" WHERE enrolled = '*';
ALTER TABLE "2018_11" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2018_11" DROP COLUMN ssa;
ALTER TABLE "2018_11" DROP COLUMN fips;
ALTER TABLE "2018_11" ADD COLUMN "date" DATE DEFAULT '2018-11-15';
INSERT INTO "master" (SELECT * FROM "2018_11");
DROP TABLE IF EXISTS "2018_11";



CREATE TABLE "2018_10" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2018_10" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2018_10.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2018_10" WHERE enrolled = '*';
ALTER TABLE "2018_10" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2018_10" DROP COLUMN ssa;
ALTER TABLE "2018_10" DROP COLUMN fips;
ALTER TABLE "2018_10" ADD COLUMN "date" DATE DEFAULT '2018-10-15';
INSERT INTO "master" (SELECT * FROM "2018_10");
DROP TABLE IF EXISTS "2018_10";


CREATE TABLE "2018_09" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2018_09" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2018_09.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2018_09" WHERE enrolled = '*';
ALTER TABLE "2018_09" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2018_09" DROP COLUMN ssa;
ALTER TABLE "2018_09" DROP COLUMN fips;
ALTER TABLE "2018_09" ADD COLUMN "date" DATE DEFAULT '2018-09-15';
INSERT INTO "master" (SELECT * FROM "2018_09");
DROP TABLE IF EXISTS "2018_09";


CREATE TABLE "2018_08" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2018_08" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2018_08.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2018_08" WHERE enrolled = '*';
ALTER TABLE "2018_08" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2018_08" DROP COLUMN ssa;
ALTER TABLE "2018_08" DROP COLUMN fips;
ALTER TABLE "2018_08" ADD COLUMN "date" DATE DEFAULT '2018-08-15';
INSERT INTO "master" (SELECT * FROM "2018_08");
DROP TABLE IF EXISTS "2018_08";



CREATE TABLE "2018_07" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2018_07" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2018_07.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2018_07" WHERE enrolled = '*';
ALTER TABLE "2018_07" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2018_07" DROP COLUMN ssa;
ALTER TABLE "2018_07" DROP COLUMN fips;
ALTER TABLE "2018_07" ADD COLUMN "date" DATE DEFAULT '2018-07-15';
INSERT INTO "master" (SELECT * FROM "2018_07");
DROP TABLE IF EXISTS "2018_07";



CREATE TABLE "2018_06" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2018_06" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2018_06.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2018_06" WHERE enrolled = '*';
ALTER TABLE "2018_06" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2018_06" DROP COLUMN ssa;
ALTER TABLE "2018_06" DROP COLUMN fips;
ALTER TABLE "2018_06" ADD COLUMN "date" DATE DEFAULT '2018-06-15';
INSERT INTO "master" (SELECT * FROM "2018_06");
DROP TABLE IF EXISTS "2018_06";



CREATE TABLE "2018_05" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2018_05" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2018_05.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2018_05" WHERE enrolled = '*';
ALTER TABLE "2018_05" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2018_05" DROP COLUMN ssa;
ALTER TABLE "2018_05" DROP COLUMN fips;
ALTER TABLE "2018_05" ADD COLUMN "date" DATE DEFAULT '2018-05-15';
INSERT INTO "master" (SELECT * FROM "2018_05");
DROP TABLE IF EXISTS "2018_05";



CREATE TABLE "2018_04" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2018_04" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2018_04.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2018_04" WHERE enrolled = '*';
ALTER TABLE "2018_04" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2018_04" DROP COLUMN ssa;
ALTER TABLE "2018_04" DROP COLUMN fips;
ALTER TABLE "2018_04" ADD COLUMN "date" DATE DEFAULT '2018-04-15';
INSERT INTO "master" (SELECT * FROM "2018_04");
DROP TABLE IF EXISTS "2018_04";



CREATE TABLE "2018_03" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2018_03" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2018_03.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2018_03" WHERE enrolled = '*';
ALTER TABLE "2018_03" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2018_03" DROP COLUMN ssa;
ALTER TABLE "2018_03" DROP COLUMN fips;
ALTER TABLE "2018_03" ADD COLUMN "date" DATE DEFAULT '2018-03-15';
INSERT INTO "master" (SELECT * FROM "2018_03");
DROP TABLE IF EXISTS "2018_03";



CREATE TABLE "2018_02" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2018_02" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2018_02.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2018_02" WHERE enrolled = '*';
ALTER TABLE "2018_02" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2018_02" DROP COLUMN ssa;
ALTER TABLE "2018_02" DROP COLUMN fips;
ALTER TABLE "2018_02" ADD COLUMN "date" DATE DEFAULT '2018-02-15';
INSERT INTO "master" (SELECT * FROM "2018_02");
DROP TABLE IF EXISTS "2018_02";



CREATE TABLE "2018_01" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2018_01" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2018_01.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2018_01" WHERE enrolled = '*';
ALTER TABLE "2018_01" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2018_01" DROP COLUMN ssa;
ALTER TABLE "2018_01" DROP COLUMN fips;
ALTER TABLE "2018_01" ADD COLUMN "date" DATE DEFAULT '2018-01-15';
INSERT INTO "master" (SELECT * FROM "2018_01");
DROP TABLE IF EXISTS "2018_01";



CREATE TABLE "2017_12" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2017_12" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2017_12.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2017_12" WHERE enrolled = '*';
ALTER TABLE "2017_12" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2017_12" DROP COLUMN ssa;
ALTER TABLE "2017_12" DROP COLUMN fips;
ALTER TABLE "2017_12" ADD COLUMN "date" DATE DEFAULT '2017-12-15';
INSERT INTO "master" (SELECT * FROM "2017_12");
DROP TABLE IF EXISTS "2017_12";



CREATE TABLE "2017_11" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2017_11" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2017_11.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2017_11" WHERE enrolled = '*';
ALTER TABLE "2017_11" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2017_11" DROP COLUMN ssa;
ALTER TABLE "2017_11" DROP COLUMN fips;
ALTER TABLE "2017_11" ADD COLUMN "date" DATE DEFAULT '2017-11-15';
INSERT INTO "master" (SELECT * FROM "2017_11");
DROP TABLE IF EXISTS "2017_11";



CREATE TABLE "2017_10" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2017_10" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2017_10.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2017_10" WHERE enrolled = '*';
ALTER TABLE "2017_10" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2017_10" DROP COLUMN ssa;
ALTER TABLE "2017_10" DROP COLUMN fips;
ALTER TABLE "2017_10" ADD COLUMN "date" DATE DEFAULT '2017-10-15';
INSERT INTO "master" (SELECT * FROM "2017_10");
DROP TABLE IF EXISTS "2017_10";


CREATE TABLE "2017_09" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2017_09" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2017_09.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2017_09" WHERE enrolled = '*';
ALTER TABLE "2017_09" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2017_09" DROP COLUMN ssa;
ALTER TABLE "2017_09" DROP COLUMN fips;
ALTER TABLE "2017_09" ADD COLUMN "date" DATE DEFAULT '2017-09-15';
INSERT INTO "master" (SELECT * FROM "2017_09");
DROP TABLE IF EXISTS "2017_09";


CREATE TABLE "2017_08" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2017_08" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2017_08.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2017_08" WHERE enrolled = '*';
ALTER TABLE "2017_08" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2017_08" DROP COLUMN ssa;
ALTER TABLE "2017_08" DROP COLUMN fips;
ALTER TABLE "2017_08" ADD COLUMN "date" DATE DEFAULT '2017-08-15';
INSERT INTO "master" (SELECT * FROM "2017_08");
DROP TABLE IF EXISTS "2017_08";



CREATE TABLE "2017_07" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2017_07" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2017_07.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2017_07" WHERE enrolled = '*';
ALTER TABLE "2017_07" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2017_07" DROP COLUMN ssa;
ALTER TABLE "2017_07" DROP COLUMN fips;
ALTER TABLE "2017_07" ADD COLUMN "date" DATE DEFAULT '2017-07-15';
INSERT INTO "master" (SELECT * FROM "2017_07");
DROP TABLE IF EXISTS "2017_07";



CREATE TABLE "2017_06" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2017_06" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2017_06.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2017_06" WHERE enrolled = '*';
ALTER TABLE "2017_06" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2017_06" DROP COLUMN ssa;
ALTER TABLE "2017_06" DROP COLUMN fips;
ALTER TABLE "2017_06" ADD COLUMN "date" DATE DEFAULT '2017-06-15';
INSERT INTO "master" (SELECT * FROM "2017_06");
DROP TABLE IF EXISTS "2017_06";



CREATE TABLE "2017_05" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2017_05" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2017_05.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2017_05" WHERE enrolled = '*';
ALTER TABLE "2017_05" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2017_05" DROP COLUMN ssa;
ALTER TABLE "2017_05" DROP COLUMN fips;
ALTER TABLE "2017_05" ADD COLUMN "date" DATE DEFAULT '2017-05-15';
INSERT INTO "master" (SELECT * FROM "2017_05");
DROP TABLE IF EXISTS "2017_05";



CREATE TABLE "2017_04" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2017_04" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2017_04.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2017_04" WHERE enrolled = '*';
ALTER TABLE "2017_04" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2017_04" DROP COLUMN ssa;
ALTER TABLE "2017_04" DROP COLUMN fips;
ALTER TABLE "2017_04" ADD COLUMN "date" DATE DEFAULT '2017-04-15';
INSERT INTO "master" (SELECT * FROM "2017_04");
DROP TABLE IF EXISTS "2017_04";



CREATE TABLE "2017_03" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2017_03" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2017_03.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2017_03" WHERE enrolled = '*';
ALTER TABLE "2017_03" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2017_03" DROP COLUMN ssa;
ALTER TABLE "2017_03" DROP COLUMN fips;
ALTER TABLE "2017_03" ADD COLUMN "date" DATE DEFAULT '2017-03-15';
INSERT INTO "master" (SELECT * FROM "2017_03");
DROP TABLE IF EXISTS "2017_03";



CREATE TABLE "2017_02" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2017_02" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2017_02.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2017_02" WHERE enrolled = '*';
ALTER TABLE "2017_02" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2017_02" DROP COLUMN ssa;
ALTER TABLE "2017_02" DROP COLUMN fips;
ALTER TABLE "2017_02" ADD COLUMN "date" DATE DEFAULT '2017-02-15';
INSERT INTO "master" (SELECT * FROM "2017_02");
DROP TABLE IF EXISTS "2017_02";



CREATE TABLE "2017_01" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2017_01" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2017_01.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2017_01" WHERE enrolled = '*';
ALTER TABLE "2017_01" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2017_01" DROP COLUMN ssa;
ALTER TABLE "2017_01" DROP COLUMN fips;
ALTER TABLE "2017_01" ADD COLUMN "date" DATE DEFAULT '2017-01-15';
INSERT INTO "master" (SELECT * FROM "2017_01");
DROP TABLE IF EXISTS "2017_01";



CREATE TABLE "2016_12" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2016_12" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2016_12.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2016_12" WHERE enrolled = '*';
ALTER TABLE "2016_12" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2016_12" DROP COLUMN ssa;
ALTER TABLE "2016_12" DROP COLUMN fips;
ALTER TABLE "2016_12" ADD COLUMN "date" DATE DEFAULT '2016-12-15';
INSERT INTO "master" (SELECT * FROM "2016_12");
DROP TABLE IF EXISTS "2016_12";



CREATE TABLE "2016_11" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2016_11" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2016_11.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2016_11" WHERE enrolled = '*';
ALTER TABLE "2016_11" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2016_11" DROP COLUMN ssa;
ALTER TABLE "2016_11" DROP COLUMN fips;
ALTER TABLE "2016_11" ADD COLUMN "date" DATE DEFAULT '2016-11-15';
INSERT INTO "master" (SELECT * FROM "2016_11");
DROP TABLE IF EXISTS "2016_11";



CREATE TABLE "2016_10" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2016_10" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2016_10.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2016_10" WHERE enrolled = '*';
ALTER TABLE "2016_10" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2016_10" DROP COLUMN ssa;
ALTER TABLE "2016_10" DROP COLUMN fips;
ALTER TABLE "2016_10" ADD COLUMN "date" DATE DEFAULT '2016-10-15';
INSERT INTO "master" (SELECT * FROM "2016_10");
DROP TABLE IF EXISTS "2016_10";


CREATE TABLE "2016_09" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2016_09" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2016_09.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2016_09" WHERE enrolled = '*';
ALTER TABLE "2016_09" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2016_09" DROP COLUMN ssa;
ALTER TABLE "2016_09" DROP COLUMN fips;
ALTER TABLE "2016_09" ADD COLUMN "date" DATE DEFAULT '2016-09-15';
INSERT INTO "master" (SELECT * FROM "2016_09");
DROP TABLE IF EXISTS "2016_09";


CREATE TABLE "2016_08" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2016_08" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2016_08.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2016_08" WHERE enrolled = '*';
ALTER TABLE "2016_08" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2016_08" DROP COLUMN ssa;
ALTER TABLE "2016_08" DROP COLUMN fips;
ALTER TABLE "2016_08" ADD COLUMN "date" DATE DEFAULT '2016-08-15';
INSERT INTO "master" (SELECT * FROM "2016_08");
DROP TABLE IF EXISTS "2016_08";



CREATE TABLE "2016_07" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2016_07" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2016_07.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2016_07" WHERE enrolled = '*';
ALTER TABLE "2016_07" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2016_07" DROP COLUMN ssa;
ALTER TABLE "2016_07" DROP COLUMN fips;
ALTER TABLE "2016_07" ADD COLUMN "date" DATE DEFAULT '2016-07-15';
INSERT INTO "master" (SELECT * FROM "2016_07");
DROP TABLE IF EXISTS "2016_07";



CREATE TABLE "2016_06" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2016_06" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2016_06.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2016_06" WHERE enrolled = '*';
ALTER TABLE "2016_06" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2016_06" DROP COLUMN ssa;
ALTER TABLE "2016_06" DROP COLUMN fips;
ALTER TABLE "2016_06" ADD COLUMN "date" DATE DEFAULT '2016-06-15';
INSERT INTO "master" (SELECT * FROM "2016_06");
DROP TABLE IF EXISTS "2016_06";



CREATE TABLE "2016_05" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2016_05" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2016_05.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2016_05" WHERE enrolled = '*';
ALTER TABLE "2016_05" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2016_05" DROP COLUMN ssa;
ALTER TABLE "2016_05" DROP COLUMN fips;
ALTER TABLE "2016_05" ADD COLUMN "date" DATE DEFAULT '2016-05-15';
INSERT INTO "master" (SELECT * FROM "2016_05");
DROP TABLE IF EXISTS "2016_05";



CREATE TABLE "2016_04" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2016_04" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2016_04.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2016_04" WHERE enrolled = '*';
ALTER TABLE "2016_04" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2016_04" DROP COLUMN ssa;
ALTER TABLE "2016_04" DROP COLUMN fips;
ALTER TABLE "2016_04" ADD COLUMN "date" DATE DEFAULT '2016-04-15';
INSERT INTO "master" (SELECT * FROM "2016_04");
DROP TABLE IF EXISTS "2016_04";



CREATE TABLE "2016_03" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2016_03" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2016_03.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2016_03" WHERE enrolled = '*';
ALTER TABLE "2016_03" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2016_03" DROP COLUMN ssa;
ALTER TABLE "2016_03" DROP COLUMN fips;
ALTER TABLE "2016_03" ADD COLUMN "date" DATE DEFAULT '2016-03-15';
INSERT INTO "master" (SELECT * FROM "2016_03");
DROP TABLE IF EXISTS "2016_03";



CREATE TABLE "2016_02" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2016_02" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2016_02.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2016_02" WHERE enrolled = '*';
ALTER TABLE "2016_02" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2016_02" DROP COLUMN ssa;
ALTER TABLE "2016_02" DROP COLUMN fips;
ALTER TABLE "2016_02" ADD COLUMN "date" DATE DEFAULT '2016-02-15';
INSERT INTO "master" (SELECT * FROM "2016_02");
DROP TABLE IF EXISTS "2016_02";



CREATE TABLE "2016_01" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2016_01" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2016_01.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2016_01" WHERE enrolled = '*';
ALTER TABLE "2016_01" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2016_01" DROP COLUMN ssa;
ALTER TABLE "2016_01" DROP COLUMN fips;
ALTER TABLE "2016_01" ADD COLUMN "date" DATE DEFAULT '2016-01-15';
INSERT INTO "master" (SELECT * FROM "2016_01");
DROP TABLE IF EXISTS "2016_01";



CREATE TABLE "2015_12" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2015_12" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2015_12.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2015_12" WHERE enrolled = '*';
ALTER TABLE "2015_12" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2015_12" DROP COLUMN ssa;
ALTER TABLE "2015_12" DROP COLUMN fips;
ALTER TABLE "2015_12" ADD COLUMN "date" DATE DEFAULT '2015-12-15';
INSERT INTO "master" (SELECT * FROM "2015_12");
DROP TABLE IF EXISTS "2015_12";



CREATE TABLE "2015_11" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2015_11" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2015_11.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2015_11" WHERE enrolled = '*';
ALTER TABLE "2015_11" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2015_11" DROP COLUMN ssa;
ALTER TABLE "2015_11" DROP COLUMN fips;
ALTER TABLE "2015_11" ADD COLUMN "date" DATE DEFAULT '2015-11-15';
INSERT INTO "master" (SELECT * FROM "2015_11");
DROP TABLE IF EXISTS "2015_11";



CREATE TABLE "2015_10" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2015_10" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2015_10.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2015_10" WHERE enrolled = '*';
ALTER TABLE "2015_10" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2015_10" DROP COLUMN ssa;
ALTER TABLE "2015_10" DROP COLUMN fips;
ALTER TABLE "2015_10" ADD COLUMN "date" DATE DEFAULT '2015-10-15';
INSERT INTO "master" (SELECT * FROM "2015_10");
DROP TABLE IF EXISTS "2015_10";


CREATE TABLE "2015_09" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2015_09" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2015_09.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2015_09" WHERE enrolled = '*';
ALTER TABLE "2015_09" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2015_09" DROP COLUMN ssa;
ALTER TABLE "2015_09" DROP COLUMN fips;
ALTER TABLE "2015_09" ADD COLUMN "date" DATE DEFAULT '2015-09-15';
INSERT INTO "master" (SELECT * FROM "2015_09");
DROP TABLE IF EXISTS "2015_09";


CREATE TABLE "2015_08" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2015_08" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2015_08.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2015_08" WHERE enrolled = '*';
ALTER TABLE "2015_08" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2015_08" DROP COLUMN ssa;
ALTER TABLE "2015_08" DROP COLUMN fips;
ALTER TABLE "2015_08" ADD COLUMN "date" DATE DEFAULT '2015-08-15';
INSERT INTO "master" (SELECT * FROM "2015_08");
DROP TABLE IF EXISTS "2015_08";



CREATE TABLE "2015_07" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2015_07" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2015_07.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2015_07" WHERE enrolled = '*';
ALTER TABLE "2015_07" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2015_07" DROP COLUMN ssa;
ALTER TABLE "2015_07" DROP COLUMN fips;
ALTER TABLE "2015_07" ADD COLUMN "date" DATE DEFAULT '2015-07-15';
INSERT INTO "master" (SELECT * FROM "2015_07");
DROP TABLE IF EXISTS "2015_07";



CREATE TABLE "2015_06" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2015_06" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2015_06.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2015_06" WHERE enrolled = '*';
ALTER TABLE "2015_06" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2015_06" DROP COLUMN ssa;
ALTER TABLE "2015_06" DROP COLUMN fips;
ALTER TABLE "2015_06" ADD COLUMN "date" DATE DEFAULT '2015-06-15';
INSERT INTO "master" (SELECT * FROM "2015_06");
DROP TABLE IF EXISTS "2015_06";



CREATE TABLE "2015_05" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2015_05" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2015_05.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2015_05" WHERE enrolled = '*';
ALTER TABLE "2015_05" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2015_05" DROP COLUMN ssa;
ALTER TABLE "2015_05" DROP COLUMN fips;
ALTER TABLE "2015_05" ADD COLUMN "date" DATE DEFAULT '2015-05-15';
INSERT INTO "master" (SELECT * FROM "2015_05");
DROP TABLE IF EXISTS "2015_05";



CREATE TABLE "2015_04" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2015_04" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2015_04.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2015_04" WHERE enrolled = '*';
ALTER TABLE "2015_04" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2015_04" DROP COLUMN ssa;
ALTER TABLE "2015_04" DROP COLUMN fips;
ALTER TABLE "2015_04" ADD COLUMN "date" DATE DEFAULT '2015-04-15';
INSERT INTO "master" (SELECT * FROM "2015_04");
DROP TABLE IF EXISTS "2015_04";



CREATE TABLE "2015_03" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2015_03" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2015_03.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2015_03" WHERE enrolled = '*';
ALTER TABLE "2015_03" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2015_03" DROP COLUMN ssa;
ALTER TABLE "2015_03" DROP COLUMN fips;
ALTER TABLE "2015_03" ADD COLUMN "date" DATE DEFAULT '2015-03-15';
INSERT INTO "master" (SELECT * FROM "2015_03");
DROP TABLE IF EXISTS "2015_03";



CREATE TABLE "2015_02" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2015_02" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2015_02.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2015_02" WHERE enrolled = '*';
ALTER TABLE "2015_02" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2015_02" DROP COLUMN ssa;
ALTER TABLE "2015_02" DROP COLUMN fips;
ALTER TABLE "2015_02" ADD COLUMN "date" DATE DEFAULT '2015-02-15';
INSERT INTO "master" (SELECT * FROM "2015_02");
DROP TABLE IF EXISTS "2015_02";



CREATE TABLE "2015_01" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2015_01" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2015_01.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2015_01" WHERE enrolled = '*';
ALTER TABLE "2015_01" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2015_01" DROP COLUMN ssa;
ALTER TABLE "2015_01" DROP COLUMN fips;
ALTER TABLE "2015_01" ADD COLUMN "date" DATE DEFAULT '2015-01-15';
INSERT INTO "master" (SELECT * FROM "2015_01");
DROP TABLE IF EXISTS "2015_01";



CREATE TABLE "2014_12" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2014_12" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2014_12.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2014_12" WHERE enrolled = '*';
ALTER TABLE "2014_12" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2014_12" DROP COLUMN ssa;
ALTER TABLE "2014_12" DROP COLUMN fips;
ALTER TABLE "2014_12" ADD COLUMN "date" DATE DEFAULT '2014-12-15';
INSERT INTO "master" (SELECT * FROM "2014_12");
DROP TABLE IF EXISTS "2014_12";



CREATE TABLE "2014_11" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2014_11" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2014_11.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2014_11" WHERE enrolled = '*';
ALTER TABLE "2014_11" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2014_11" DROP COLUMN ssa;
ALTER TABLE "2014_11" DROP COLUMN fips;
ALTER TABLE "2014_11" ADD COLUMN "date" DATE DEFAULT '2014-11-15';
INSERT INTO "master" (SELECT * FROM "2014_11");
DROP TABLE IF EXISTS "2014_11";



CREATE TABLE "2014_10" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2014_10" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2014_10.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2014_10" WHERE enrolled = '*';
ALTER TABLE "2014_10" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2014_10" DROP COLUMN ssa;
ALTER TABLE "2014_10" DROP COLUMN fips;
ALTER TABLE "2014_10" ADD COLUMN "date" DATE DEFAULT '2014-10-15';
INSERT INTO "master" (SELECT * FROM "2014_10");
DROP TABLE IF EXISTS "2014_10";


CREATE TABLE "2014_09" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2014_09" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2014_09.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2014_09" WHERE enrolled = '*';
ALTER TABLE "2014_09" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2014_09" DROP COLUMN ssa;
ALTER TABLE "2014_09" DROP COLUMN fips;
ALTER TABLE "2014_09" ADD COLUMN "date" DATE DEFAULT '2014-09-15';
INSERT INTO "master" (SELECT * FROM "2014_09");
DROP TABLE IF EXISTS "2014_09";


CREATE TABLE "2014_08" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2014_08" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2014_08.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2014_08" WHERE enrolled = '*';
ALTER TABLE "2014_08" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2014_08" DROP COLUMN ssa;
ALTER TABLE "2014_08" DROP COLUMN fips;
ALTER TABLE "2014_08" ADD COLUMN "date" DATE DEFAULT '2014-08-15';
INSERT INTO "master" (SELECT * FROM "2014_08");
DROP TABLE IF EXISTS "2014_08";



CREATE TABLE "2014_07" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2014_07" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2014_07.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2014_07" WHERE enrolled = '*';
ALTER TABLE "2014_07" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2014_07" DROP COLUMN ssa;
ALTER TABLE "2014_07" DROP COLUMN fips;
ALTER TABLE "2014_07" ADD COLUMN "date" DATE DEFAULT '2014-07-15';
INSERT INTO "master" (SELECT * FROM "2014_07");
DROP TABLE IF EXISTS "2014_07";



CREATE TABLE "2014_06" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2014_06" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2014_06.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2014_06" WHERE enrolled = '*';
ALTER TABLE "2014_06" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2014_06" DROP COLUMN ssa;
ALTER TABLE "2014_06" DROP COLUMN fips;
ALTER TABLE "2014_06" ADD COLUMN "date" DATE DEFAULT '2014-06-15';
INSERT INTO "master" (SELECT * FROM "2014_06");
DROP TABLE IF EXISTS "2014_06";



CREATE TABLE "2014_05" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2014_05" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2014_05.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2014_05" WHERE enrolled = '*';
ALTER TABLE "2014_05" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2014_05" DROP COLUMN ssa;
ALTER TABLE "2014_05" DROP COLUMN fips;
ALTER TABLE "2014_05" ADD COLUMN "date" DATE DEFAULT '2014-05-15';
INSERT INTO "master" (SELECT * FROM "2014_05");
DROP TABLE IF EXISTS "2014_05";



CREATE TABLE "2014_04" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2014_04" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2014_04.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2014_04" WHERE enrolled = '*';
ALTER TABLE "2014_04" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2014_04" DROP COLUMN ssa;
ALTER TABLE "2014_04" DROP COLUMN fips;
ALTER TABLE "2014_04" ADD COLUMN "date" DATE DEFAULT '2014-04-15';
INSERT INTO "master" (SELECT * FROM "2014_04");
DROP TABLE IF EXISTS "2014_04";



CREATE TABLE "2014_03" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2014_03" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2014_03.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2014_03" WHERE enrolled = '*';
ALTER TABLE "2014_03" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2014_03" DROP COLUMN ssa;
ALTER TABLE "2014_03" DROP COLUMN fips;
ALTER TABLE "2014_03" ADD COLUMN "date" DATE DEFAULT '2014-03-15';
INSERT INTO "master" (SELECT * FROM "2014_03");
DROP TABLE IF EXISTS "2014_03";



CREATE TABLE "2014_02" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2014_02" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2014_02.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2014_02" WHERE enrolled = '*';
ALTER TABLE "2014_02" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2014_02" DROP COLUMN ssa;
ALTER TABLE "2014_02" DROP COLUMN fips;
ALTER TABLE "2014_02" ADD COLUMN "date" DATE DEFAULT '2014-02-15';
INSERT INTO "master" (SELECT * FROM "2014_02");
DROP TABLE IF EXISTS "2014_02";



CREATE TABLE "2014_01" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2014_01" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2014_01.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2014_01" WHERE enrolled = '*';
ALTER TABLE "2014_01" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2014_01" DROP COLUMN ssa;
ALTER TABLE "2014_01" DROP COLUMN fips;
ALTER TABLE "2014_01" ADD COLUMN "date" DATE DEFAULT '2014-01-15';
INSERT INTO "master" (SELECT * FROM "2014_01");
DROP TABLE IF EXISTS "2014_01";



CREATE TABLE "2013_12" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2013_12" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2013_12.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2013_12" WHERE enrolled = '*';
ALTER TABLE "2013_12" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2013_12" DROP COLUMN ssa;
ALTER TABLE "2013_12" DROP COLUMN fips;
ALTER TABLE "2013_12" ADD COLUMN "date" DATE DEFAULT '2013-12-15';
INSERT INTO "master" (SELECT * FROM "2013_12");
DROP TABLE IF EXISTS "2013_12";



CREATE TABLE "2013_11" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2013_11" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2013_11.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2013_11" WHERE enrolled = '*';
ALTER TABLE "2013_11" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2013_11" DROP COLUMN ssa;
ALTER TABLE "2013_11" DROP COLUMN fips;
ALTER TABLE "2013_11" ADD COLUMN "date" DATE DEFAULT '2013-11-15';
INSERT INTO "master" (SELECT * FROM "2013_11");
DROP TABLE IF EXISTS "2013_11";



CREATE TABLE "2013_10" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2013_10" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2013_10.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2013_10" WHERE enrolled = '*';
ALTER TABLE "2013_10" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2013_10" DROP COLUMN ssa;
ALTER TABLE "2013_10" DROP COLUMN fips;
ALTER TABLE "2013_10" ADD COLUMN "date" DATE DEFAULT '2013-10-15';
INSERT INTO "master" (SELECT * FROM "2013_10");
DROP TABLE IF EXISTS "2013_10";


CREATE TABLE "2013_09" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2013_09" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2013_09.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2013_09" WHERE enrolled = '*';
ALTER TABLE "2013_09" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2013_09" DROP COLUMN ssa;
ALTER TABLE "2013_09" DROP COLUMN fips;
ALTER TABLE "2013_09" ADD COLUMN "date" DATE DEFAULT '2013-09-15';
INSERT INTO "master" (SELECT * FROM "2013_09");
DROP TABLE IF EXISTS "2013_09";


CREATE TABLE "2013_08" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2013_08" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2013_08.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2013_08" WHERE enrolled = '*';
ALTER TABLE "2013_08" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2013_08" DROP COLUMN ssa;
ALTER TABLE "2013_08" DROP COLUMN fips;
ALTER TABLE "2013_08" ADD COLUMN "date" DATE DEFAULT '2013-08-15';
INSERT INTO "master" (SELECT * FROM "2013_08");
DROP TABLE IF EXISTS "2013_08";



CREATE TABLE "2013_07" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2013_07" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2013_07.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2013_07" WHERE enrolled = '*';
ALTER TABLE "2013_07" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2013_07" DROP COLUMN ssa;
ALTER TABLE "2013_07" DROP COLUMN fips;
ALTER TABLE "2013_07" ADD COLUMN "date" DATE DEFAULT '2013-07-15';
INSERT INTO "master" (SELECT * FROM "2013_07");
DROP TABLE IF EXISTS "2013_07";



CREATE TABLE "2013_06" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2013_06" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2013_06.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2013_06" WHERE enrolled = '*';
ALTER TABLE "2013_06" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2013_06" DROP COLUMN ssa;
ALTER TABLE "2013_06" DROP COLUMN fips;
ALTER TABLE "2013_06" ADD COLUMN "date" DATE DEFAULT '2013-06-15';
INSERT INTO "master" (SELECT * FROM "2013_06");
DROP TABLE IF EXISTS "2013_06";



CREATE TABLE "2013_05" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2013_05" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2013_05.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2013_05" WHERE enrolled = '*';
ALTER TABLE "2013_05" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2013_05" DROP COLUMN ssa;
ALTER TABLE "2013_05" DROP COLUMN fips;
ALTER TABLE "2013_05" ADD COLUMN "date" DATE DEFAULT '2013-05-15';
INSERT INTO "master" (SELECT * FROM "2013_05");
DROP TABLE IF EXISTS "2013_05";



CREATE TABLE "2013_04" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2013_04" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2013_04.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2013_04" WHERE enrolled = '*';
ALTER TABLE "2013_04" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2013_04" DROP COLUMN ssa;
ALTER TABLE "2013_04" DROP COLUMN fips;
ALTER TABLE "2013_04" ADD COLUMN "date" DATE DEFAULT '2013-04-15';
INSERT INTO "master" (SELECT * FROM "2013_04");
DROP TABLE IF EXISTS "2013_04";



CREATE TABLE "2013_03" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2013_03" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2013_03.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2013_03" WHERE enrolled = '*';
ALTER TABLE "2013_03" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2013_03" DROP COLUMN ssa;
ALTER TABLE "2013_03" DROP COLUMN fips;
ALTER TABLE "2013_03" ADD COLUMN "date" DATE DEFAULT '2013-03-15';
INSERT INTO "master" (SELECT * FROM "2013_03");
DROP TABLE IF EXISTS "2013_03";



CREATE TABLE "2013_02" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2013_02" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2013_02.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2013_02" WHERE enrolled = '*';
ALTER TABLE "2013_02" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2013_02" DROP COLUMN ssa;
ALTER TABLE "2013_02" DROP COLUMN fips;
ALTER TABLE "2013_02" ADD COLUMN "date" DATE DEFAULT '2013-02-15';
INSERT INTO "master" (SELECT * FROM "2013_02");
DROP TABLE IF EXISTS "2013_02";



CREATE TABLE "2013_01" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2013_01" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2013_01.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2013_01" WHERE enrolled = '*';
ALTER TABLE "2013_01" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2013_01" DROP COLUMN ssa;
ALTER TABLE "2013_01" DROP COLUMN fips;
ALTER TABLE "2013_01" ADD COLUMN "date" DATE DEFAULT '2013-01-15';
INSERT INTO "master" (SELECT * FROM "2013_01");
DROP TABLE IF EXISTS "2013_01";



CREATE TABLE "2012_12" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2012_12" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2012_12.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2012_12" WHERE enrolled = '*';
ALTER TABLE "2012_12" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2012_12" DROP COLUMN ssa;
ALTER TABLE "2012_12" DROP COLUMN fips;
ALTER TABLE "2012_12" ADD COLUMN "date" DATE DEFAULT '2012-12-15';
INSERT INTO "master" (SELECT * FROM "2012_12");
DROP TABLE IF EXISTS "2012_12";



CREATE TABLE "2012_11" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2012_11" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2012_11.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2012_11" WHERE enrolled = '*';
ALTER TABLE "2012_11" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2012_11" DROP COLUMN ssa;
ALTER TABLE "2012_11" DROP COLUMN fips;
ALTER TABLE "2012_11" ADD COLUMN "date" DATE DEFAULT '2012-11-15';
INSERT INTO "master" (SELECT * FROM "2012_11");
DROP TABLE IF EXISTS "2012_11";



CREATE TABLE "2012_10" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2012_10" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2012_10.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2012_10" WHERE enrolled = '*';
ALTER TABLE "2012_10" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2012_10" DROP COLUMN ssa;
ALTER TABLE "2012_10" DROP COLUMN fips;
ALTER TABLE "2012_10" ADD COLUMN "date" DATE DEFAULT '2012-10-15';
INSERT INTO "master" (SELECT * FROM "2012_10");
DROP TABLE IF EXISTS "2012_10";


CREATE TABLE "2012_09" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2012_09" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2012_09.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2012_09" WHERE enrolled = '*';
ALTER TABLE "2012_09" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2012_09" DROP COLUMN ssa;
ALTER TABLE "2012_09" DROP COLUMN fips;
ALTER TABLE "2012_09" ADD COLUMN "date" DATE DEFAULT '2012-09-15';
INSERT INTO "master" (SELECT * FROM "2012_09");
DROP TABLE IF EXISTS "2012_09";


CREATE TABLE "2012_08" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2012_08" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2012_08.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2012_08" WHERE enrolled = '*';
ALTER TABLE "2012_08" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2012_08" DROP COLUMN ssa;
ALTER TABLE "2012_08" DROP COLUMN fips;
ALTER TABLE "2012_08" ADD COLUMN "date" DATE DEFAULT '2012-08-15';
INSERT INTO "master" (SELECT * FROM "2012_08");
DROP TABLE IF EXISTS "2012_08";



CREATE TABLE "2012_07" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2012_07" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2012_07.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2012_07" WHERE enrolled = '*';
ALTER TABLE "2012_07" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2012_07" DROP COLUMN ssa;
ALTER TABLE "2012_07" DROP COLUMN fips;
ALTER TABLE "2012_07" ADD COLUMN "date" DATE DEFAULT '2012-07-15';
INSERT INTO "master" (SELECT * FROM "2012_07");
DROP TABLE IF EXISTS "2012_07";



CREATE TABLE "2012_06" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2012_06" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2012_06.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2012_06" WHERE enrolled = '*';
ALTER TABLE "2012_06" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2012_06" DROP COLUMN ssa;
ALTER TABLE "2012_06" DROP COLUMN fips;
ALTER TABLE "2012_06" ADD COLUMN "date" DATE DEFAULT '2012-06-15';
INSERT INTO "master" (SELECT * FROM "2012_06");
DROP TABLE IF EXISTS "2012_06";



CREATE TABLE "2012_05" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2012_05" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2012_05.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2012_05" WHERE enrolled = '*';
ALTER TABLE "2012_05" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2012_05" DROP COLUMN ssa;
ALTER TABLE "2012_05" DROP COLUMN fips;
ALTER TABLE "2012_05" ADD COLUMN "date" DATE DEFAULT '2012-05-15';
INSERT INTO "master" (SELECT * FROM "2012_05");
DROP TABLE IF EXISTS "2012_05";



CREATE TABLE "2012_04" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2012_04" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2012_04.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2012_04" WHERE enrolled = '*';
ALTER TABLE "2012_04" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2012_04" DROP COLUMN ssa;
ALTER TABLE "2012_04" DROP COLUMN fips;
ALTER TABLE "2012_04" ADD COLUMN "date" DATE DEFAULT '2012-04-15';
INSERT INTO "master" (SELECT * FROM "2012_04");
DROP TABLE IF EXISTS "2012_04";



CREATE TABLE "2012_03" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2012_03" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2012_03.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2012_03" WHERE enrolled = '*';
ALTER TABLE "2012_03" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2012_03" DROP COLUMN ssa;
ALTER TABLE "2012_03" DROP COLUMN fips;
ALTER TABLE "2012_03" ADD COLUMN "date" DATE DEFAULT '2012-03-15';
INSERT INTO "master" (SELECT * FROM "2012_03");
DROP TABLE IF EXISTS "2012_03";



CREATE TABLE "2012_02" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2012_02" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2012_02.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2012_02" WHERE enrolled = '*';
ALTER TABLE "2012_02" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2012_02" DROP COLUMN ssa;
ALTER TABLE "2012_02" DROP COLUMN fips;
ALTER TABLE "2012_02" ADD COLUMN "date" DATE DEFAULT '2012-02-15';
INSERT INTO "master" (SELECT * FROM "2012_02");
DROP TABLE IF EXISTS "2012_02";



CREATE TABLE "2012_01" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2012_01" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2012_01.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2012_01" WHERE enrolled = '*';
ALTER TABLE "2012_01" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2012_01" DROP COLUMN ssa;
ALTER TABLE "2012_01" DROP COLUMN fips;
ALTER TABLE "2012_01" ADD COLUMN "date" DATE DEFAULT '2012-01-15';
INSERT INTO "master" (SELECT * FROM "2012_01");
DROP TABLE IF EXISTS "2012_01";



CREATE TABLE "2011_12" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2011_12" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2011_12.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2011_12" WHERE enrolled = '*';
ALTER TABLE "2011_12" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2011_12" DROP COLUMN ssa;
ALTER TABLE "2011_12" DROP COLUMN fips;
ALTER TABLE "2011_12" ADD COLUMN "date" DATE DEFAULT '2011-12-15';
INSERT INTO "master" (SELECT * FROM "2011_12");
DROP TABLE IF EXISTS "2011_12";



CREATE TABLE "2011_11" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2011_11" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2011_11.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2011_11" WHERE enrolled = '*';
ALTER TABLE "2011_11" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2011_11" DROP COLUMN ssa;
ALTER TABLE "2011_11" DROP COLUMN fips;
ALTER TABLE "2011_11" ADD COLUMN "date" DATE DEFAULT '2011-11-15';
INSERT INTO "master" (SELECT * FROM "2011_11");
DROP TABLE IF EXISTS "2011_11";



CREATE TABLE "2011_10" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2011_10" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2011_10.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2011_10" WHERE enrolled = '*';
ALTER TABLE "2011_10" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2011_10" DROP COLUMN ssa;
ALTER TABLE "2011_10" DROP COLUMN fips;
ALTER TABLE "2011_10" ADD COLUMN "date" DATE DEFAULT '2011-10-15';
INSERT INTO "master" (SELECT * FROM "2011_10");
DROP TABLE IF EXISTS "2011_10";


CREATE TABLE "2011_09" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2011_09" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2011_09.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2011_09" WHERE enrolled = '*';
ALTER TABLE "2011_09" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2011_09" DROP COLUMN ssa;
ALTER TABLE "2011_09" DROP COLUMN fips;
ALTER TABLE "2011_09" ADD COLUMN "date" DATE DEFAULT '2011-09-15';
INSERT INTO "master" (SELECT * FROM "2011_09");
DROP TABLE IF EXISTS "2011_09";


CREATE TABLE "2011_08" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2011_08" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2011_08.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2011_08" WHERE enrolled = '*';
ALTER TABLE "2011_08" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2011_08" DROP COLUMN ssa;
ALTER TABLE "2011_08" DROP COLUMN fips;
ALTER TABLE "2011_08" ADD COLUMN "date" DATE DEFAULT '2011-08-15';
INSERT INTO "master" (SELECT * FROM "2011_08");
DROP TABLE IF EXISTS "2011_08";



CREATE TABLE "2011_07" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2011_07" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2011_07.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2011_07" WHERE enrolled = '*';
ALTER TABLE "2011_07" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2011_07" DROP COLUMN ssa;
ALTER TABLE "2011_07" DROP COLUMN fips;
ALTER TABLE "2011_07" ADD COLUMN "date" DATE DEFAULT '2011-07-15';
INSERT INTO "master" (SELECT * FROM "2011_07");
DROP TABLE IF EXISTS "2011_07";



CREATE TABLE "2011_06" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2011_06" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2011_06.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2011_06" WHERE enrolled = '*';
ALTER TABLE "2011_06" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2011_06" DROP COLUMN ssa;
ALTER TABLE "2011_06" DROP COLUMN fips;
ALTER TABLE "2011_06" ADD COLUMN "date" DATE DEFAULT '2011-06-15';
INSERT INTO "master" (SELECT * FROM "2011_06");
DROP TABLE IF EXISTS "2011_06";



CREATE TABLE "2011_05" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2011_05" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2011_05.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2011_05" WHERE enrolled = '*';
ALTER TABLE "2011_05" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2011_05" DROP COLUMN ssa;
ALTER TABLE "2011_05" DROP COLUMN fips;
ALTER TABLE "2011_05" ADD COLUMN "date" DATE DEFAULT '2011-05-15';
INSERT INTO "master" (SELECT * FROM "2011_05");
DROP TABLE IF EXISTS "2011_05";



CREATE TABLE "2011_04" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2011_04" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2011_04.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2011_04" WHERE enrolled = '*';
ALTER TABLE "2011_04" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2011_04" DROP COLUMN ssa;
ALTER TABLE "2011_04" DROP COLUMN fips;
ALTER TABLE "2011_04" ADD COLUMN "date" DATE DEFAULT '2011-04-15';
INSERT INTO "master" (SELECT * FROM "2011_04");
DROP TABLE IF EXISTS "2011_04";



CREATE TABLE "2011_03" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2011_03" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2011_03.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2011_03" WHERE enrolled = '*';
ALTER TABLE "2011_03" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2011_03" DROP COLUMN ssa;
ALTER TABLE "2011_03" DROP COLUMN fips;
ALTER TABLE "2011_03" ADD COLUMN "date" DATE DEFAULT '2011-03-15';
INSERT INTO "master" (SELECT * FROM "2011_03");
DROP TABLE IF EXISTS "2011_03";



CREATE TABLE "2011_02" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2011_02" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2011_02.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2011_02" WHERE enrolled = '*';
ALTER TABLE "2011_02" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2011_02" DROP COLUMN ssa;
ALTER TABLE "2011_02" DROP COLUMN fips;
ALTER TABLE "2011_02" ADD COLUMN "date" DATE DEFAULT '2011-02-15';
INSERT INTO "master" (SELECT * FROM "2011_02");
DROP TABLE IF EXISTS "2011_02";



CREATE TABLE "2011_01" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2011_01" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2011_01.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2011_01" WHERE enrolled = '*';
ALTER TABLE "2011_01" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2011_01" DROP COLUMN ssa;
ALTER TABLE "2011_01" DROP COLUMN fips;
ALTER TABLE "2011_01" ADD COLUMN "date" DATE DEFAULT '2011-01-15';
INSERT INTO "master" (SELECT * FROM "2011_01");
DROP TABLE IF EXISTS "2011_01";



CREATE TABLE "2010_12" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2010_12" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2010_12.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2010_12" WHERE enrolled = '*';
ALTER TABLE "2010_12" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2010_12" DROP COLUMN ssa;
ALTER TABLE "2010_12" DROP COLUMN fips;
ALTER TABLE "2010_12" ADD COLUMN "date" DATE DEFAULT '2010-12-15';
INSERT INTO "master" (SELECT * FROM "2010_12");
DROP TABLE IF EXISTS "2010_12";



CREATE TABLE "2010_11" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2010_11" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2010_11.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2010_11" WHERE enrolled = '*';
ALTER TABLE "2010_11" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2010_11" DROP COLUMN ssa;
ALTER TABLE "2010_11" DROP COLUMN fips;
ALTER TABLE "2010_11" ADD COLUMN "date" DATE DEFAULT '2010-11-15';
INSERT INTO "master" (SELECT * FROM "2010_11");
DROP TABLE IF EXISTS "2010_11";



CREATE TABLE "2010_10" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2010_10" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2010_10.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2010_10" WHERE enrolled = '*';
ALTER TABLE "2010_10" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2010_10" DROP COLUMN ssa;
ALTER TABLE "2010_10" DROP COLUMN fips;
ALTER TABLE "2010_10" ADD COLUMN "date" DATE DEFAULT '2010-10-15';
INSERT INTO "master" (SELECT * FROM "2010_10");
DROP TABLE IF EXISTS "2010_10";


CREATE TABLE "2010_09" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2010_09" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2010_09.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2010_09" WHERE enrolled = '*';
ALTER TABLE "2010_09" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2010_09" DROP COLUMN ssa;
ALTER TABLE "2010_09" DROP COLUMN fips;
ALTER TABLE "2010_09" ADD COLUMN "date" DATE DEFAULT '2010-09-15';
INSERT INTO "master" (SELECT * FROM "2010_09");
DROP TABLE IF EXISTS "2010_09";


CREATE TABLE "2010_08" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2010_08" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2010_08.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2010_08" WHERE enrolled = '*';
ALTER TABLE "2010_08" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2010_08" DROP COLUMN ssa;
ALTER TABLE "2010_08" DROP COLUMN fips;
ALTER TABLE "2010_08" ADD COLUMN "date" DATE DEFAULT '2010-08-15';
INSERT INTO "master" (SELECT * FROM "2010_08");
DROP TABLE IF EXISTS "2010_08";



CREATE TABLE "2010_07" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2010_07" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2010_07.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2010_07" WHERE enrolled = '*';
ALTER TABLE "2010_07" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2010_07" DROP COLUMN ssa;
ALTER TABLE "2010_07" DROP COLUMN fips;
ALTER TABLE "2010_07" ADD COLUMN "date" DATE DEFAULT '2010-07-15';
INSERT INTO "master" (SELECT * FROM "2010_07");
DROP TABLE IF EXISTS "2010_07";



CREATE TABLE "2010_06" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2010_06" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2010_06.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2010_06" WHERE enrolled = '*';
ALTER TABLE "2010_06" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2010_06" DROP COLUMN ssa;
ALTER TABLE "2010_06" DROP COLUMN fips;
ALTER TABLE "2010_06" ADD COLUMN "date" DATE DEFAULT '2010-06-15';
INSERT INTO "master" (SELECT * FROM "2010_06");
DROP TABLE IF EXISTS "2010_06";



CREATE TABLE "2010_05" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2010_05" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2010_05.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2010_05" WHERE enrolled = '*';
ALTER TABLE "2010_05" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2010_05" DROP COLUMN ssa;
ALTER TABLE "2010_05" DROP COLUMN fips;
ALTER TABLE "2010_05" ADD COLUMN "date" DATE DEFAULT '2010-05-15';
INSERT INTO "master" (SELECT * FROM "2010_05");
DROP TABLE IF EXISTS "2010_05";



CREATE TABLE "2010_04" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2010_04" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2010_04.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2010_04" WHERE enrolled = '*';
ALTER TABLE "2010_04" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2010_04" DROP COLUMN ssa;
ALTER TABLE "2010_04" DROP COLUMN fips;
ALTER TABLE "2010_04" ADD COLUMN "date" DATE DEFAULT '2010-04-15';
INSERT INTO "master" (SELECT * FROM "2010_04");
DROP TABLE IF EXISTS "2010_04";



CREATE TABLE "2010_03" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2010_03" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2010_03.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2010_03" WHERE enrolled = '*';
ALTER TABLE "2010_03" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2010_03" DROP COLUMN ssa;
ALTER TABLE "2010_03" DROP COLUMN fips;
ALTER TABLE "2010_03" ADD COLUMN "date" DATE DEFAULT '2010-03-15';
INSERT INTO "master" (SELECT * FROM "2010_03");
DROP TABLE IF EXISTS "2010_03";



CREATE TABLE "2010_02" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2010_02" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2010_02.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2010_02" WHERE enrolled = '*';
ALTER TABLE "2010_02" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2010_02" DROP COLUMN ssa;
ALTER TABLE "2010_02" DROP COLUMN fips;
ALTER TABLE "2010_02" ADD COLUMN "date" DATE DEFAULT '2010-02-15';
INSERT INTO "master" (SELECT * FROM "2010_02");
DROP TABLE IF EXISTS "2010_02";



CREATE TABLE "2010_01" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2010_01" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2010_01.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2010_01" WHERE enrolled = '*';
ALTER TABLE "2010_01" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2010_01" DROP COLUMN ssa;
ALTER TABLE "2010_01" DROP COLUMN fips;
ALTER TABLE "2010_01" ADD COLUMN "date" DATE DEFAULT '2010-01-15';
INSERT INTO "master" (SELECT * FROM "2010_01");
DROP TABLE IF EXISTS "2010_01";



CREATE TABLE "2009_12" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2009_12" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2009_12.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2009_12" WHERE enrolled = '*';
ALTER TABLE "2009_12" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2009_12" DROP COLUMN ssa;
ALTER TABLE "2009_12" DROP COLUMN fips;
ALTER TABLE "2009_12" ADD COLUMN "date" DATE DEFAULT '2009-12-15';
INSERT INTO "master" (SELECT * FROM "2009_12");
DROP TABLE IF EXISTS "2009_12";



CREATE TABLE "2009_11" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2009_11" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2009_11.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2009_11" WHERE enrolled = '*';
ALTER TABLE "2009_11" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2009_11" DROP COLUMN ssa;
ALTER TABLE "2009_11" DROP COLUMN fips;
ALTER TABLE "2009_11" ADD COLUMN "date" DATE DEFAULT '2009-11-15';
INSERT INTO "master" (SELECT * FROM "2009_11");
DROP TABLE IF EXISTS "2009_11";



CREATE TABLE "2009_10" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2009_10" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2009_10.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2009_10" WHERE enrolled = '*';
ALTER TABLE "2009_10" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2009_10" DROP COLUMN ssa;
ALTER TABLE "2009_10" DROP COLUMN fips;
ALTER TABLE "2009_10" ADD COLUMN "date" DATE DEFAULT '2009-10-15';
INSERT INTO "master" (SELECT * FROM "2009_10");
DROP TABLE IF EXISTS "2009_10";


CREATE TABLE "2009_09" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2009_09" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2009_09.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2009_09" WHERE enrolled = '*';
ALTER TABLE "2009_09" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2009_09" DROP COLUMN ssa;
ALTER TABLE "2009_09" DROP COLUMN fips;
ALTER TABLE "2009_09" ADD COLUMN "date" DATE DEFAULT '2009-09-15';
INSERT INTO "master" (SELECT * FROM "2009_09");
DROP TABLE IF EXISTS "2009_09";


CREATE TABLE "2009_08" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2009_08" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2009_08.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2009_08" WHERE enrolled = '*';
ALTER TABLE "2009_08" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2009_08" DROP COLUMN ssa;
ALTER TABLE "2009_08" DROP COLUMN fips;
ALTER TABLE "2009_08" ADD COLUMN "date" DATE DEFAULT '2009-08-15';
INSERT INTO "master" (SELECT * FROM "2009_08");
DROP TABLE IF EXISTS "2009_08";



CREATE TABLE "2009_07" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2009_07" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2009_07.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2009_07" WHERE enrolled = '*';
ALTER TABLE "2009_07" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2009_07" DROP COLUMN ssa;
ALTER TABLE "2009_07" DROP COLUMN fips;
ALTER TABLE "2009_07" ADD COLUMN "date" DATE DEFAULT '2009-07-15';
INSERT INTO "master" (SELECT * FROM "2009_07");
DROP TABLE IF EXISTS "2009_07";



CREATE TABLE "2009_06" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2009_06" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2009_06.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2009_06" WHERE enrolled = '*';
ALTER TABLE "2009_06" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2009_06" DROP COLUMN ssa;
ALTER TABLE "2009_06" DROP COLUMN fips;
ALTER TABLE "2009_06" ADD COLUMN "date" DATE DEFAULT '2009-06-15';
INSERT INTO "master" (SELECT * FROM "2009_06");
DROP TABLE IF EXISTS "2009_06";



CREATE TABLE "2009_05" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2009_05" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2009_05.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2009_05" WHERE enrolled = '*';
ALTER TABLE "2009_05" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2009_05" DROP COLUMN ssa;
ALTER TABLE "2009_05" DROP COLUMN fips;
ALTER TABLE "2009_05" ADD COLUMN "date" DATE DEFAULT '2009-05-15';
INSERT INTO "master" (SELECT * FROM "2009_05");
DROP TABLE IF EXISTS "2009_05";



CREATE TABLE "2009_04" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2009_04" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2009_04.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2009_04" WHERE enrolled = '*';
ALTER TABLE "2009_04" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2009_04" DROP COLUMN ssa;
ALTER TABLE "2009_04" DROP COLUMN fips;
ALTER TABLE "2009_04" ADD COLUMN "date" DATE DEFAULT '2009-04-15';
INSERT INTO "master" (SELECT * FROM "2009_04");
DROP TABLE IF EXISTS "2009_04";



CREATE TABLE "2009_03" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2009_03" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2009_03.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2009_03" WHERE enrolled = '*';
ALTER TABLE "2009_03" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2009_03" DROP COLUMN ssa;
ALTER TABLE "2009_03" DROP COLUMN fips;
ALTER TABLE "2009_03" ADD COLUMN "date" DATE DEFAULT '2009-03-15';
INSERT INTO "master" (SELECT * FROM "2009_03");
DROP TABLE IF EXISTS "2009_03";



CREATE TABLE "2009_02" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2009_02" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2009_02.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2009_02" WHERE enrolled = '*';
ALTER TABLE "2009_02" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2009_02" DROP COLUMN ssa;
ALTER TABLE "2009_02" DROP COLUMN fips;
ALTER TABLE "2009_02" ADD COLUMN "date" DATE DEFAULT '2009-02-15';
INSERT INTO "master" (SELECT * FROM "2009_02");
DROP TABLE IF EXISTS "2009_02";



CREATE TABLE "2009_01" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2009_01" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2009_01.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2009_01" WHERE enrolled = '*';
ALTER TABLE "2009_01" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2009_01" DROP COLUMN ssa;
ALTER TABLE "2009_01" DROP COLUMN fips;
ALTER TABLE "2009_01" ADD COLUMN "date" DATE DEFAULT '2009-01-15';
INSERT INTO "master" (SELECT * FROM "2009_01");
DROP TABLE IF EXISTS "2009_01";



CREATE TABLE "2008_12" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2008_12" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2008_12.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2008_12" WHERE enrolled = '*';
ALTER TABLE "2008_12" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2008_12" DROP COLUMN ssa;
ALTER TABLE "2008_12" DROP COLUMN fips;
ALTER TABLE "2008_12" ADD COLUMN "date" DATE DEFAULT '2008-12-15';
INSERT INTO "master" (SELECT * FROM "2008_12");
DROP TABLE IF EXISTS "2008_12";



CREATE TABLE "2008_11" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2008_11" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2008_11.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2008_11" WHERE enrolled = '*';
ALTER TABLE "2008_11" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2008_11" DROP COLUMN ssa;
ALTER TABLE "2008_11" DROP COLUMN fips;
ALTER TABLE "2008_11" ADD COLUMN "date" DATE DEFAULT '2008-11-15';
INSERT INTO "master" (SELECT * FROM "2008_11");
DROP TABLE IF EXISTS "2008_11";



CREATE TABLE "2008_10" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2008_10" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2008_10.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2008_10" WHERE enrolled = '*';
ALTER TABLE "2008_10" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2008_10" DROP COLUMN ssa;
ALTER TABLE "2008_10" DROP COLUMN fips;
ALTER TABLE "2008_10" ADD COLUMN "date" DATE DEFAULT '2008-10-15';
INSERT INTO "master" (SELECT * FROM "2008_10");
DROP TABLE IF EXISTS "2008_10";


CREATE TABLE "2008_09" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2008_09" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2008_09.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2008_09" WHERE enrolled = '*';
ALTER TABLE "2008_09" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2008_09" DROP COLUMN ssa;
ALTER TABLE "2008_09" DROP COLUMN fips;
ALTER TABLE "2008_09" ADD COLUMN "date" DATE DEFAULT '2008-09-15';
INSERT INTO "master" (SELECT * FROM "2008_09");
DROP TABLE IF EXISTS "2008_09";


CREATE TABLE "2008_08" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2008_08" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2008_08.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2008_08" WHERE enrolled = '*';
ALTER TABLE "2008_08" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2008_08" DROP COLUMN ssa;
ALTER TABLE "2008_08" DROP COLUMN fips;
ALTER TABLE "2008_08" ADD COLUMN "date" DATE DEFAULT '2008-08-15';
INSERT INTO "master" (SELECT * FROM "2008_08");
DROP TABLE IF EXISTS "2008_08";



CREATE TABLE "2008_07" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2008_07" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2008_07.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2008_07" WHERE enrolled = '*';
ALTER TABLE "2008_07" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2008_07" DROP COLUMN ssa;
ALTER TABLE "2008_07" DROP COLUMN fips;
ALTER TABLE "2008_07" ADD COLUMN "date" DATE DEFAULT '2008-07-15';
INSERT INTO "master" (SELECT * FROM "2008_07");
DROP TABLE IF EXISTS "2008_07";



CREATE TABLE "2008_06" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2008_06" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2008_06.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2008_06" WHERE enrolled = '*';
ALTER TABLE "2008_06" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2008_06" DROP COLUMN ssa;
ALTER TABLE "2008_06" DROP COLUMN fips;
ALTER TABLE "2008_06" ADD COLUMN "date" DATE DEFAULT '2008-06-15';
INSERT INTO "master" (SELECT * FROM "2008_06");
DROP TABLE IF EXISTS "2008_06";



CREATE TABLE "2008_05" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2008_05" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2008_05.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2008_05" WHERE enrolled = '*';
ALTER TABLE "2008_05" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2008_05" DROP COLUMN ssa;
ALTER TABLE "2008_05" DROP COLUMN fips;
ALTER TABLE "2008_05" ADD COLUMN "date" DATE DEFAULT '2008-05-15';
INSERT INTO "master" (SELECT * FROM "2008_05");
DROP TABLE IF EXISTS "2008_05";



CREATE TABLE "2008_04" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2008_04" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2008_04.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2008_04" WHERE enrolled = '*';
ALTER TABLE "2008_04" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2008_04" DROP COLUMN ssa;
ALTER TABLE "2008_04" DROP COLUMN fips;
ALTER TABLE "2008_04" ADD COLUMN "date" DATE DEFAULT '2008-04-15';
INSERT INTO "master" (SELECT * FROM "2008_04");
DROP TABLE IF EXISTS "2008_04";



CREATE TABLE "2008_03" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2008_03" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2008_03.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2008_03" WHERE enrolled = '*';
ALTER TABLE "2008_03" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2008_03" DROP COLUMN ssa;
ALTER TABLE "2008_03" DROP COLUMN fips;
ALTER TABLE "2008_03" ADD COLUMN "date" DATE DEFAULT '2008-03-15';
INSERT INTO "master" (SELECT * FROM "2008_03");
DROP TABLE IF EXISTS "2008_03";



CREATE TABLE "2008_02" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2008_02" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2008_02.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2008_02" WHERE enrolled = '*';
ALTER TABLE "2008_02" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2008_02" DROP COLUMN ssa;
ALTER TABLE "2008_02" DROP COLUMN fips;
ALTER TABLE "2008_02" ADD COLUMN "date" DATE DEFAULT '2008-02-15';
INSERT INTO "master" (SELECT * FROM "2008_02");
DROP TABLE IF EXISTS "2008_02";



CREATE TABLE "2008_01" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2008_01" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2008_01.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2008_01" WHERE enrolled = '*';
ALTER TABLE "2008_01" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2008_01" DROP COLUMN ssa;
ALTER TABLE "2008_01" DROP COLUMN fips;
ALTER TABLE "2008_01" ADD COLUMN "date" DATE DEFAULT '2008-01-15';
INSERT INTO "master" (SELECT * FROM "2008_01");
DROP TABLE IF EXISTS "2008_01";


CREATE TABLE "2007_12" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2007_12" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2007_12.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2007_12" WHERE enrolled = '*';
ALTER TABLE "2007_12" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2007_12" DROP COLUMN ssa;
ALTER TABLE "2007_12" DROP COLUMN fips;
ALTER TABLE "2007_12" ADD COLUMN "date" DATE DEFAULT '2007-12-15';
INSERT INTO "master" (SELECT * FROM "2007_12");
DROP TABLE IF EXISTS "2007_12";



CREATE TABLE "2007_11" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2007_11" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2007_11.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2007_11" WHERE enrolled = '*';
ALTER TABLE "2007_11" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2007_11" DROP COLUMN ssa;
ALTER TABLE "2007_11" DROP COLUMN fips;
ALTER TABLE "2007_11" ADD COLUMN "date" DATE DEFAULT '2007-11-15';
INSERT INTO "master" (SELECT * FROM "2007_11");
DROP TABLE IF EXISTS "2007_11";



CREATE TABLE "2007_10" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2007_10" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2007_10.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2007_10" WHERE enrolled = '*';
ALTER TABLE "2007_10" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2007_10" DROP COLUMN ssa;
ALTER TABLE "2007_10" DROP COLUMN fips;
ALTER TABLE "2007_10" ADD COLUMN "date" DATE DEFAULT '2007-10-15';
INSERT INTO "master" (SELECT * FROM "2007_10");
DROP TABLE IF EXISTS "2007_10";


CREATE TABLE "2007_09" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2007_09" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2007_09.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2007_09" WHERE enrolled = '*';
ALTER TABLE "2007_09" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2007_09" DROP COLUMN ssa;
ALTER TABLE "2007_09" DROP COLUMN fips;
ALTER TABLE "2007_09" ADD COLUMN "date" DATE DEFAULT '2007-09-15';
INSERT INTO "master" (SELECT * FROM "2007_09");
DROP TABLE IF EXISTS "2007_09";


CREATE TABLE "2007_08" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2007_08" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2007_08.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2007_08" WHERE enrolled = '*';
ALTER TABLE "2007_08" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2007_08" DROP COLUMN ssa;
ALTER TABLE "2007_08" DROP COLUMN fips;
ALTER TABLE "2007_08" ADD COLUMN "date" DATE DEFAULT '2007-08-15';
INSERT INTO "master" (SELECT * FROM "2007_08");
DROP TABLE IF EXISTS "2007_08";



CREATE TABLE "2007_07" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2007_07" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2007_07.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2007_07" WHERE enrolled = '*';
ALTER TABLE "2007_07" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2007_07" DROP COLUMN ssa;
ALTER TABLE "2007_07" DROP COLUMN fips;
ALTER TABLE "2007_07" ADD COLUMN "date" DATE DEFAULT '2007-07-15';
INSERT INTO "master" (SELECT * FROM "2007_07");
DROP TABLE IF EXISTS "2007_07";



CREATE TABLE "2007_06" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2007_06" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2007_06.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2007_06" WHERE enrolled = '*';
ALTER TABLE "2007_06" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2007_06" DROP COLUMN ssa;
ALTER TABLE "2007_06" DROP COLUMN fips;
ALTER TABLE "2007_06" ADD COLUMN "date" DATE DEFAULT '2007-06-15';
INSERT INTO "master" (SELECT * FROM "2007_06");
DROP TABLE IF EXISTS "2007_06";



CREATE TABLE "2007_05" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2007_05" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2007_05.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2007_05" WHERE enrolled = '*';
ALTER TABLE "2007_05" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2007_05" DROP COLUMN ssa;
ALTER TABLE "2007_05" DROP COLUMN fips;
ALTER TABLE "2007_05" ADD COLUMN "date" DATE DEFAULT '2007-05-15';
INSERT INTO "master" (SELECT * FROM "2007_05");
DROP TABLE IF EXISTS "2007_05";



CREATE TABLE "2007_04" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2007_04" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2007_04.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2007_04" WHERE enrolled = '*';
ALTER TABLE "2007_04" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2007_04" DROP COLUMN ssa;
ALTER TABLE "2007_04" DROP COLUMN fips;
ALTER TABLE "2007_04" ADD COLUMN "date" DATE DEFAULT '2007-04-15';
INSERT INTO "master" (SELECT * FROM "2007_04");
DROP TABLE IF EXISTS "2007_04";



CREATE TABLE "2007_03" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2007_03" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2007_03.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2007_03" WHERE enrolled = '*';
ALTER TABLE "2007_03" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2007_03" DROP COLUMN ssa;
ALTER TABLE "2007_03" DROP COLUMN fips;
ALTER TABLE "2007_03" ADD COLUMN "date" DATE DEFAULT '2007-03-15';
INSERT INTO "master" (SELECT * FROM "2007_03");
DROP TABLE IF EXISTS "2007_03";



CREATE TABLE "2007_02" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2007_02" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2007_02.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2007_02" WHERE enrolled = '*';
ALTER TABLE "2007_02" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2007_02" DROP COLUMN ssa;
ALTER TABLE "2007_02" DROP COLUMN fips;
ALTER TABLE "2007_02" ADD COLUMN "date" DATE DEFAULT '2007-02-15';
INSERT INTO "master" (SELECT * FROM "2007_02");
DROP TABLE IF EXISTS "2007_02";



CREATE TABLE "2007_01" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2007_01" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2007_01.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2007_01" WHERE enrolled = '*';
ALTER TABLE "2007_01" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2007_01" DROP COLUMN ssa;
ALTER TABLE "2007_01" DROP COLUMN fips;
ALTER TABLE "2007_01" ADD COLUMN "date" DATE DEFAULT '2007-01-15';
INSERT INTO "master" (SELECT * FROM "2007_01");
DROP TABLE IF EXISTS "2007_01";



CREATE TABLE "2006_12" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2006_12" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2006_12.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2006_12" WHERE enrolled = '*';
ALTER TABLE "2006_12" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2006_12" DROP COLUMN ssa;
ALTER TABLE "2006_12" DROP COLUMN fips;
ALTER TABLE "2006_12" ADD COLUMN "date" DATE DEFAULT '2006-12-15';
INSERT INTO "master" (SELECT * FROM "2006_12");
DROP TABLE IF EXISTS "2006_12";



CREATE TABLE "2006_11" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2006_11" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2006_11.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2006_11" WHERE enrolled = '*';
ALTER TABLE "2006_11" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2006_11" DROP COLUMN ssa;
ALTER TABLE "2006_11" DROP COLUMN fips;
ALTER TABLE "2006_11" ADD COLUMN "date" DATE DEFAULT '2006-11-15';
INSERT INTO "master" (SELECT * FROM "2006_11");
DROP TABLE IF EXISTS "2006_11";



CREATE TABLE "2006_10" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2006_10" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2006_10.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2006_10" WHERE enrolled = '*';
ALTER TABLE "2006_10" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2006_10" DROP COLUMN ssa;
ALTER TABLE "2006_10" DROP COLUMN fips;
ALTER TABLE "2006_10" ADD COLUMN "date" DATE DEFAULT '2006-10-15';
INSERT INTO "master" (SELECT * FROM "2006_10");
DROP TABLE IF EXISTS "2006_10";


CREATE TABLE "2006_09" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2006_09" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2006_09.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2006_09" WHERE enrolled = '*';
ALTER TABLE "2006_09" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2006_09" DROP COLUMN ssa;
ALTER TABLE "2006_09" DROP COLUMN fips;
ALTER TABLE "2006_09" ADD COLUMN "date" DATE DEFAULT '2006-09-15';
INSERT INTO "master" (SELECT * FROM "2006_09");
DROP TABLE IF EXISTS "2006_09";


CREATE TABLE "2006_08" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2006_08" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2006_08.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2006_08" WHERE enrolled = '*';
ALTER TABLE "2006_08" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2006_08" DROP COLUMN ssa;
ALTER TABLE "2006_08" DROP COLUMN fips;
ALTER TABLE "2006_08" ADD COLUMN "date" DATE DEFAULT '2006-08-15';
INSERT INTO "master" (SELECT * FROM "2006_08");
DROP TABLE IF EXISTS "2006_08";



CREATE TABLE "2006_07" (
	contractid TEXT,
	planid TEXT,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrolled TEXT );

COPY "2006_07" (contractid, planid, ssa, fips, state, county, enrolled)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2006_07.csv'
DELIMITER ','
CSV HEADER;

DELETE FROM "2006_07" WHERE enrolled = '*';
ALTER TABLE "2006_07" ALTER COLUMN enrolled TYPE INTEGER USING (enrolled::integer);
ALTER TABLE "2006_07" DROP COLUMN ssa;
ALTER TABLE "2006_07" DROP COLUMN fips;
ALTER TABLE "2006_07" ADD COLUMN "date" DATE DEFAULT '2006-07-15';
INSERT INTO "master" (SELECT * FROM "2006_07");
DROP TABLE IF EXISTS "2006_07";