#!/bin/bash

set -e

if [[ "$#" -lt 1 ]]; then
	echo "Usage: $0 DATABASE_NAME" >&2
	exit 1
fi

DATABASE_NAME="$1";
HERE="$(dirname $0)";

if [[ -z "$(which psql 2>/dev/null)" ]]; then
	echo "You must have a running Postgres server and the client-side 'psql' tool!" >&2
	exit 1
fi

if ! psql -d "$1" -c '\q'; then
	echo "No such database: \"$1\"!" >&2
	exit 1
fi


echo "Ensuring clean initial state..."
psql -d $DATABASE_NAME -c 'DROP TABLE IF EXISTS diety; DROP TYPE IF EXISTS domain;' >/dev/null
psql -d $DATABASE_NAME -c 'DROP TABLE IF EXISTS objectImmunity;DROP TABLE IF EXISTS objectActions;DROP TABLE IF EXISTS object;' >/dev/null
psql -d $DATABASE_NAME -c 'DROP TABLE IF EXISTS racialBonus; DROP TABLE IF EXISTS subracialBonus; DROP TABLE IF EXISTS subrace; DROP TABLE IF EXISTS race;' >/dev/null
psql -d $DATABASE_NAME -c 'DROP TABLE IF EXISTS book;' >/dev/null
psql -d $DATABASE_NAME -c 'DROP TABLE IF EXISTS adventure; DROP TABLE IF EXISTS storyline;' >/dev/null
psql -d $DATABASE_NAME -c 'DROP TYPE IF EXISTS alignment; DROP TYPE IF EXISTS structure; DROP TYPE IF EXISTS nature;' >/dev/null
psql -d $DATABASE_NAME -c 'DROP TABLE IF EXISTS skill; DROP TABLE IF EXISTS ability;' >/dev/null
echo "Done."

echo "Loading books..."
psql -d $DATABASE_NAME -f "$HERE/books.sql"
echo "Done."

echo "Loading adventures..."
psql -d $DATABASE_NAME -f "$HERE/adventures.sql"
echo "Done."

echo "Loading stats..."
psql -d $DATABASE_NAME -f "$HERE/stats.sql"
echo "Done."

echo "Loading races..."
psql -d $DATABASE_NAME -f "$HERE/races.sql"
echo 'Done.'

echo "Loading alignments...."
psql -d $DATABASE_NAME -f "$HERE/alignment.sql"
echo "Done."

echo "Loading dieties..."
psql -d $DATABASE_NAME -f "$HERE/dieties.sql"
echo "Done."

echo "Loading objects..."
psql -d $DATABASE_NAME -f "$HERE/objects.sql"
echo "Done."
