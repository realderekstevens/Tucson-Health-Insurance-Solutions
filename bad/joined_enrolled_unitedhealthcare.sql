SELECT * FROM enrollments
INNER JOIN contracts
ON enrollments.id = contracts.id
WHERE organizationmarketingname = 'UnitedHealthcare'
ORDER BY enrolled DESC