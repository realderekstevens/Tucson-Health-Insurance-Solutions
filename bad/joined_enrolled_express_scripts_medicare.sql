SELECT * FROM enrollments
INNER JOIN contracts
ON enrollments.id = contracts.id
WHERE organizationmarketingname = 'Express Scripts Medicare'
ORDER BY enrolled DESC