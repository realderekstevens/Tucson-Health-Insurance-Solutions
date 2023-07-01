SELECT enrolled, county, state, contracts.planname, contracts.organizationmarketingname, contracts.parentorganization FROM enrollments
INNER JOIN contracts
ON enrollments.id = contracts.id
WHERE (state = 'AZ'
AND county = 'Pima')
ORDER BY enrolled DESC