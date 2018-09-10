CREATE TABLE ability (name varchar(12) UNIQUE NOT NULL,
                      abbreviation char(3) PRIMARY KEY);

INSERT INTO ability VALUES
('Charisma', 'Cha'),
('Wisdom', 'Wis'),
('Dexterity', 'Dex'),
('Strength', 'Str'),
('Constitution', 'Con'),
('Intelligence', 'Int'),
('Choose', 'Cho');

CREATE TABLE skill (name varchar(15) PRIMARY KEY,
                    ability char(3) REFERENCES ability (abbreviation));

INSERT INTO skill VALUES
('Athletics', 'Str'),
('Acrobatics', 'Dex'),
('Sleight of Hand', 'Dex'),
('Stealth', 'Dex'),
('Arcana', 'Int'),
('History', 'Int'),
('Investigation', 'Int'),
('Nature', 'Int'),
('Religion', 'Int'),
('Animal Handling', 'Wis'),
('Insight', 'Wis'),
('Medicine', 'Wis'),
('Perception', 'Wis'),
('Survival', 'Wis'),
('Deception', 'Cha'),
('Intimidation', 'Cha'),
('Performance', 'Cha'),
('Persuasion', 'Cha');
