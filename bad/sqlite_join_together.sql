ALTER TABLE CPSC_Enrollment_Info_2022_10 ADD COLUMN "contractandplanid" VARCHAR;
UPDATE CPSC_Enrollment_Info_2022_10 SET "contractandplanid" = ContractNumber || '' || planid;

ALTER TABLE CPSC_Contract_Info_2022_10 ADD COLUMN "contractandplanid" VARCHAR;
UPDATE CPSC_Contract_Info_2022_10 SET "contractandplanid" = contractid || '' || planid;