CREATE TABLE "masterlist" (
	ContractID VARCHAR(20),
	PlanID INTEGER,
	State VARCHAR(2),
	County VARCHAR(100),
	Enrollment INTEGER,
    Date DATE,
    ID VARCHAR(10);

COPY "2006_07" (ContractID, PlanID, SSA, FIPS, State, County, Enrollment)
FROM 'J:\medicare\csv_big\CPSC_Enrollment_Info_2006_07.csv'
DELIMITER ','
CSV HEADER;

UPDATE "2006_07" SET "ID" = ContractID || '' || PlanID; COMMIT;