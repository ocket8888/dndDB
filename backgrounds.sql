CREATE TABLE background (name text PRIMARY KEY,
                         source varchar(3) REFERENCES book (abbreviation),
                         page smallint,
                         description text);

INSERT INTO background VALUES
('Acolyte', 'PHB', 127, 'Acolytes are shaped by their experience in temples or other religious communities. Their study of the history and tenets of their faith and their relationships to temples, shrines, or hierarchies affect their mannerisms and ideals. Their flaws might be some hidden hypocrisy or heretical idea, or an ideal or bond taken to an extreme.');

CREATE TABLE backgroundProficiencies (background text REFERENCES background (name),
                                      skill text REFERENCES skill (name));

INSERT INTO backgroundProficiencies VALUES
('Acolyte', 'Insight'),
('Acolyte', 'Religion');

CREATE TABLE backgroundFeature (background text REFERENCES background (name),
                                feature text REFERENCES feature (name));

INSERT INTO backgroundFeature VALUES
('Acolyte', 'Shelter of the Faithful');

CREATE TABLE suggestedBonds (background text REFERENCES background (name),
                             bond text NOT NULL);
INSERT INTO suggestedBonds VALUES
('Acolyte', 'I would die to recover an ancient relic of my faith that was lost long ago.'),
('Acolyte', 'I will someday get revenge on the corrupt temple hierarchy who branded me a heretic.'),
('Acolyte', 'I owe my life to the priest who took me in when my parents died.'),
('Acolyte', 'Everything I do is for the common people.'),
('Acolyte', 'I will do anything to protect the temple where I served.'),
('Acolyte', 'I seek to preserve a sacred text that my enemies consider heretical and seek to destroy.');

CREATE TABLE suggestedIdeals (background text REFERENCES background (name),
                              ideal text NOT NULL);
INSERT INTO suggestedIdeals VALUES
('Acolyte', 'Tradition. The ancient traditions of worship and sacrifice must be preserved and upheld. (Lawful)'),
('Acolyte', 'Charity. I always try to help those in need, no matter what the personal cost. (Good)'),
('Acolyte', 'Change. We must help bring about the changes the gods are constantly working in the world. (Chaotic)'),
('Acolyte', 'Power. I hope to one day rise to the top of my faith''s religious hierarchy. (Lawful)'),
('Acolyte', 'Faith. I trust that my deity will guide my actions. I have faith that if I work hard, things will go well. (Lawful)'),
('Acolyte', 'Aspiration. I seek to prove myself worthy of my god''s favor by matching my actions against his or her teachings. (Any)');

CREATE TABLE suggestedTraits (background text REFERENCES background (name),
                              trait text NOT NULL);
INSERT INTO suggestedTraits VALUES
('Acolyte', 'I idolize a particular hero of my faith, and constantly refer to that person''s deeds and example.'),
('Acolyte', 'I can find common ground between the fiercest enemies, empathizing with them and always working toward peace.'),
('Acolyte', 'I see omens in every event and action. The gods try to speak to us, we just need to listen.'),
('Acolyte', 'I quote (or misquote) sacred texts and proverbs in almost every situation.'),
('Acolyte', 'I am tolerant (or intolerant) of other faiths and respect (or condemn) the worship of other gods.'),
('Acolyte', 'I''ve enjoyed fine food, drink, and high society among my temple''s elite. Rough living grates on me.'),
('Acolyte', 'I''ve spent so long in the temple that I have little practical experience dealing with people in the outside world.');

CREATE TABLE suggestedFlaws (background text REFERENCES background (name),
                             flaw text NOT NULL);
INSERT INTO suggestedFlaws VALUES
('Acolyte', 'I judge others harshly, and myself even more severely.'),
('Acolyte', 'I put too much trust in those who wield power within my temple''s hierarchy.'),
('Acolyte', 'My piety sometimes leads me to blindly trust those that profess faith in my god.'),
('Acolyte', 'I am inflexible in my thinking.'),
('Acolyte', 'I am suspicious of strangers and expect the worst of them.'),
('Acolyte', 'Once I pick a goal, I become obsessed with it to the detriment of everything else in my life.');
