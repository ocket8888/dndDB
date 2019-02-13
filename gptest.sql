DROP TYPE IF EXISTS gp CASCADE;
DROP TABLE IF EXISTS test;

CREATE TYPE gp;

CREATE FUNCTION gp_input(cstring) RETURNS gp AS '$libdir/gp.so' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION gp_output(gp) RETURNS cstring AS '$libdir/gp.so' LANGUAGE C IMMUTABLE STRICT;

CREATE TYPE gp (input=gp_input, output=gp_output, like=integer);

CREATE TABLE test (val gp);

INSERT INTO test VALUES ('12sp'), ('100gp'), ('1000cp'), ('101cp'), ('101sp');
SELECT * FROM test;
