ALTER TABLE master ADD COLUMN "contractandplanid" VARCHAR;
UPDATE master SET "contractandplanid" = contractid || '' || planid;