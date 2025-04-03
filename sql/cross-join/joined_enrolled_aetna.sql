SELECT * FROM enrollments
INNER JOIN contracts
ON enrollments.id = contracts.id
WHERE organizationmarketingname = 'Aetna Medicare'
ORDER BY enrolled DESC