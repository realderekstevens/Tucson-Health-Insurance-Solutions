SELECT *
FROM contract, enrollment
WHERE enrollment.ContractID = contract.ContractID
order by enrollment
LIMIT 1000