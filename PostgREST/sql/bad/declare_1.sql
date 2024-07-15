DO $$ 
DECLARE 
	query_id TEXT := 'H1822003'; 
	query_county TEXT := 'Pima';

BEGIN 
	create table query_table 
	
	SELECT enrollment, * FROM "2022_08"
	INNER JOIN "Contracts"
	ON "2022_08"."ID" = "Contracts"."ID"
	WHERE "Contracts"."ID" = ('%', contract_id)
	AND "2022_08".county = ('%', county)
	RAISE NOTICE '% % % has been paid % USD', counter, first_name, last_name, payment;
END $$;