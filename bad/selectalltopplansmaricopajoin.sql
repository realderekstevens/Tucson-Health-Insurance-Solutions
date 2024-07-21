SELECT *

FROM master, contracts
WHERE master.contractandplanid = contracts.contractandplanid
AND county = 'Maricopa'
AND date = '2022-09-15'
ORDER BY master.enrolled DESC;