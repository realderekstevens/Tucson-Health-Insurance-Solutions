CREATE TABLE periodic  (
	atomic_number integer PRIMARY KEY,
	element VARCHAR ( 50 ) UNIQUE NOT NULL,
	symbol VARCHAR ( 3 ) NOT NULL,
	mass decimal ( 255 ) UNIQUE NOT NULL,
	neutrons integer NOT NULL,
  protons integer NOT NULL,
  electrons integer NOT NULL,
  period integer NOT NULL,
  group integer NOT NULL,
  phase VARCHAR(10) NOT NULL,
  radioactive BOOL NOT NULL,
  natural BOOL NOT NULL,
  metal BOOL NOT NULL,
  nonmetal BOOL NOT NULL,
  metalloid
  type
  atomic_radius
  electronegativity
  firstionization
  density
  melting_point
  boiling_point
  isotopes
  discoverer
  year
  specific_heat
  shells
  valence
);
