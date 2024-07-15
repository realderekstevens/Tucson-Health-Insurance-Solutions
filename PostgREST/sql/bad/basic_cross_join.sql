SELECT "2022_06".enrollment, "2022_06".state, "2022_06".county, "2022_06"."ID",
	(SELECT planname FROM "Contracts" WHERE "2022_06"."ID" = "Contracts"."ID" AND "2022_06".county = "Contracts".county)
FROM "2022_06"
CROSS JOIN "Contracts"
LIMIT 1000;