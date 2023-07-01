DROP TABLE IF EXISTS "metals";

CREATE TABLE "metals" (
	solid VARCHAR(20),
	liquid VARCHAR(20),
	gas VARCHAR(20),
    value integer,
    spec_heat integer,
    melting_point integer,
    boiling_point integer,
	solid_density integer,
	liquid_density integer,
	molar_mass integer,
	impact_yield integer,
	impact_fracture integer,
	impact_strain_at_yield integer,
	compressive_yield integer,
	compressive_fracture integer,
	compressive_strain_at_yield integer,
	tensile_yield integer,
	tensile_fracture integer,
	torsion_strain_at_yield integer,
	shear_yield integer,
	shear_fracture integer,
	shear_strain_at_yield integer,
	bending_yield integer,
	bending_fracture integer,
	bending_strain_at_yield integer,
	max_edge integer,
	color VARCHAR(20) );

INSERT INTO
	metals(solid, liquid, gas, value, spec_heat, melting_point, boiling_point, solid_density, liquid_density, molar_mass, 
		   impact_yield, impact_fracture, impact_strain_at_yield, compressive_yield, compressive_fracture, 
		   compressive_strain_at_yield, tensile_yield, tensile_fracture, torsion_strain_at_yield, shear_yield, 
		   shear_fracture, shear_strain_at_yield, bending_yield, bending_fracture, bending_strain_at_yield, max_edge, color)
VALUES
	('iron', 'molten iron', 'boiling iron', 10, 450, 12768, 15150, 7850, 6980, 55845, 542500, 1085000, 319, 542500, 1085000, 319, 155000, 310000, 73, 155000, 310000, 189, 155000, 310000, 73, 10000, 'solid gray'),
	('gold', 'molten gold', 'boilding gold', 30, 129, 11915, 15141, 19320, 17310, 196967, 175000, 350000, 97, 175000, 350000, 97, 50000, 100000, 64, 50000, 100000, 185, 50000, 100000, 185, 50000, 100000, 64, 10000, 'solid gold')
RETURNING *;