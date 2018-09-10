DROP TABLE IF EXISTS feature;
DROP TABLE IF EXISTS backgroundProficiencies;
DROP TABLE IF EXISTS background;
CREATE TABLE feature ()

CREATE TABLE background (name text PRIMARY KEY,
                         source varchar(3) REFERENCES book (abbreviation),
                         page smallint,
                         )
