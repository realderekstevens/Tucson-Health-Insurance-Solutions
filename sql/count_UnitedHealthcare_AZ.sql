SELECT sum(enrollment) FROM "2022_08"
INNER JOIN "Contracts"
ON "2022_08"."ID" = "Contracts"."ID"
WHERE STATE = 'AZ' AND organizationmarketingname = 'UnitedHealthcare' 