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
AND county = 'Los Angeles'
AND master.contractandplanid = 'H0524805'
ORDER BY master.date DESC;