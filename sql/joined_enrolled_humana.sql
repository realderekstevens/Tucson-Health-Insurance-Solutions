SELECT * FROM enrollments
INNER JOIN contracts
ON enrollments.id = contracts.id
WHERE organizationmarketingname = 'Humana'
ORDER BY enrolled DESC