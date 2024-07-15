SELECT * FROM enrollments
INNER JOIN contracts
ON enrollments.id = contracts.id
WHERE organizationmarketingname = 'Blue Cross Blue Shield of Michigan'
ORDER BY enrolled DESC