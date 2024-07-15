SELECT sum(enrolled) FROM enrollments
INNER JOIN contracts
ON enrollments.id = contracts.id
WHERE organizationmarketingname = 'UnitedHealthcare'
