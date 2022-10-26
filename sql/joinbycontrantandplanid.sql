SELECT contracts.organizationname, 
contracts.organizationmarketingname, 
contracts.planname, 
contracts.parentorganization, 
master.enrolled, 
master.state, 
master.county

FROM master, contracts
WHERE contracts.contractandplanid = master.contractandplanid
ORDER BY master.enrolled DESC;