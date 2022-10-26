ALTER TABLE Contract_Info add column ID;
UPDATE Contract_Info SET ID = ContractID || '' || PlanID;