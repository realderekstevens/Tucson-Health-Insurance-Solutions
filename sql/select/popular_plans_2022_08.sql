SELECT enrollment, county, state, planname, organizationname, parentorganization FROM "2022_08"
INNER JOIN "Contracts"
ON "2022_08"."ID" = "Contracts"."ID"
ORDER BY enrollment DESC