DROP TABLE IF EXISTS item;
DROP TYPE IF EXISTS gp;
DROP TYPE IF EXISTS rarity;
DROP TYPE IF EXISTS weaponType;
DROP TYPE IF EXISTS weaponRange;
DROP TYPE IF EXISTS damageType;
DROP TYPE IF EXISTS itemType;

CREATE TYPE gp AS (amt money);

CREATE TYPE rarity AS ENUM ('Common',
                            'Uncommon',
                            'Rare',
                            'Very Rare',
                            'Legendary',
                            'Artifact',
                            'Unknown');

CREATE TYPE itemType AS ENUM ('Ammunition',
                              'Artisan Tool',
                              'Explosive',
                              'Adventuring Gear',
                              'Gaming Set',
                              'Heavy Armor',
                              'Instrument',
                              'Light Armor',
                              'Melee Weapon',
                              'Medium Armor',
                              'Mount',
                              'Generic Variant',
                              'Potion',
                              'Ranged Weapon',
                              'Rod',
                              'Ring',
                              'Shield',
                              'Scroll',
                              'Spellcasting Focus',
                              'Tool',
                              'Tack and Harness',
                              'Trade Good',
                              'Vehicle',
                              'Wand');

CREATE TYPE damageType AS ENUM ('bludgeoning',
                                'necrotic',
                                'piercing',
                                'radiant',
                                'slashing');

CREATE TYPE weaponType AS ENUM ('Martial',
                                'Simple');

CREATE TYPE weaponRange AS ENUM ('Melee',
                                 'Ranged',
                                 'Mixed');

CREATE TABLE item (name text PRIMARY KEY,
                   type itemType,
                   rarity rarity,
                   source text REFERENCES book (abbreviation),
                   value gp,
                   weight smallint,
                   page smallint,
                   description text,
                   randomBeneficialProperties smallint,
                   randomDetrimentalProperties smallint,
                   ac smallint,
                   axe boolean,
                   weapon boolean,
                   weaponCategory weaponType,
                   damage1 text,
                   damage2 text,
                   damageBonus smallint,
                   hitBonus smallint,
                   range lseg);
