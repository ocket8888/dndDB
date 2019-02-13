#include "postgres.h"
#include <string.h>
#include "fmgr.h"

#include <stdio.h>

#ifdef PG_MODULE_MAGIC
PG_MODULE_MAGIC;
#endif

static const char* inputFormat = " %i %s2 ";
static const char* invalidFormat = "invalid input syntax for gp: \"%s\"";

PG_FUNCTION_INFO_V1(gp_input);

Datum gp_input(PG_FUNCTION_ARGS) {
	char* raw = PG_GETARG_CSTRING(0);
	int32 amt;
	char unit[3];

	if (sscanf(raw, inputFormat, &amt, &unit[0]) != 2) {
		ereport(ERROR, (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION), errmsg(invalidFormat, raw)));
	}

	unit[0] = tolower(unit[0]);
	unit[1] = tolower(unit[1]);

	switch(unit[1]) {
		case 'p':
			break;
		default:
			ereport(ERROR, (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION), errmsg(invalidFormat, raw)));
	}
	switch(unit[0]) {
		case 'c':
			break;
		case 's':
			amt *= 10;
			break;
		case 'e':
			amt *= 50;
			break;
		case 'g':
			amt *= 100;
			break;
		case 'p':
			amt *= 1000;
			break;
		default:
			ereport(ERROR, (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION), errmsg(invalidFormat, raw)));
	}

	int32* result = (int32*)palloc(sizeof(int32));
	*result = amt;

	PG_RETURN_POINTER(result);
}

PG_FUNCTION_INFO_V1(gp_output);

Datum gp_output(PG_FUNCTION_ARGS) {
	int32* raw = (int32*)PG_GETARG_POINTER(0);
	int32 val = *raw;
	unsigned int bufsz = sizeof(unsigned char)*9 + 2;
	char* buf = (char*) palloc(bufsz+1); // +1 b/c '\0'

	if (val >= 10) {
		int32 deci = val % 10;
		val /= 10;

		if (val >= 10) {
			deci += 10*(val % 10);
			val /= 10;

			if (val >= 10) {
				deci += 100*(val % 10);
				val /= 10;

				if (deci == 0) {
					if (sprintf(buf, "%dpp", val) <= 0) {
						ereport(ERROR, (errcode(ERRCODE_UNTRANSLATABLE_CHARACTER), errmsg("Bad value for gp")));
					}
				}
				else {
					if (sprintf(buf, "%d.%.3dpp", val, deci) <= 0) {
						ereport(ERROR, (errcode(ERRCODE_UNTRANSLATABLE_CHARACTER), errmsg("Bad value for gp")));
					}
				}
			}
			else if (deci == 0){
				if (sprintf(buf, "%dgp", val) <= 0) {
					ereport(ERROR, (errcode(ERRCODE_UNTRANSLATABLE_CHARACTER), errmsg("Bad value for gp")));
				}
			}
			else {
				if (sprintf(buf, "%d.%.2dgp", val, deci) <= 0) {
					ereport(ERROR, (errcode(ERRCODE_UNTRANSLATABLE_CHARACTER), errmsg("Bad value for gp")));
				}
			}
		}
		else if (deci == 0) {
			if (sprintf(buf, "%dsp", val) <= 0) {
				ereport(ERROR, (errcode(ERRCODE_UNTRANSLATABLE_CHARACTER), errmsg("Bad value for gp")));
			}
		}
		else {
			if (sprintf(buf, "%d.%dsp", val, deci) <= 0) {
				ereport(ERROR, (errcode(ERRCODE_UNTRANSLATABLE_CHARACTER), errmsg("Bad value for gp")));
			}
		}
	}
	else {
		if (sprintf(buf, "%dcp", val) <= 0) {
			ereport(ERROR, (errcode(ERRCODE_UNTRANSLATABLE_CHARACTER), errmsg("Bad value for gp")));
		}
	}
	PG_RETURN_CSTRING(buf);
}
