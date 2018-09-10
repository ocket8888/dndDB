CREATE TABLE object (name text PRIMARY KEY,
                     size char(1) NOT NULL,
                     type text,
                     source varchar(3) REFERENCES book (abbreviation),
                     page smallint,
                     ac smallint NOT NULL,
                     hp smallint NOT NULL,
                     description text);

INSERT INTO object VALUES
('Ballista', 'L', 'siege weapon', 'DMG', 255, 15, 50, 'A ballista is a massive crossbow that fires heavy bolts. Before it can be fired, it must be loaded and aimed. It takes one action to load the weapon, one action to aim it, and one action to fire it.'),
('Cannon', 'L', 'siege weapon', 'DMG', 255, 19, 75, 'A cannon uses gunpowder to propel heavy balls of cast iron through the air at destructive speeds. In a campaign without gunpowder, a cannon might be an arcane device built by clever gnomes or wizardly engineers. A cannon is usually supported in a wooden frame with wheels. Before it can be fired, the cannon must be loaded and aimed. It takes one action to load the weapon, one action to aim it, and one action to fire it.'),
('Cauldron, suspended', 'L', 'siege weapon', 'DMG', 155, 19, 20, 'A cauldron is an iron pot suspended so that it can be tipped easily, spilling its contents. Once emptied, a cauldron must be refilled-and its contents must usually be reheated-before it can be used again. It takes three actions to fill a cauldron and one action to tip it. Cauldrons can be filled with other liquids, such as acid or green slime, with different effects.'),
('Mangonel', 'L', 'siege weapon', 'DMG', 255, 15, 100, 'A mangonel is a type of catapult that hurls heavy projectiles in a high arc. This payload can hit targets behind cover. Before the mangonel can be fired, it must be loaded and aimed. It takes two actions to load the weapon, two actions to aim it, and one action to fire it. A mangonel typically hurls a heavy stone, although it can hurl other kinds of projectiles, with different effects.'),
('Ram', 'L', 'siege weapon', 'DMG', 255, 15, 100, 'A ram consists of a movable gallery equipped with a heavy log suspended from two roof beams by chains. The log is shod in iron and used to batter through doors and barricades. It takes a minimum of four Medium creatures to operate a ram. Because of the gallery roof, these operators have total cover against attacks from above.'),
('Siege Tower', 'G', 'siege weapon', 'DMG', 256, 15, 200, 'A siege tower is a mobile wooden structure with a beam frame and slats in its walls. Large wooden wheels or rollers allow the tower to be pushed or pulled by soldiers or beasts of burden. Medium or smaller creatures can use the siege tower to reach the top of walls up to 40 feet high. A creature in the tower has total cover from attacks outside the tower.'),
('Trebuchet', 'H', 'siege weapon', 'DMG', 256, 15, 150, 'A trebuchet is a powerful catapult that throws its payload in a high arc, so it can hit targets behind cover. Before the trebuchet can be fired, it must be loaded and aimed. It takes two actions to load the weapon, two actions to aim it, and one action to fire it. A trebuchet typically hurls a heavy stone. However, it can launch other kinds of projectiles, such as barrels of oil or sewage, with different effects.');


CREATE TABLE objectImmunity (immunity text, object text REFERENCES object (name), PRIMARY KEY (immunity, object));

INSERT INTO objectImmunity VALUES
('poison', 'Ballista'),
('psychic', 'Ballista'),
('poison', 'Cannon'),
('psychic', 'Cannon'),
('poison', 'Cauldron, suspended'),
('psychic', 'Cauldron, suspended'),
('poison', 'Mangonel'),
('psychic', 'Mangonel'),
('poison', 'Ram'),
('psychic', 'Ram'),
('poison', 'Siege Tower'),
('psychic', 'Siege Tower'),
('poison', 'Trebuchet'),
('psychic', 'Trebuchet');


CREATE TABLE objectActions (name text,
                            type text,
                            attackType text,
                            damage text,
                            range lseg,
                            object text REFERENCES object (name),
                            PRIMARY KEY (name, object));
