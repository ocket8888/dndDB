CREATE TABLE storyline (name text PRIMARY KEY);

INSERT INTO storyline VALUES
('Curse of Strahd'),
('Elemental Evil'),
('Rage of Demons'),
('Starter Set'),
('Storm King''s Thunder'),
('Tales from the Yawning Portal'),
('Tomb of Annihilation'),
('Tyranny of Dragons');

CREATE TABLE adventure (name text NOT NULL,
                        abbreviation text PRIMARY KEY,
                        levelstart smallint,
                        levelend smallint,
                        published date NOT NULL,
                        storyline text REFERENCES storyline (name));

INSERT INTO adventure VALUES
('Curse of Strahd', 'CoS', 1, 10, date '2016-03-15', 'Curse of Strahd'),
('Hoard of the Dragon Queen', 'HotDQ', 1, 7, date '2014-08-19', 'Tyranny of Dragons'),
('Lost Mines of Phandelver', 'LMoP', 1, 5, date '2014-07-15', 'Starter Set'),
('Out of the Abyss', 'OotA', 1, 15, date '2015-09-15', 'Rage of Demons'),
('Princes of the Apocalypse', 'PotA', 1, 15, date '2015-04-07', 'Elemental Evil'),
('Rise of Tiamat', 'RoT', 8, 15, date '2014-11-04', 'Tyranny of Dragons'),
('Storm King''s Thunder', 'SKT', 1, 11, date '2016-09-06', 'Storm King''s Thunder'),
('Tales from the Yawning Portal: Against the Giants', 'TftYP-AtG', 11, 14, date '2017-03-24', 'Tales from the Yawning Portal'),
('Tales from the Yawning Portal: Dead in Thay', 'TftYP-DiT', 9, 11, date '2017-03-24', 'Tales from the Yawning Portal'),
('Tales from the Yawning Portal: The Forge of Fury', 'TftYP-TFoF', 3, 5, date '2017-03-24', 'Tales from the Yawning Portal'),
('Tales from the Yawning Portal: The Hidden Shrine of Tamoachan', 'TftYP-THSoT', 5, 8, date '2017-03-24', 'Tales from the Yawning Portal'),
('Tales from the Yawning Portal: The Sunless Citadel', 'TftYP-TSC', 1, 3, date '2017-03-24', 'Tales from the Yawning Portal'),
('Tales from the Yawning Portal: Tomb of Horrors', 'TftYP-ToH', NULL, NULL, date '2017-03-24', 'Tales from the Yawning Portal'),
('Tales from the Yawning Portal: White Plume Mountain', 'TftYP-WPM', 8, 9, date '2017-03-24', 'Tales from the Yawning Portal'),
('Tomb of Annihilation', 'ToA', 1, 11, date '2017-09-19', 'Tomb of Annihilation');
