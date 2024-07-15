SELECT * FROM enrollments
INNER JOIN contracts
ON enrollments.id = contracts.id
WHERE organizationmarketingname = 'Kaiser Permanente'
ORDER BY enrolled DESC