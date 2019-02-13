CREATE TYPE gp;

CREATE FUNCTION gp_input(cstring) RETURNS gp AS '$libdir/gp.so' LANGUAGE C IMMUTABLE STRICT;
CREATE FUNCTION gp_output(gp) RETURNS cstring AS '$libdir/gp.so' LANGUAGE C IMMUTABLE STRICT;

CREATE TYPE gp (input=gp_input, output=gp_output, like=integer);
