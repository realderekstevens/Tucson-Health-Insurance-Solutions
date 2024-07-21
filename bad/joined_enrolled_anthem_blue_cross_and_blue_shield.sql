SELECT * FROM enrollments
INNER JOIN contracts
ON enrollments.id = contracts.id
WHERE organizationmarketingname = 'Optum Insurance of Ohio, Inc.'
ORDER BY enrolled DESC