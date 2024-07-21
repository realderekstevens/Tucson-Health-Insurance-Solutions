SELECT contracts.organizationname, 
contracts.organizationmarketingname, 
contracts.planname, 
contracts.parentorganization, 
master.enrolled, 
master.state, 
master.county,
master.contractandplanid,
master.date

FROM master, contracts
WHERE contracts.contractandplanid = master.contractandplanid
AND county = 'Pima'
AND date = '2022-09-15'
ORDER BY master.enrolled DESC;