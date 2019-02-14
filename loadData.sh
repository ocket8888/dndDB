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
psql -d $DATABASE_NAME -c 'DROP TABLE IF EXISTS vehicle' >/dev/null
psql -d $DATABASE_NAME -c 'DROP TABLE IF EXISTS suggestedFlaws; DROP TABLE IF EXISTS suggestedTraits; DROP TABLE IF EXISTS suggestedBonds; DROP TABLE IF EXISTS suggestedIdeals; DROP TABLE IF EXISTS backgroundFeature; DROP TABLE IF EXISTS backgroundProficiencies; DROP TABLE IF EXISTS background;' >/dev/null
psql -d $DATABASE_NAME -c 'DROP TABLE IF EXISTS stealth; DROP TABLE IF EXISTS itemRequirements; DROP TABLE IF EXISTS firearms; DROP TABLE IF EXISTS itemAge; DROP TYPE IF EXISTS age; DROP TABLE IF EXISTS swords; DROP TABLE IF EXISTS axes; DROP TABLE IF EXISTS itemProperty; DROP TABLE IF EXISTS property; DROP TABLE IF EXISTS itemAction; DROP TABLE IF EXISTS item; DROP TYPE IF EXISTS weaponRange; DROP TYPE IF EXISTS weaponType; DROP TYPE IF EXISTS damageType; DROP TYPE IF EXISTS itemType; DROP TYPE IF EXISTS rarity; DROP TYPE IF EXISTS gp CASCADE;' >/dev/null
psql -d $DATABASE_NAME -c 'DROP TABLE IF EXISTS feature;' >/dev/null
psql -d $DATABASE_NAME -c 'DROP TABLE IF EXISTS dietyDomains; DROP TABLE IF EXISTS diety; DROP TYPE IF EXISTS domain;' >/dev/null
psql -d $DATABASE_NAME -c 'DROP TABLE IF EXISTS objectImmunity;DROP TABLE IF EXISTS objectActions; DROP TABLE IF EXISTS object; DROP TABLE IF EXISTS vehicle;' >/dev/null
psql -d $DATABASE_NAME -c 'DROP TABLE IF EXISTS racialBonus; DROP TABLE IF EXISTS subracialBonus; DROP TABLE IF EXISTS racialBonusChoices; DROP TABLE IF EXISTS subrace; DROP TABLE IF EXISTS race;' >/dev/null
psql -d $DATABASE_NAME -c 'DROP TABLE IF EXISTS book;' >/dev/null
psql -d $DATABASE_NAME -c 'DROP TABLE IF EXISTS adventure; DROP TABLE IF EXISTS storyline;' >/dev/null
psql -d $DATABASE_NAME -c 'DROP TYPE IF EXISTS alignment; DROP TYPE IF EXISTS structure; DROP TYPE IF EXISTS nature;' >/dev/null
psql -d $DATABASE_NAME -c 'DROP TABLE IF EXISTS skill; DROP TABLE IF EXISTS ability;' >/dev/null
echo "Done."

echo "Building, installing and loading GP type"
make
sudo make install
psql -d $DATABASE_NAME -f "$HERE/gp.sql"
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

echo "Loading features..."
psql -d $DATABASE_NAME -f "$HERE/features.sql"
echo "Done."

echo "Loading items..."
psql -d $DATABASE_NAME -f "$HERE/items.sql"
echo "Done."

echo "Loading backgrounds..."
psql -d $DATABASE_NAME -f "$HERE/backgrounds.sql"
echo "Done."
