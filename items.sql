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
                              'Treasure',
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

INSERT INTO item VALUES
('Azurite', 'Treasure', 'Unknown', 'DMG', ROW(10), 0, 134, 'An opaque mottled deep blue gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Banded Agate', 'Treasure', 'Unknown', 'DMG', ROW(10), 0, 134, 'A translucent striped brown, blue, white, or red gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Blue Quartz', 'Treasure', 'Unknown', 'DMG', ROW(10), 0, 134, 'A transparent pale blue gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Eye Agate', 'Treasure', 'Unknown', 'DMG', ROW(10), 0, 134, 'A translucent circles of gray, white, brown, blue, or green gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Hematite', 'Treasure', 'Unknown', 'DMG', ROW(10), 0, 134, 'An opaque gray-black gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Lapis Lazuli', 'Treasure', 'Unknown', 'DMG', ROW(10), 0, 134, 'An opaque light and dark blue with yellow flecks gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Malachite', 'Treasure', 'Unknown', 'DMG', ROW(10), 0, 134, 'An opaque striated light and dark green gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Moss Agate', 'Treasure', 'Unknown', 'DMG', ROW(10), 0, 134, 'A translucent pink or yellow-white with mossy gray or green markings gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Obsidian', 'Treasure', 'Unknown', 'DMG', ROW(10), 0, 134, 'An opaque black gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Rhodochrosite', 'Treasure', 'Unknown', 'DMG', ROW(10), 0, 134, 'An opaque light pink gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Tiger Eye', 'Treasure', 'Unknown', 'DMG', ROW(10), 0, 134, 'A translucent brown with golden center gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Turquoise', 'Treasure', 'Unknown', 'DMG', ROW(10), 0, 134, 'An opaque light blue-green gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Amber', 'Treasure', 'Unknown', 'DMG', ROW(100), 0, 134, 'A transparent watery gold to rich gold gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Amethyst', 'Treasure', 'Unknown', 'DMG', ROW(100), 0, 134, 'A transparent deep purple gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Chrysoberyl', 'Treasure', 'Unknown', 'DMG', ROW(100), 0, 134, 'A transparent yellow-green to pale green gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Coral', 'Treasure', 'Unknown', 'DMG', ROW(100), 0, 134, 'An opaque crimson gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Garnet', 'Treasure', 'Unknown', 'DMG', ROW(100), 0, 134, 'A transparent red, brown-green, or violet gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Jade', 'Treasure', 'Unknown', 'DMG', ROW(100), 0, 134, 'A translucent light green, deep green, or white gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Jet', 'Treasure', 'Unknown', 'DMG', ROW(100), 0, 134, 'An opaque deep black gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Pearl', 'Treasure', 'Unknown', 'DMG', ROW(100), 0, 134, 'An opaque lustrous white, yellow, or pink gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Spinel', 'Treasure', 'Unknown', 'DMG', ROW(100), 0, 134, 'A transparent red, red-brown, or deep green gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Tourmaline', 'Treasure', 'Unknown', 'DMG', ROW(100), 0, 134, 'A transparent pale green, blue, brown, or red gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Black Opal', 'Treasure', 'Unknown', 'DMG', ROW(1000), 0, 134, 'A translucent dark green with black mottling and golden flecks gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Blue Sapphire', 'Treasure', 'Unknown', 'DMG', ROW(1000), 0, 134, 'A transparent blue-white to medium blue gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Emerald', 'Treasure', 'Unknown', 'DMG', ROW(1000), 0, 134, 'A transparent deep bright green gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Fire Opal', 'Treasure', 'Unknown', 'DMG', ROW(1000), 0, 134, 'A translucent fiery red gemstone worth.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Opal', 'Treasure', 'Unknown', 'DMG', ROW(1000), 0, 134, 'A translucent pale blue with green and golden mottling gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Star Ruby', 'Treasure', 'Unknown', 'DMG', ROW(1000), 0, 134, 'A translucent ruby with white star-shaped center gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Star Sapphire', 'Treasure', 'Unknown', 'DMG', ROW(1000), 0, 134, 'A translucent blue sapphire with white star-shaped center gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Yellow Sapphire', 'Treasure', 'Unknown', 'DMG', ROW(1000), 0, 134, 'A transparent fiery yellow or yellow-green gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Black velvet mask stitched with silver thread', 'Treasure', 'Unknown', 'DMG', ROW(25), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Carved bone statuette', 'Treasure', 'Unknown', 'DMG', ROW(25), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Cloth-of-gold vestments', 'Treasure', 'Unknown', 'DMG', ROW(25), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Copper chalice with silver filigree', 'Treasure', 'Unknown', 'DMG', ROW(25), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Embroidered silk handkerchief', 'Treasure', 'Unknown', 'DMG', ROW(25), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Gold locket with a painted portrait inside', 'Treasure', 'Unknown', 'DMG', ROW(25), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Pair of engraved bone dice', 'Treasure', 'Unknown', 'DMG', ROW(25), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Silver ewer', 'Treasure', 'Unknown', 'DMG', ROW(25), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Small gold bracelet', 'Treasure', 'Unknown', 'DMG', ROW(25), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Small mirror set in a painted wooden frame', 'Treasure', 'Unknown', 'DMG', ROW(25), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Box of turquoise animal figurines', 'Treasure', 'Unknown', 'DMG', ROW(250), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Brass mug with jade inlay', 'Treasure', 'Unknown', 'DMG', ROW(250), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Bronze crown', 'Treasure', 'Unknown', 'DMG', ROW(250), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Carved ivory statuette', 'Treasure', 'Unknown', 'DMG', ROW(250), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Gold bird cage with electrum filigree', 'Treasure', 'Unknown', 'DMG', ROW(250), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Gold ring set with bloodstones', 'Treasure', 'Unknown', 'DMG', ROW(250), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Large gold bracelet', 'Treasure', 'Unknown', 'DMG', ROW(250), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Large well-made tapestry', 'Treasure', 'Unknown', 'DMG', ROW(250), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Silk robe with gold embroidery', 'Treasure', 'Unknown', 'DMG', ROW(250), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Silver necklace with a gemstone pendant', 'Treasure', 'Unknown', 'DMG', ROW(250), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Necklace string of small pink pearls', 'Treasure', 'Unknown', 'DMG', ROW(2500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Embroidered glove set with jewel chips', 'Treasure', 'Unknown', 'DMG', ROW(2500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Embroidered silk and velvet mantle set with numerous moonstones', 'Treasure', 'Unknown', 'DMG', ROW(2500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Eye patch with a mock eye set in blue sapphire and moonstone', 'Treasure', 'Unknown', 'DMG', ROW(2500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Fine gold chain set with a fire opal', 'Treasure', 'Unknown', 'DMG', ROW(2500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Gold circlet set with four aquamarines', 'Treasure', 'Unknown', 'DMG', ROW(2500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Gold music box', 'Treasure', 'Unknown', 'DMG', ROW(2500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Jeweled anklet', 'Treasure', 'Unknown', 'DMG', ROW(2500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Old masterpiece painting', 'Treasure', 'Unknown', 'DMG', ROW(2500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Platinum bracelet set with a sapphire', 'Treasure', 'Unknown', 'DMG', ROW(2500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Bloodstone', 'Treasure', 'Unknown', 'DMG', ROW(50), 0, 134, 'An opaque dark gray with red flecks gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Carnelian', 'Treasure', 'Unknown', 'DMG', ROW(50), 0, 134, 'An opaque orange to red-brown gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Chalcedony', 'Treasure', 'Unknown', 'DMG', ROW(50), 0, 134, 'An opaque white gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Chrysoprase', 'Treasure', 'Unknown', 'DMG', ROW(50), 0, 134, 'A translucent green gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Citrine', 'Treasure', 'Unknown', 'DMG', ROW(50), 0, 134, 'A transparent pale yellow-brown gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Jasper', 'Treasure', 'Unknown', 'DMG', ROW(50), 0, 134, 'An opaque blue, black, or brown gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Moonstone', 'Treasure', 'Unknown', 'DMG', ROW(50), 0, 134, 'A translucent white with pale blue glow gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Onyx', 'Treasure', 'Unknown', 'DMG', ROW(50), 0, 134, 'An opaque black and white banded, or pure black or white gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Quartz', 'Treasure', 'Unknown', 'DMG', ROW(50), 0, 134, 'A transparent white, smoky gray, or yellow gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Sardonyx', 'Treasure', 'Unknown', 'DMG', ROW(50), 0, 134, 'An opaque bands of red and white gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Star rose quartz', 'Treasure', 'Unknown', 'DMG', ROW(50), 0, 134, 'A translucent rosy stone with white star-shaped center gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Zircon', 'Treasure', 'Unknown', 'DMG', ROW(50), 0, 134, 'A transparent pale blue-green gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Alexandrite', 'Treasure', 'Unknown', 'DMG', ROW(500), 0, 134, 'A transparent dark green gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Aquamarine', 'Treasure', 'Unknown', 'DMG', ROW(500), 0, 134, 'A transparent pale blue-green gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Black Pearl', 'Treasure', 'Unknown', 'DMG', ROW(500), 0, 134, 'An opaque pure black gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Blue Spinel', 'Treasure', 'Unknown', 'DMG', ROW(500), 0, 134, 'A transparent deep blue gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Peridot', 'Treasure', 'Unknown', 'DMG', ROW(500), 0, 134, 'A transparent rich olive green gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Topaz', 'Treasure', 'Unknown', 'DMG', ROW(500), 0, 134, 'A transparent golden yellow gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Black Sapphire', 'Treasure', 'Unknown', 'DMG', ROW(5000), 0, 134, 'A translucent lustrous black with glowing highlights gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Diamond', 'Treasure', 'Unknown', 'DMG', ROW(5000), 0, 134, 'A transparent blue-white, canary, pink, brown, or blue gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Jacinth', 'Treasure', 'Unknown', 'DMG', ROW(5000), 0, 134, 'A transparent fiery orange gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Ruby', 'Treasure', 'Unknown', 'DMG', ROW(5000), 0, 134, 'A transparent clear red to deep crimson gemstone.', 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Bottle stopper cork embossed with gold leaf and set with amethysts', 'Treasure', 'Unknown', 'DMG', ROW(750), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Carved harp of exotic wood with ivory inlay and zircon gems', 'Treasure', 'Unknown', 'DMG', ROW(750), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Ceremonial electrum dagger with a black pearl in the pommel', 'Treasure', 'Unknown', 'DMG', ROW(750), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Gold dragon comb set with red garnets as eyes', 'Treasure', 'Unknown', 'DMG', ROW(750), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Obsidian statuette with gold fittings and inlay', 'Treasure', 'Unknown', 'DMG', ROW(750), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Painted gold war mask', 'Treasure', 'Unknown', 'DMG', ROW(750), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Silver and gold brooch', 'Treasure', 'Unknown', 'DMG', ROW(750), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Silver chalice set with moonstones', 'Treasure', 'Unknown', 'DMG', ROW(750), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Silver-plated steel longsword with jet set in hilt', 'Treasure', 'Unknown', 'DMG', ROW(750), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Small gold idol', 'Treasure', 'Unknown', 'DMG', ROW(750), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Bejeweled ivory drinking horn with gold filigree', 'Treasure', 'Unknown', 'DMG', ROW(7500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Gold cup set with emeralds', 'Treasure', 'Unknown', 'DMG', ROW(7500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Gold jewelry box with platinum filigree', 'Treasure', 'Unknown', 'DMG', ROW(7500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Jade game board with solid gold playing pieces', 'Treasure', 'Unknown', 'DMG', ROW(7500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Jeweled gold crown', 'Treasure', 'Unknown', 'DMG', ROW(7500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Jeweled platinum ring', 'Treasure', 'Unknown', 'DMG', ROW(7500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Painted gold child''s sarcophagus', 'Treasure', 'Unknown', 'DMG', ROW(7500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Small gold statuette set with rubies', 'Treasure', 'Unknown', 'DMG', ROW(7500), 0, 134, NULL, 0, 0, 0, FALSE, false, NULL, NULL, NULL, 0, 0, NULL),
('Abacus', 'Adventuring Gear', 'Unknown', 'PHB', ROW(50), 2, 148, NULL, 0, 0, 0, false, false, NULL, NULL, NULL, 0, 0, NULL),
('Acid (vial)', 'Adventuring Gear', 'Unknown', 'PHB', ROW(25));
