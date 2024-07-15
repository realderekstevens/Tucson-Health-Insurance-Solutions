SELECT * FROM enrollments
INNER JOIN contracts
ON enrollments.id = contracts.id
WHERE organizationmarketingname = 'Wellcare'
ORDER BY enrolled DESC