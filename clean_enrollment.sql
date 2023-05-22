DELETE FROM enrollment WHERE enrollment.Enrollment = '*';
DELETE FROM enrollment WHERE enrollment.Enrollment = 'Enrollment';
DELETE FROM contract WHERE contract.ContractID = "Contract ID";

ALTER TABLE enrollment ADD COLUMN "Contract_Plan";
ALTER TABLE contract ADD COLUMN "Contract_Plan";
UPDATE enrollment SET "Contract_Plan" = ContractID || '' || PlanID;
UPDATE contract SET "Contract_Plan" = ContractID || '' || PlanID;

SELECT * FROM enrollment
INNER JOIN contract
ON enrollment.Contract_Plan = contract.Contract_Plan
ORDER BY enrollment DESC