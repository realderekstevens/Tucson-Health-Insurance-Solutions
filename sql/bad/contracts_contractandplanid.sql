ALTER TABLE contracts ADD COLUMN "contractandplanid" VARCHAR;
UPDATE contracts SET "contractandplanid" = contractid || '' || planid;