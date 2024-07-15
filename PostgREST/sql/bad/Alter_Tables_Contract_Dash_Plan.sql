ALTER TABLE enrollment ADD COLUMN "Contract_Plan";
ALTER TABLE contract ADD COLUMN "Contract_Plan";
UPDATE enrollment SET "Contract_Plan" = ContractID || '' || PlanID;
UPDATE contract SET "Contract_Plan" = ContractID || '' || PlanID;