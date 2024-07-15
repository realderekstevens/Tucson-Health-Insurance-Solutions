ALTER TABLE "Contracts"
ALTER COLUMN contracteffectivedate TYPE DATE USING contracteffectivedate::date
