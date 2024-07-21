SELECT * FROM Enrollment_2023_06 
INNER JOIN Contract_2023_06 ON Enrollment_2023_06.contractid_planid = Contract_2023_06.contractid_planid
WHERE County = 'Maricopa' 
ORDER BY enrollment DESC LIMIT 100