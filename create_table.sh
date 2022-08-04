psql -d medicare -U postgres -c "CREATE TABLE IF NOT EXISTS enrollment_reports 
	(contract_number VARCHAR(8), 
	plan_id SMALLINT, 
	ssa_state_country_code VARCHAR ( 10 ), 
	fips_state_country_code VARCHAR ( 10 ), 
	state VARCHAR ( 2 ), 
	county VARCHAR ( 50 ), 
	enrollment INTEGER)"
