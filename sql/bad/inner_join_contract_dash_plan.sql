SELECT * FROM enrollment
INNER JOIN contract
ON enrollment.Contract_Plan = contract.Contract_Plan
ORDER BY enrollment DESC