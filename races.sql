CREATE TABLE race (name text PRIMARY KEY,
                   source varchar(22) REFERENCES book (abbreviation),
                   page smallint,
                   size char(1),
                   speed smallint NOT NULL,
                   flySpeed smallint,
                   swimSpeed smallint,
                   age text,
                   darkvision smallint,
                   alignment text,
                   npc boolean);

INSERT INTO race VALUES
('Aarakocra', 'EEPC', 5, 'M', 25, 50, NULL, 'Aarakocra reach maturity by age 3. Compared to humans, aarakocra don''t usually live longer than 30 years.', NULL, 'Most aarakocra are good and rarely choose sides when it comes to law and chaos. Tribal leaders and warriors might be lawful, while explorers and adventurers might tend toward chaotic', FALSE),
('Aasimar', 'VGM', 104, 'M', 30, NULL, NULL, 'Aasimar mature at the same rate as humans, but they can live up to 160 years.', 60, 'Imbued with celestial power, most aasimar are good. Outcast aasimar are most often neutral or even evil.', FALSE),
('Aasimar (DMG)', 'DMG', 286, 'M', 30, NULL, NULL, 'Aasimar mature at the same rate as humans but live a few years longer.', 60, 'Due to their celestial heritage, aasimar are often good. However, some aasimar fall into evil, rejecting their heritage.', FALSE),
('Aetherborn', 'PSK', 17, 'M', 30, NULL, NULL, 'Aetherborn come into being as adults and live no more than a few years.', 60, 'As a rule, aetherborn are driven by hedonism and self-interest, making them neutral at best', FALSE),
('Aven', 'PSA', 15, 'M', 25, 30, NULL, 'Like humans, aven reach adulthood in their late teens and can theoretically live into their 80s. Of course, most find a glorious (or inglorious) death long before that point.', NULL, 'Most aven lean toward some form of neutrality. Ibis-headed aven, focused more on knowledge than any other virtue, are usually neutral. Hawk-headed aven are inclined toward lawful neutral.', FALSE),
('Bugbear', 'VGM', 119, 'M', 30, NULL, NULL, 'Bugbears reach adulthood at age 16 and live up to 80 years.', 60, 'Bugbears endure a harsh existence that demands each of them to remain self-sufficient, even at the expense of their fellows. They tend to be chaotic evil.', FALSE),
('Bullywug', 'DMG', 282, 'M', 20, NULL, 40, NULL, NULL, NULL, TRUE),
('Changeling', 'UAEberron', 1, 'M', 30, NULL, NULL, NULL, NULL, NULL, FALSE),
('Dragonborn', 'PHB', 32, 'M', 30, NULL, NULL, 'Young dragonborn grow quickly. They walk hours after hatching, attain the size and development of a 10-year-old human child by the age of 3, and reach adulthood by 15. They live to be around 80.', NULL, 'Dragonborn tend to extremes, making a conscious choice for one side or the other in the cosmic war between good and evil (represented by Bahamut and Tiamat, respectively). Most dragonborn are good, but those who side with Tiamat can be terrible villains.', FALSE),
('Dwarf', 'PHB', 18, 'M', 25, NULL, NULL, 'Dwarves mature at the same rate as humans, but they''re considered young until they reach the age of 50. On average, they live about 350 years.', NULL, 'Most dwarves are lawful, believing firmly in the benefits of a well-ordered society. They tend toward good as well, with a strong sense of fair play and a belief that everyone deserves to share in the benefits of a just order.', FALSE),
('Dwarf (Kaladesh)', 'PSK', 19, 'M', 25, NULL, NULL, 'Dwarves mature at the same rate as humans, but they''re considered young until they reach the age of 50. On average, they live about 350 years.', NULL, 'Most dwarves are lawful, believing firmly in the benefits of a well-ordered society. They tend toward good as well, with a strong sense of fair play and a belief that everyone deserves to share in the benefits of a just order.', FALSE),
('Elf', 'PHB', 21, 'M', 30, NULL, NULL, 'Although elves reach physical maturity at about the same age as humans, the elven understanding of adulthood goes beyond physical growth to encompass worldly experience. An elf typically claims adulthood and an adult name around the age of 100 and can live to be 750 years old.', 60, 'Elves love freedom, variety, and self- expression, so they lean strongly toward the gentler aspects of chaos. They value and protect others'' freedom as well as their own, and they are more often good than not.', FALSE),
('Elf (Kaladesh)', 'PSK', 20, 'M', 30, NULL, NULL, 'Although elves reach physical maturity at about the same age as humans, the elven understanding of adulthood goes beyond physical growth to encompass worldly experience. An elf typically claims adulthood and an adult name around the age of 100 and can live to be 750 years old.', NULL, 'Elves love freedom, variety, and self-expression, so they lean strongly toward the gentler aspects of chaos. They value and protect others'' freedom as well as their own, and they are more often good than not.', FALSE),
('Elf (Zendikar)', 'PSZ', 18, 'M', 30, NULL, NULL, 'Although elves reach physical maturity at about the same age as humans, the elven understanding of adulthood goes beyond physical growth to encompass worldly experience. An elf typically claims adulthood and an adult name around the age of 100 and can live to be 750 years old.', NULL, 'Elves love freedom, variety, and self-expression, so they lean strongly toward the gentler aspects of chaos. They value and protect others'' freedom as well as their own, and they are more often good than not.', FALSE),
('Firbolg', 'VGM', 107, 'M', 30, NULL, NULL, 'As humanoids related to the fey, firbolg have long lifespans. A firbolg reaches adulthood around 30, and the oldest of them can live for 500 years.', NULL, 'As people who follow the rhythm of nature and see themselves as its caretakers, firbolg are typically neutral good. Evil firbolg are rare and are usually the sworn enemies of the rest of their kind.', FALSE),
('Genasi', 'EEPC', 9, 'M', 30, NULL, NULL, 'Genasi mature at about the same rate as humans and reach adulthood in their late teens. They live somewhat longer than humans do, up to 120 years.', NULL, 'Independent and self-reliant, genasi tend toward a neutral alignment.', FALSE),
('Gith', 'UAEladrinAndGith', 2, 'M', 30, NULL, NULL, 'Gith reach adulthood in their late teens and live for about a century.', NULL, NULL, FALSE),
('Gnoll', 'DMG', 282, 'M', 30, NULL, NULL, NULL, NULL, 60, TRUE),
('Gnome', 'PHB', 35, 'S', 25, NULL, NULL, 'Gnomes mature at the same rate humans do, and most are expected to settle down into an adult life by around age 40. They can live 350 to almost 500 years.', 60, 'Gnomes are most often good. Those who tend toward law are sages, engineers, researchers, scholars, investigators, or inventors. Those who tend toward chaos are minstrels, tricksters, wanderers, or fanciful jewelers. Gnomes are good-hearted, and even the tricksters among them are more playful than vicious.', FALSE),
('Goblin', 'VGM', 119, 'S', 30, NULL, NULL, 'Goblins reach adulthood at age 8 and live up to 60 years.', 60, 'Goblins are typically neutral evil, as they care only for their own needs. A few goblins might tend toward good or neutrality, but only rarely.', FALSE),
('Goblin (Ixalan)', 'PSX', 16, 'S', 25, NULL, NULL, 'Goblins mature faster than humans, reaching adulthood around age 12. They age noticeably faster, and though few goblins live to old age, the most cautious rarely live longer than 50 years.', 60, 'Most goblins are wildly chaotic, with no particular inclination toward good or evil but a strong tendency toward mischief.', FALSE),
('Goblin (Zendikar)', 'PSZ', 16, 'S', 25, NULL, NULL, 'Goblins mature faster than humans, reaching adulthood at around age 12. They also age noticeably faster than humans, and even the most cautious goblins rarely live longer than 50 years.', 60, 'Most goblins are wildly chaotic, though they have no particular inclination toward good or evil.', FALSE),
('Goliath', 'EEPC', 10, 'M', 30, NULL, NULL, 'Goliaths have lifespans comparable to humans. They enter adulthood in their late teens and usually live less than a century.', NULL, 'Goliath society, with its clear roles and tasks, has a strong lawful bent. The goliath sense of fairness, balanced with an emphasis on self sufficiency and personal accountability, pushes them toward neutrality.', FALSE),
('Grimlock', 'DMG', 282, 'M', 30, NULL, NULL, NULL, NULL, NULL, TRUE),
('Grung', 'OGA', 4, 'S', 25, NULL, NULL, 'Grungs mature to adulthood in a single year, but have been known to live up to 50 years.', NULL, 'Most grungs are lawful, having been raised in a strict caste system. They tend toward evil as well, coming from a culture where social advancement occurs rarely, and most often because another member of your army has died and there is no one else of that caste to fill the vacancy.', FALSE),
('Half-Elf', 'PHB', 38, 'M', 30, NULL, NULL, 'Half-elves mature at the same rate humans do and reach adulthood around the age of 20. They live much longer than humans, however, often exceeding 180 years.', 60, 'Half-elves share the chaotic bent of their elven heritage. They value both personal freedom and creative expression, demonstrating neither love of leaders nor desire for followers. They chafe at rules, resent others'' demands, and sometimes prove unreliable, or at least unpredictable.', FALSE),
('Half-Orc', 'PHB', 40, 'M', 30, NULL, NULL, 'Half-orcs mature a little faster than humans, reaching adulthood around age 14. They age noticeably faster and rarely live longer than 75 years.', 60, 'Half-orcs inherit a tendency toward chaos from their orc parents and are not strongly inclined toward good. Half-orcs raised among orcs and willing to live out their lives among them are usually evil.', FALSE),
('Halfling', 'PHB', 26, 'S', 25, NULL, NULL, 'A halfling reaches adulthood at the age of 20 and generally lives into the middle of his or her second century.', NULL, 'Most halflings are lawful good. As a rule, they are good-hearted and kind, hate to see others in pain, and have no tolerance for oppression. They are also very orderly and traditional, leaning heavily on   the support of their community and the comfort of their old ways.', FALSE),
('Hobgoblin', 'DMG', 282, 'M', 30, NULL, NULL, NULL, NULL, 60, TRUE),
('Hobgoblin (VGM)', 'VGM', 119, 'M', 30, NULL, NULL, 'Hobgoblins mature at the same rate as humans and have lifespans similar in length to theirs.', 60, 'Hobgoblin society is built on fidelity to a rigid, unforgiving code of conduct. As such, they tend toward lawful evil.', FALSE),
('Human', 'PHB', 29, 'M', 30, NULL, NULL, 'Humans reach adulthood in their late teens and live less than a century.', NULL, 'Humans tend toward no particular alignment. The best and the worst are found among them.', FALSE),
('Human (Amonkhet)', 'PSA', 14, 'M', 30, NULL, NULL, 'Humans reach adulthood in their late teens. Most human initiates have completed the trials and found a glorious or inglorious death before they turn 30. Viziers can enjoy longer service to their gods, in theory living up to a century.', NULL, 'Humans tend toward no particular alignment. The best and the worst are found among them.', FALSE),
('Human (Innistrad)', 'PSI', 8, 'M', 30, NULL, NULL, 'Humans reach adulthood in their late teens and live less than a century.', NULL, 'Humans tend toward no particular alignment.', FALSE),
('Human (Ixalan)', 'PSX', 11, 'M', 30, NULL, NULL, 'Humans reach adulthood in their late teens and live less than a century.', NULL, 'Humans tend toward no particular alignment. The best and the worst are found among them.', FALSE),
('Kenku', 'VGM', 109, 'M', 30, NULL, NULL, 'Kenku have shorter lifespans than humans. They reach maturity at about 12 years old and can live to 60.', NULL, 'Kenku are chaotic creatures, rarely making enduring commitments, and they care mostly for preserving their own hides. They are generally chaotic neutral in outlook.', FALSE),
('Khenra', 'PSA', 17, 'M', 35, NULL, NULL, 'Khenra mature quickly, reaching adulthood in their early teens. Khenra initiates are usually the youngest in a crop, completing the trials by their late teens. Even without a violent death, they rarely live past 60.', NULL, 'Most khenra lean toward chaotic alignments. They have no particular inclination toward good or evil.', FALSE),
('Kobold', 'VGM', 119, 'S', 30, NULL, NULL, 'Kobolds reach adulthood at age 6 and can live up to 120 years but rarely do so.', 60, 'Kobolds are fundamentally selfish, making them evil, but their reliance on the strength of their group makes them trend toward law. Most lizardfolk are neutral. They see the world as a place of predators and prey, where life and death are natural processes. They wish only to survive, and prefer to leave other creatures to their own devices.', FALSE),
('Kor', 'PSZ', 10, 'M', 30, NULL, NULL, 'Kor mature at the same rate as humans and live about as long.', NULL, 'Most kor are lawful good, with a strong dedication to community and the traditions of their ancestors.', FALSE),
('Kuo-Toa', 'DMG', 282, 'M', 30, NULL, 30, NULL, 120, NULL, TRUE),
('Lizardfolk', 'VGM', 111, 'M', 30, NULL, 30, 'Lizardfolk reach maturity around age 14 and rarely live longer than 60 years.', NULL, NULL, FALSE),
('Merfolk (Ixalan)', 'PSX', 12, 'M', 30, NULL, 30, 'Merfolk mature at the same rate humans do and reach adulthood around the age of 20. They live considerably longer than humans, though, often reaching well over 100 years.', NULL, 'Most merfolk are neutral, living in close harmony with nature.', FALSE),
('Merfolk (Zendikar)', 'DMG', 282, 'M', 10, NULL, 40, 'Merfolk mature at the same rate humans do and reach adulthood around the age of 20. They live considerably longer than humans, though, often reaching well over 100 years.', NULL, 'Most merfolk are neutral, though merfolk of the Emeria and Cosi creeds have chaotic leanings.', TRUE),
('Minotaur (Amonkhet)', 'PSA', 19, 'M', 30, NULL, NULL, 'Minotaurs develop more slowly than humans, reaching full maturity around the age of 20. They typically become acolytes at around 8 or 9 years old, making them among the older members of their crops. Once they reach maturity, though, minotaurs age quickly, rushing headlong through the trials (as they do all aspects of life) to complete them before they pass their peak. A minotaur allowed to die of old age would rarely live beyond 40.', NULL, 'Most minotaurs lean toward chaotic alignments, and they have a slight inclination toward evil.', FALSE),
('Minotaur (Krynn)', 'UAWaterborneAdventures', 1, 'M', 30, NULL, NULL, 'Minotaurs enter adulthood at around the age of 17 and can live up to 150 years.', NULL, 'Minotaurs believe in a strict code of honor, and thus tend toward law. They are loyal to the death and make implacable enemies, even as their brutal culture and disdain for weakness push them toward evil.', FALSE),
('Naga', 'PSA', 21, 'M', 30, NULL, NULL, 'Like humans, naga reach adulthood in their late teens. They show no signs of aging beyond that point except for growing larger, so in theory, a naga could live well over a century.', NULL, 'Most naga are either neutral or neutral evil in alignment.', FALSE),
('Orc', 'VGM', 120, 'M', 30, NULL, NULL, 'Orcs reach adulthood at age 12 and live up to 50 years.', NULL, 'Orcs are vicious raiders, who believe that the world should be theirs. They also respect strength above all else and believe the strong must bully the weak to ensure that weakness does not spread like a disease. They are usually chaotic evil.', FALSE),
('Orc (Ixalan)', 'PSX', 15, 'M', 30, NULL, NULL, 'Orcs mature a little faster than humans, reaching adulthood around age 14. They age noticeably faster and rarely live longer than 75 years.', NULL, 'Most orcs lean toward chaotic alignments, and many serve on pirate ships that encourage an inclination toward evil.', FALSE),
('Revenant', 'UAGothicHeroes', 1, 'V', 0, NULL, NULL, NULL, NULL, NULL, FALSE),
('Shifter', 'UAEberron', 2, 'M', 30, NULL, NULL, NULL, 60, NULL, FALSE),
('Siren', 'PSX', 17, 'M', 25, 30, NULL, NULL, 60, 'Most sirens lean toward chaotic alignment, cherishing the freedom and independence that comes from joining a pirate crew.', FALSE),
('Skeleton', 'DMG', 282, 'M', 30, NULL, NULL, NULL, 60, NULL, TRUE),
('Tabaxi', 'VGM', 113, 'M', 30, NULL, NULL, 'Tabaxi have lifespans equivalent to humans.', 60, 'Tabaxi tend toward chaotic alignments, as they let impulse and fancy guide their decisions. They are rarely evil, with most of them driven by curiosity rather than greed or other dark impulses.', FALSE),
('Tiefling', 'PHB', 42, 'M', 30, NULL, NULL, 'Tieflings mature at the same rate as humans but live a few years longer.', 60, 'Tieflings might not have an innate tendency toward evil, but many of them end up there. Evil or not, an independent nature, inclines many tieflings toward a chaotic alignment.', FALSE),
('Tortle', 'TTP', 3, 'M', 30, NULL, NULL, 'Young tortles crawl for a few weeks after birth before learning to walk on two legs. They reach adulthood by the age of 15 and live an average of 50 years.', NULL, 'Tortles tend to lead orderly, ritualistic lives. They develop customs and routines, becoming more set in their ways as they age. Most are lawful good. A few can be selfish and greedy, tending more toward evil, but it''s unusual for a tortle to shuck off order in favor of chaos.', FALSE),
('Triton', 'VGM', 115, 'M', 30, NULL, 30, 'Tritons reach maturity around age 15 and can live up to 200 years.', NULL, 'Tritons tend toward lawful good. As guardians of the darkest reaches of the sea, their culture pushes them toward order and benevolence.', NULL),
('Troglodyte', 'DMG', 282, 'M', 30, NULL, NULL, NULL, 60, NULL, TRUE),
('Vampire (Ixalan)', 'PSX', 14, 'M', 30, NULL, NULL, 'Vampires don''t mature and age in the same way that other races do.', 60, 'Vampires might not have an innate tendency toward evil, but many of them end up there. Evil or not, their strict hierarchies incline them toward a lawful alignment.', FALSE),
('Vampire (Zendikar)', 'PSZ', 14, 'M', 30, NULL, NULL, 'Vampires don''t mature and age in the same way that other races do. Every living vampire is either a bloodchief, infected by Ulamog''s influence in the distant reaches of history, or was spawned by a bloodchief from a living human. Most vampires are thus very old, but few have any memory of their earliest years.', 60, 'Vampires have no innate tendency toward evil, but consuming the life energy of other creatures often pushes them to that end. Regardless of their moral bent, the strict hierarchies of their bloodchiefs inclines them toward a lawful alignment.', FALSE),
('Vedalken', 'PSK', 23, 'M', 30, NULL, NULL, 'Vedalken mature at the same rate humans do, and most are expected to settle down into an adult life by around age 40. They can live 350 to almost 500 years.', NULL, 'Vedalken are most often lawful and rarely evil.', FALSE),
('Warforged', 'UAEberron', 3, 'M', 30, NULL, NULL, NULL, NULL, NULL, FALSE),
('Yuan-ti Pureblood', 'VGM', 120, 'M', 30, NULL, NULL, 'Purebloods mature at the same rate as humans and have lifespans similar in length to theirs.', 60, 'Purebloods are devoid of emotion and see others as tools to manipulate. They care little for law or chaos and are typically neutral evil.', FALSE),
('Zombie', 'DMG', 282, 'M', 30, NULL, NULL, NULL, 60, NULL, TRUE);

CREATE TABLE subrace (name text,
                      parent text REFERENCES race (name),
                      source varchar(22) REFERENCES book (abbreviation),
                      page smallint,
                      size char(1),
                      speed smallint,
                      flySpeed smallint,
                      swimSpeed smallint,
                      age text,
                      darkvision smallint,
                      alignment text,
                      npc boolean,
                      PRIMARY KEY (name, parent));

INSERT INTO subrace VALUES
('Air', 'Genasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Earth', 'Genasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Fire', 'Genasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, NULL, NULL),
('Water', 'Genasi', NULL, NULL, NULL, 30, NULL, 30, NULL, NULL, NULL, NULL),
('Drow', 'Elf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, NULL),
('Eladrin', 'Elf', 'DMG', 286, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('High', 'Elf', NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL),
('Wood', 'Elf', NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, NULL),
('Eladrin; UA',  'Elf', 'UAEladrinAndGith', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Avariel', 'Elf', 'UAElfSubraces', NULL, NULL, 30, 30, NULL, NULL, NULL, NULL, NULL),
('Grugach', 'Elf', 'UAElfSubraces', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Sea', 'Elf', 'UAElfSubraces', NULL, NULL, 30, NULL, 30, NULL, NULL, NULL, NULL),
('Shadar-kai', 'Elf', 'UAElfSubraces', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Joraga Nation', 'Elf (Zendikar)', NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, NULL),
('Mul Daya Nation', 'Elf (Zendikar)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, NULL),
('Tajuru Nation', 'Elf (Zendikar)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Bishatar and Tirahar', 'Elf (Kaladesh)', NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, NULL),
('Vadahar', 'Elf (Kaladesh)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Deep/Svirfneblin', 'Gnome', 'EEPC', 5,  NULL, NULL, NULL, NULL, 'Deep gnomes are short-lived for gnomes. They mature at the same rate humans do and are considered full-grown adults by 25. They live 200 to 250 years, although hard toil and the dangers of the Underdark often claim them before their time.', 120, 'Svirfneblin believe that survival depends on avoiding entanglements with other creatures and not making enemies, so they favor neutral alignments. They rarely wish others ill, and they are unlikely to take risks on behalf of others.', NULL),
('Forest', 'Gnome', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Rock', 'Gnome', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Wood Elf Descent', 'Half-Elf', 'SCAG', 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Moon Elf or Sun Elf Descent', 'Half-Elf', 'SCAG', 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Drow Descent', 'Half-Elf', 'SCAG', 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Aquatic Elf Descent', 'Half-Elf', 'SCAG', 116, NULL, 30, NULL, 30, NULL, NULL, NULL, NULL),
('Hill', 'Dwarf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Mountain', 'Dwarf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Duergar', 'Dwarf', 'SCAG', NULL, NULL, NULL, NULL, NULL, NULL, 120, NULL, NULL),
('Variant', 'Human', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Lightfoot', 'Halfling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Stout', 'Halfling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Ghostwise', 'Halfling', 'SCAG', 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Razorclaw', 'Shifter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Wildhunt', 'Shifter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Beasthide', 'Shifter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Cliffwalk', 'Shifter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Longstride', 'Shifter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Longtooth', 'Shifter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Variant', 'Tiefling', 'SCAG', 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Abyssal', 'Tiefling', 'UAThatOldBlackMagic', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Asmodeus', 'Tiefling', 'UAFiendishOptions', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Baalzebul', 'Tiefling', 'UAFiendishOptions', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Dispater', 'Tiefling', 'UAFiendishOptions', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Fierna', 'Tiefling', 'UAFiendishOptions', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Glasya', 'Tiefling', 'UAFiendishOptions', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Levistus', 'Tiefling', 'UAFiendishOptions', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Mammon', 'Tiefling', 'UAFiendishOptions', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Mephistopheles', 'Tiefling', 'UAFiendishOptions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Zariel', 'Tiefling', 'UAFiendishOptions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Fallen', 'Aasimar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Protector', 'Aasimar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Scourge', 'Aasimar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Cosi Creed', 'Merfolk (Zendikar)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Emeria Creed', 'Merfolk (Zendikar)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Ula Creed', 'Merfolk (Zendikar)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Grogtag Tribe', 'Goblin (Zendikar)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Lavastep Tribe', 'Goblin (Zendikar)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Tuktuk Tribe', 'Goblin (Zendikar)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Gavony', 'Human (Innistrad)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Kessig', 'Human (Innistrad)', NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL),
('Nephalia', 'Human (Innistrad)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Stensia', 'Human (Innistrad)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Ibis-Headed', 'Aven', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Hawk-Headed', 'Aven', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Githyanki', 'Gith', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Githyanki tend toward lawful evil.  They are self-centered, violent, and arrogant, yet they remain the faithful servants of their lich-queen, Vlaakith. Renegade githyanki tend toward chaos as they have forsaken her will.', NULL),
('Githzerai', 'Gith', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Githzerai tend toward lawful neutral. Their rigorous training in psychic abilities requires an implacable mental discipline.', NULL),
('Green', 'Merfolk (Ixalan)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Blue', 'Merfolk (Ixalan)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


CREATE TABLE racialBonus (stat char(3) REFERENCES ability (abbreviation),
                          amount smallint,
                          race text REFERENCES race (name),
                          PRIMARY KEY (stat, race));

INSERT INTO racialBonus VALUES
('Dex', 2, 'Aarakocra'),
('Wis', 1, 'Aarakocra'),

('Cha', 2, 'Aasimar'),

('Wis', 1, 'Aasimar (DMG)'),
('Cha', 2, 'Aasimar (DMG)'),

('Cha', 2, 'Aetherborn'),
('Cho', 2, 'Aetherborn'),

('Dex', 2, 'Aven'),

('Str', 2, 'Bugbear'),
('Dex', 1, 'Bugbear'),

('Int', -2, 'Bullywug'),
('Cha', -2, 'Bullywug'),

('Dex', 1, 'Changeling'),
('Cha', 1, 'Changeling'),

('Str', 2, 'Dragonborn'),
('Cha', 1, 'Dragonborn'),

('Con', 2, 'Dwarf'),

('Con', 2, 'Dwarf (Kaladesh)'),
('Wis', 1, 'Dwarf (Kaladesh)'),

('Dex', 2, 'Elf'),

('Dex', 2, 'Elf (Kaladesh)'),
('Wis', 1, 'Elf (Kaladesh)'),

('Wis', 2, 'Elf (Zendikar)'),

('Wis', 2, 'Firbolg'),
('Str', 1, 'Firbolg'),

('Con', 2, 'Genasi'),

('Int', 2, 'Gith'),

('Str', 2, 'Gnoll'),
('Int', -2, 'Gnoll'),

('Int', 2, 'Gnome'),

('Dex', 2, 'Goblin'),
('Con', 1, 'Goblin'),

('Dex', 2, 'Goblin (Ixalan)'),

('Con', 2, 'Goblin (Zendikar)'),

('Str', 2, 'Goliath'),
('Con', 1, 'Goliath'),

('Str', 2, 'Grimlock'),
('Cha', -2, 'Grimlock'),

('Dex', 2, 'Grung'),
('Con', 1, 'Grung'),

('Dex', 2, 'Halfling'),

('Cha', 2, 'Half-Elf'),
('Cho', 2, 'Half-Elf'),

('Str', 2, 'Half-Orc'),
('Con', 1, 'Half-Orc'),

('Cho', 2, 'Human (Amonkhet)'),

('Str', 1, 'Human (Ixalan)'),
('Con', 1, 'Human (Ixalan)'),
('Dex', 1, 'Human (Ixalan)'),
('Int', 1, 'Human (Ixalan)'),
('Wis', 1, 'Human (Ixalan)'),
('Cha', 1, 'Human (Ixalan)'),

('Con', 2, 'Hobgoblin (VGM)'),
('Int', 1, 'Hobgoblin (VGM)'),

('Dex', 2, 'Kenku'),
('Wis', 1, 'Kenku'),

('Dex', 2, 'Khenra'),
('Str', 1, 'Khenra'),

('Dex', 2, 'Kobold'),
('Str', -2, 'Kobold'),

('Dex', 2, 'Kor'),
('Wis', 1, 'Kor'),

('Con', 2, 'Lizardfolk'),
('Wis', 1, 'Lizardfolk'),

('Cha', 1, 'Merfolk (Ixalan)'),

('Cha', 1, 'Merfolk (Zendikar)'),

('Str', 2, 'Minotaur (Amonkhet)'),

('Str', 1, 'Minotaur (Krynn)'),
('Cho', 1, 'Minotaur (Krynn)'),

('Con', 2, 'Naga'),
('Int', 1, 'Naga'),

('Str', 2, 'Orc'),
('Con', 1, 'Orc'),
('Int', -2, 'Orc'),

('Str', 2, 'Orc (Ixalan)'),
('Con', 1, 'Orc (Ixalan)'),

('Con', 1, 'Revenant'),

('Dex', 1, 'Shifter'),

('Cha', 2, 'Siren'),

('Dex', 2, 'Skeleton'),
('Int', -4, 'Skeleton'),
('Cha', -4, 'Skeleton'),

('Dex', 2, 'Tabaxi'),
('Cha', 1, 'Tabaxi'),

('Str', 2, 'Tortle'),
('Wis', 1, 'Tortle'),

('Str', 1, 'Triton'),
('Cha', 1, 'Triton'),
('Con', 1, 'Triton'),

('Str', 2, 'Troglodyte'),
('Con', 2, 'Troglodyte'),
('Int', -4, 'Troglodyte'),
('Cha', -4, 'Troglodyte'),

('Cha', 2, 'Vampire (Ixalan)'),
('Wis', 1, 'Vampire (Ixalan)'),

('Int', 1, 'Vampire (Zendikar)'),
('Cha', 2, 'Vampire (Zendikar)'),

('Int', 2, 'Vedalken'),
('Wis', 1, 'Vedalken'),

('Str', 1, 'Warforged'),
('Con', 1, 'Warforged'),

('Cha', 2, 'Yuan-ti Pureblood'),
('Int', 1, 'Yuan-ti Pureblood'),

('Str', 1, 'Zombie'),
('Con', 2, 'Zombie'),
('Int', -6, 'Zombie'),
('Wis', -4, 'Zombie'),
('Cha', -4, 'Zombie');

CREATE TABLE racialBonusChoices (stats char(3) ARRAY[],
                                 amount smallint,
                                 count smallint,
                                 race text PRIMARY KEY REFERENCES race (name));

CREATE TABLE subracialBonus (stat char(3) REFERENCES ability (abbreviation),
                             amount smallint,
                             race text REFERENCES race (name),
                             subrace text,
                             PRIMARY KEY (stat, subrace),
                             FOREIGN KEY (race, subrace) REFERENCES subrace (name, parent));
