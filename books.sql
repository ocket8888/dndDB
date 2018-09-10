CREATE TABLE book (name text UNIQUE NOT NULL,
                   abbreviation varchar(22) PRIMARY KEY);

INSERT INTO book VALUES
('Element Evil Player''s Companion', 'EEPC'),
('Dungeon Master''s Guide', 'DMG'),
('Monster Manual', 'MM'),
('One Grung Above', 'OGA'),
('Player''s Handbook', 'PHB'),
('Plane Shift: Amonkhet', 'PSA'),
('Plane Shift: Innistrad', 'PSI'),
('Plane Shift: Ixalan', 'PSX'),
('Plane Shift: Kaladesh', 'PSK'),
('Plane Shift: Zendikar', 'PSZ'),
('Sword Coast Adventurer''s Guide', 'SCAG'),
('The Tortle Package', 'TTP'),
('Unearthed Arcana: Eberron', 'UAEberron'),
('Unearthed Arcana: Eladrin and Gith', 'UAEladrinAndGith'),
('Unearthed Arcana: Elf Subraces', 'UAElfSubraces'),
('Unearthed Arcana: Fiendish Options', 'UAFiendishOptions'),
('Unearthed Arcana: Gothic Heroes', 'UAGothicHeroes'),
('Unearthed Arcana: That Old Black Magic', 'UAThatOldBlackMagic'),
('Unearthed Arcana: Waterborne Adventures', 'UAWaterborneAdventures'),
('Volo''s Guide to Monsters', 'VGM');
