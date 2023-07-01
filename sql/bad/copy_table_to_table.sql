DROP TABLE IF EXISTS "enrollments";

CREATE TABLE "enrollments" (
	contractID text,
	planid text,
	state VARCHAR(2),
	county VARCHAR(100),
	enrollment INTEGER,
	Date DATE,
	ID text );

INSERT INTO "enrollments" (SELECT * FROM "2022_08");
INSERT INTO "enrollments" (SELECT * FROM "2022_07");
INSERT INTO "enrollments" (SELECT * FROM "2022_06");
INSERT INTO "enrollments" (SELECT * FROM "2022_05");
INSERT INTO "enrollments" (SELECT * FROM "2022_04");
INSERT INTO "enrollments" (SELECT * FROM "2022_03");
INSERT INTO "enrollments" (SELECT * FROM "2022_02");
INSERT INTO "enrollments" (SELECT * FROM "2022_01");


INSERT INTO "enrollments" (SELECT * FROM "2021_12");
INSERT INTO "enrollments" (SELECT * FROM "2021_11");
INSERT INTO "enrollments" (SELECT * FROM "2021_10");
INSERT INTO "enrollments" (SELECT * FROM "2021_09");
INSERT INTO "enrollments" (SELECT * FROM "2021_08");
INSERT INTO "enrollments" (SELECT * FROM "2021_07");
INSERT INTO "enrollments" (SELECT * FROM "2021_06");
INSERT INTO "enrollments" (SELECT * FROM "2021_05");
INSERT INTO "enrollments" (SELECT * FROM "2021_04");
INSERT INTO "enrollments" (SELECT * FROM "2021_03");
INSERT INTO "enrollments" (SELECT * FROM "2021_02");
INSERT INTO "enrollments" (SELECT * FROM "2021_01");



INSERT INTO "enrollments" (SELECT * FROM "2020_12");
INSERT INTO "enrollments" (SELECT * FROM "2020_11");
INSERT INTO "enrollments" (SELECT * FROM "2020_10");
INSERT INTO "enrollments" (SELECT * FROM "2020_09");
INSERT INTO "enrollments" (SELECT * FROM "2020_08");
INSERT INTO "enrollments" (SELECT * FROM "2020_07");
INSERT INTO "enrollments" (SELECT * FROM "2020_06");
INSERT INTO "enrollments" (SELECT * FROM "2020_05");
INSERT INTO "enrollments" (SELECT * FROM "2020_04");
INSERT INTO "enrollments" (SELECT * FROM "2020_03");
INSERT INTO "enrollments" (SELECT * FROM "2020_02");
INSERT INTO "enrollments" (SELECT * FROM "2020_01");



INSERT INTO "enrollments" (SELECT * FROM "2019_12");
INSERT INTO "enrollments" (SELECT * FROM "2019_11");
INSERT INTO "enrollments" (SELECT * FROM "2019_10");
INSERT INTO "enrollments" (SELECT * FROM "2019_09");
INSERT INTO "enrollments" (SELECT * FROM "2019_08");
INSERT INTO "enrollments" (SELECT * FROM "2019_07");
INSERT INTO "enrollments" (SELECT * FROM "2019_06");
INSERT INTO "enrollments" (SELECT * FROM "2019_05");
INSERT INTO "enrollments" (SELECT * FROM "2019_04");
INSERT INTO "enrollments" (SELECT * FROM "2019_03");
INSERT INTO "enrollments" (SELECT * FROM "2019_02");
INSERT INTO "enrollments" (SELECT * FROM "2019_01");

INSERT INTO "enrollments" (SELECT * FROM "2018_12");
INSERT INTO "enrollments" (SELECT * FROM "2018_11");
INSERT INTO "enrollments" (SELECT * FROM "2018_10");
INSERT INTO "enrollments" (SELECT * FROM "2018_09");
INSERT INTO "enrollments" (SELECT * FROM "2018_08");
INSERT INTO "enrollments" (SELECT * FROM "2018_07");
INSERT INTO "enrollments" (SELECT * FROM "2018_06");
INSERT INTO "enrollments" (SELECT * FROM "2018_05");
INSERT INTO "enrollments" (SELECT * FROM "2018_04");
INSERT INTO "enrollments" (SELECT * FROM "2018_03");
INSERT INTO "enrollments" (SELECT * FROM "2018_02");
INSERT INTO "enrollments" (SELECT * FROM "2018_01");


INSERT INTO "enrollments" (SELECT * FROM "2017_12");
INSERT INTO "enrollments" (SELECT * FROM "2017_11");
INSERT INTO "enrollments" (SELECT * FROM "2017_10");
INSERT INTO "enrollments" (SELECT * FROM "2017_09");
INSERT INTO "enrollments" (SELECT * FROM "2017_08");
INSERT INTO "enrollments" (SELECT * FROM "2017_07");
INSERT INTO "enrollments" (SELECT * FROM "2017_06");
INSERT INTO "enrollments" (SELECT * FROM "2017_05");
INSERT INTO "enrollments" (SELECT * FROM "2017_04");
INSERT INTO "enrollments" (SELECT * FROM "2017_03");
INSERT INTO "enrollments" (SELECT * FROM "2017_02");
INSERT INTO "enrollments" (SELECT * FROM "2017_01");



INSERT INTO "enrollments" (SELECT * FROM "2016_12");
INSERT INTO "enrollments" (SELECT * FROM "2016_11");
INSERT INTO "enrollments" (SELECT * FROM "2016_10");
INSERT INTO "enrollments" (SELECT * FROM "2016_09");
INSERT INTO "enrollments" (SELECT * FROM "2016_08");
INSERT INTO "enrollments" (SELECT * FROM "2016_07");
INSERT INTO "enrollments" (SELECT * FROM "2016_06");
INSERT INTO "enrollments" (SELECT * FROM "2016_05");
INSERT INTO "enrollments" (SELECT * FROM "2016_04");
INSERT INTO "enrollments" (SELECT * FROM "2016_03");
INSERT INTO "enrollments" (SELECT * FROM "2016_02");
INSERT INTO "enrollments" (SELECT * FROM "2016_01");



INSERT INTO "enrollments" (SELECT * FROM "2015_12");
INSERT INTO "enrollments" (SELECT * FROM "2015_11");
INSERT INTO "enrollments" (SELECT * FROM "2015_10");
INSERT INTO "enrollments" (SELECT * FROM "2015_09");
INSERT INTO "enrollments" (SELECT * FROM "2015_08");
INSERT INTO "enrollments" (SELECT * FROM "2015_07");
INSERT INTO "enrollments" (SELECT * FROM "2015_06");
INSERT INTO "enrollments" (SELECT * FROM "2015_05");
INSERT INTO "enrollments" (SELECT * FROM "2015_04");
INSERT INTO "enrollments" (SELECT * FROM "2015_03");
INSERT INTO "enrollments" (SELECT * FROM "2015_02");
INSERT INTO "enrollments" (SELECT * FROM "2015_01");



INSERT INTO "enrollments" (SELECT * FROM "2014_12");
INSERT INTO "enrollments" (SELECT * FROM "2014_11");
INSERT INTO "enrollments" (SELECT * FROM "2014_10");
INSERT INTO "enrollments" (SELECT * FROM "2014_09");
INSERT INTO "enrollments" (SELECT * FROM "2014_08");
INSERT INTO "enrollments" (SELECT * FROM "2014_07");
INSERT INTO "enrollments" (SELECT * FROM "2014_06");
INSERT INTO "enrollments" (SELECT * FROM "2014_05");
INSERT INTO "enrollments" (SELECT * FROM "2014_04");
INSERT INTO "enrollments" (SELECT * FROM "2014_03");
INSERT INTO "enrollments" (SELECT * FROM "2014_02");
INSERT INTO "enrollments" (SELECT * FROM "2014_01");



INSERT INTO "enrollments" (SELECT * FROM "2013_12");
INSERT INTO "enrollments" (SELECT * FROM "2013_11");
INSERT INTO "enrollments" (SELECT * FROM "2013_10");
INSERT INTO "enrollments" (SELECT * FROM "2013_09");
INSERT INTO "enrollments" (SELECT * FROM "2013_08");
INSERT INTO "enrollments" (SELECT * FROM "2013_07");
INSERT INTO "enrollments" (SELECT * FROM "2013_06");
INSERT INTO "enrollments" (SELECT * FROM "2013_05");
INSERT INTO "enrollments" (SELECT * FROM "2013_04");
INSERT INTO "enrollments" (SELECT * FROM "2013_03");
INSERT INTO "enrollments" (SELECT * FROM "2013_02");
INSERT INTO "enrollments" (SELECT * FROM "2013_01");



INSERT INTO "enrollments" (SELECT * FROM "2012_12");
INSERT INTO "enrollments" (SELECT * FROM "2012_11");
INSERT INTO "enrollments" (SELECT * FROM "2012_10");
INSERT INTO "enrollments" (SELECT * FROM "2012_09");
INSERT INTO "enrollments" (SELECT * FROM "2012_08");
INSERT INTO "enrollments" (SELECT * FROM "2012_07");
INSERT INTO "enrollments" (SELECT * FROM "2012_06");
INSERT INTO "enrollments" (SELECT * FROM "2012_05");
INSERT INTO "enrollments" (SELECT * FROM "2012_04");
INSERT INTO "enrollments" (SELECT * FROM "2012_03");
INSERT INTO "enrollments" (SELECT * FROM "2012_02");
INSERT INTO "enrollments" (SELECT * FROM "2012_01");


INSERT INTO "enrollments" (SELECT * FROM "2011_12");
INSERT INTO "enrollments" (SELECT * FROM "2011_11");
INSERT INTO "enrollments" (SELECT * FROM "2011_10");
INSERT INTO "enrollments" (SELECT * FROM "2011_09");
INSERT INTO "enrollments" (SELECT * FROM "2011_08");
INSERT INTO "enrollments" (SELECT * FROM "2011_07");
INSERT INTO "enrollments" (SELECT * FROM "2011_06");
INSERT INTO "enrollments" (SELECT * FROM "2011_05");
INSERT INTO "enrollments" (SELECT * FROM "2011_04");
INSERT INTO "enrollments" (SELECT * FROM "2011_03");
INSERT INTO "enrollments" (SELECT * FROM "2011_02");
INSERT INTO "enrollments" (SELECT * FROM "2011_01");



INSERT INTO "enrollments" (SELECT * FROM "2010_12");
INSERT INTO "enrollments" (SELECT * FROM "2010_11");
INSERT INTO "enrollments" (SELECT * FROM "2010_10");
INSERT INTO "enrollments" (SELECT * FROM "2010_09");
INSERT INTO "enrollments" (SELECT * FROM "2010_08");
INSERT INTO "enrollments" (SELECT * FROM "2010_07");
INSERT INTO "enrollments" (SELECT * FROM "2010_06");
INSERT INTO "enrollments" (SELECT * FROM "2010_05");
INSERT INTO "enrollments" (SELECT * FROM "2010_04");
INSERT INTO "enrollments" (SELECT * FROM "2010_03");
INSERT INTO "enrollments" (SELECT * FROM "2010_02");
INSERT INTO "enrollments" (SELECT * FROM "2010_01");



INSERT INTO "enrollments" (SELECT * FROM "2009_12");
INSERT INTO "enrollments" (SELECT * FROM "2009_11");
INSERT INTO "enrollments" (SELECT * FROM "2009_10");
INSERT INTO "enrollments" (SELECT * FROM "2009_09");
INSERT INTO "enrollments" (SELECT * FROM "2009_08");
INSERT INTO "enrollments" (SELECT * FROM "2009_07");
INSERT INTO "enrollments" (SELECT * FROM "2009_06");
INSERT INTO "enrollments" (SELECT * FROM "2009_05");
INSERT INTO "enrollments" (SELECT * FROM "2009_04");
INSERT INTO "enrollments" (SELECT * FROM "2009_03");
INSERT INTO "enrollments" (SELECT * FROM "2009_02");
INSERT INTO "enrollments" (SELECT * FROM "2009_01");



INSERT INTO "enrollments" (SELECT * FROM "2008_12");
INSERT INTO "enrollments" (SELECT * FROM "2008_11");
INSERT INTO "enrollments" (SELECT * FROM "2008_10");
INSERT INTO "enrollments" (SELECT * FROM "2008_09");
INSERT INTO "enrollments" (SELECT * FROM "2008_08");
INSERT INTO "enrollments" (SELECT * FROM "2008_07");
INSERT INTO "enrollments" (SELECT * FROM "2008_06");
INSERT INTO "enrollments" (SELECT * FROM "2008_05");
INSERT INTO "enrollments" (SELECT * FROM "2008_04");
INSERT INTO "enrollments" (SELECT * FROM "2008_03");
INSERT INTO "enrollments" (SELECT * FROM "2008_02");
INSERT INTO "enrollments" (SELECT * FROM "2008_01");

INSERT INTO "enrollments" (SELECT * FROM "2007_12");
INSERT INTO "enrollments" (SELECT * FROM "2007_11");
INSERT INTO "enrollments" (SELECT * FROM "2007_10");
INSERT INTO "enrollments" (SELECT * FROM "2007_09");
INSERT INTO "enrollments" (SELECT * FROM "2007_08");
INSERT INTO "enrollments" (SELECT * FROM "2007_07");
INSERT INTO "enrollments" (SELECT * FROM "2007_06");
INSERT INTO "enrollments" (SELECT * FROM "2007_05");
INSERT INTO "enrollments" (SELECT * FROM "2007_04");
INSERT INTO "enrollments" (SELECT * FROM "2007_03");
INSERT INTO "enrollments" (SELECT * FROM "2007_02");
INSERT INTO "enrollments" (SELECT * FROM "2007_01");

INSERT INTO "enrollments" (SELECT * FROM "2006_12");
INSERT INTO "enrollments" (SELECT * FROM "2006_11");
INSERT INTO "enrollments" (SELECT * FROM "2006_10");
INSERT INTO "enrollments" (SELECT * FROM "2006_09");
INSERT INTO "enrollments" (SELECT * FROM "2006_08");
INSERT INTO "enrollments" (SELECT * FROM "2006_07");

ALTER TABLE "enrollments" ALTER COLUMN date TYPE DATE USING (date::DATE);