DO $$ 
DECLARE @contract_id as VARCHAR(100)
DECLARE @county as VARCHAR(100)
SELECT @contract_id = 'H1822003';
   county    TEXT := 'Pima';


BEGIN 
	SELECT enrollment, * FROM "2022_08"
	INNER JOIN "Contracts"
	ON "2022_08"."ID" = "Contracts"."ID"
	WHERE "Contracts"."ID" = ('%', contract_id)
	AND "2022_08".county = ('%', county)
END $$;