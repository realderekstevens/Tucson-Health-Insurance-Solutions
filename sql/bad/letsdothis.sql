DROP TABLE IF EXISTS "enrollments";
CREATE TABLE "enrollments" (
	contractid VARCHAR(20),
	planid INTEGER,
	ssa VARCHAR(20),
	fips VARCHAR(20),
	state VARCHAR(2),
	county VARCHAR(100),
	enrollment INTEGER,
    date DATE);

COPY "enrollments" (contractid, planid, ssa, fips, state, county, enrollment, date)
FROM 'J:\medicare\CPSC_Enrollment_Info_2022_01.csv'
DELIMITER ','
CSV HEADER;