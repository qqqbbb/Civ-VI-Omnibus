--Create new Civics
INSERT INTO Types (Type, Kind)
	VALUES
		("CIVIC_TRIBAL_COUNCIL", "KIND_CIVIC"),
		("CIVIC_MYTHOLOGIES", "KIND_CIVIC"),
		("CIVIC_WARRIOR_CODE", "KIND_CIVIC"),
		("CIVIC_POLYTHEISM", "KIND_CIVIC"),
		("CIVIC_MUSIC", "KIND_CIVIC"),
		("CIVIC_JURISPRUDENCE", "KIND_CIVIC"),
		("CIVIC_ORGANIZED_RELIGION", "KIND_CIVIC"),
		("CIVIC_BUREAUCRACY", "KIND_CIVIC"),
		("CIVIC_LOGISTICS", "KIND_CIVIC"),
		("CIVIC_PATRONAGE", "KIND_CIVIC"),
		("CIVIC_AESTHETICS", "KIND_CIVIC"),
		("CIVIC_PERSPECTIVE", "KIND_CIVIC"),
		("CIVIC_LEVEE_EN_MASSE", "KIND_CIVIC"),
		("CIVIC_MARXISM", "KIND_CIVIC"),
		("CIVIC_SOCIAL_REVOLUTION", "KIND_CIVIC"),
		("CIVIC_VIRTUAL_REALITY", "KIND_CIVIC"),
		("CIVIC_ASYMMETRICAL_WARFARE", "KIND_CIVIC"),
		("CIVIC_UTOPIA", "KIND_CIVIC");

INSERT INTO Civics (CivicType, Name, Description, Cost, UITreeRow, EraType, AdvisorType, BarbarianFree, Repeatable)
	VALUES
		--ANCIENT ERA
		--Column 2 -- cost 40 with boosts
		("CIVIC_TRIBAL_COUNCIL", "LOC_CIVIC_TRIBAL_COUNCIL_NAME", NULL, 36, 0, "ERA_ANCIENT", "ADVISOR_GENERIC", 0, 0),
		("CIVIC_MYTHOLOGIES", "LOC_CIVIC_MYTHOLOGIES_NAME", NULL, 36, 2, "ERA_ANCIENT", "ADVISOR_RELIGIOUS", 0, 0),
		--Column 3 -- cost 50 with boosts
		("CIVIC_WARRIOR_CODE", "LOC_CIVIC_WARRIOR_CODE_NAME", NULL, 43, -3, "ERA_ANCIENT", "ADVISOR_CONQUEST", 0, 0),
		("CIVIC_POLYTHEISM", "LOC_CIVIC_POLYTHEISM_NAME", NULL, 43, 2, "ERA_ANCIENT", "ADVISOR_RELIGIOUS", 0, 0),
		
		--CLASSICAL ERA
		--Column 1 -- cost 90 with boosts
		("CIVIC_MUSIC", "LOC_CIVIC_MUSIC_NAME", NULL, 87, 1, "ERA_CLASSICAL", "ADVISOR_CULTURE", 0, 0),
		--Column 3 -- cost 160 with boosts
		("CIVIC_JURISPRUDENCE", "LOC_CIVIC_JURISPRUDENCE_NAME", NULL, 136, 0, "ERA_CLASSICAL", "ADVISOR_GENERIC", 0, 0),
		("CIVIC_ORGANIZED_RELIGION", "LOC_CIVIC_ORGANIZED_RELIGION_NAME", NULL, 136, 2, "ERA_CLASSICAL", "ADVISOR_RELIGIOUS", 0, 0),
		
		--MEDIEVAL ERA
		--Column 1 -- cost 240 with boosts
		("CIVIC_BUREAUCRACY", "LOC_CIVIC_BUREAUCRACY_NAME", NULL, 204, 0, "ERA_MEDIEVAL", "ADVISOR_GENERIC", 0, 0),
		--Column 3 -- cost 280 with boosts
		("CIVIC_LOGISTICS", "LOC_CIVIC_LOGISTICS_NAME", NULL, 238, -2, "ERA_MEDIEVAL", "ADVISOR_CONQUEST", 0, 0),
		
		--RENAISSANCE ERA
		--Column 2 -- cost 480 with boosts
		("CIVIC_PATRONAGE", "LOC_CIVIC_PATRONAGE_NAME", NULL, 408, 1, "ERA_RENAISSANCE", "ADVISOR_CULTURE", 0, 0),
		--Column 3 cost 480/530 with boosts
		("CIVIC_AESTHETICS", "LOC_CIVIC_AESTHETICS_NAME", NULL, 451, 1, "ERA_RENAISSANCE", "ADVISOR_CULTURE", 0, 0),
		("CIVIC_PERSPECTIVE", "LOC_CIVIC_PERSPECTIVE_NAME", NULL, 408, 2, "ERA_RENAISSANCE", "ADVISOR_CULTURE", 0, 0),
		
		--INDUSTRIAL ERA
		--Column 2 -- cost 800 with boosts
		("CIVIC_LEVEE_EN_MASSE", "LOC_CIVIC_LEVEE_EN_MASSE_NAME", NULL, 680, 0, "ERA_INDUSTRIAL", "ADVISOR_CONQUEST", 0, 0),
		--Column 3 -- cost 800 with boosts
		("CIVIC_MARXISM", "LOC_CIVIC_MARXISM_NAME", NULL, 680, 1, "ERA_INDUSTRIAL", "ADVISOR_GENERIC", 0, 0),
		
		--MODERN ERA
		--Column 3 -- cost 1100 with boosts
		("CIVIC_SOCIAL_REVOLUTION", "LOC_CIVIC_SOCIAL_REVOLUTION_NAME", NULL, 935, -1, "ERA_MODERN", "ADVISOR_CULTURE", 0,0),
		
		--INFORMATION ERA
		--Column 1 -- cost 2050 with boosts
		("CIVIC_VIRTUAL_REALITY", "LOC_CIVIC_VIRTUAL_REALITY_NAME", NULL, 2050, -1, "ERA_INFORMATION", "ADVISOR_GENERIC", 0, 0),
		("CIVIC_ASYMMETRICAL_WARFARE", "LOC_CIVIC_ASYMMETRICAL_WARFARE_NAME", NULL, 2050, 1, "ERA_INFORMATION", "ADVISOR_GENERIC", 0, 0),
		--Column 2
		("CIVIC_UTOPIA", "LOC_CIVIC_UTOPIA_NAME", NULL, 2400, 0, "ERA_INFORMATION", "ADVISOR_GENERIC", 0, 1);

--Update existing Civics
--ANCIENT ERA
--Column 1
UPDATE Civics
	SET Cost = 20, UITreeRow = 0
	WHERE CivicType = "CIVIC_CODE_OF_LAWS";
--Column 2
UPDATE Civics
	SET Cost = 40, UITreeRow = -2
	WHERE CivicType = "CIVIC_CRAFTSMANSHIP";

UPDATE Civics
	SET Cost = 40, UITreeRow = 1
	WHERE CivicType = "CIVIC_FOREIGN_TRADE";	
--Column 3
UPDATE Civics
	SET Cost = 70, UITreeRow = -2
	WHERE CivicType = "CIVIC_STATE_WORKFORCE";

UPDATE Civics
	SET Cost = 70, UITreeRow = 0
	WHERE CivicType = "CIVIC_EARLY_EMPIRE";		
		
--CLASSICAL ERA
--Column 1
UPDATE Civics
	SET Cost = 100, UITreeRow = -3
	WHERE CivicType = "CIVIC_MILITARY_TRAINING";

UPDATE Civics
	SET Cost = 100, UITreeRow = -2
	WHERE CivicType = "CIVIC_GAMES_RECREATION";

UPDATE Civics
	SET Cost = 110, UITreeRow = -1, EraType = "ERA_CLASSICAL"
	WHERE CivicType = "CIVIC_POLITICAL_PHILOSOPHY";

UPDATE Civics --cost 90 with boosts
	SET Cost = 77, UITreeRow = 2, EraType = "ERA_CLASSICAL"
	WHERE CivicType = "CIVIC_MYSTICISM";
--Column 2
UPDATE Civics
	SET Cost = 130, UITreeRow = -2, EraType = "ERA_CLASSICAL"
	WHERE CivicType = "CIVIC_MILITARY_TRADITION";

UPDATE Civics
	SET Cost = 130, UITreeRow = 0, EraType = "ERA_CLASSICAL"
	WHERE CivicType = "CIVIC_RECORDED_HISTORY";	
	
UPDATE Civics
	SET Cost = 130, UITreeRow = 1
	WHERE CivicType = "CIVIC_DRAMA_POETRY";		
--Column 3
UPDATE Civics
	SET Cost = 160, UITreeRow = -2
	WHERE CivicType = "CIVIC_DEFENSIVE_TACTICS";
		
--MEDIEVAL ERA
--Column 1
UPDATE Civics
	SET Cost = 220, UITreeRow = -2
	WHERE CivicType = "CIVIC_MERCENARIES";	
	
UPDATE Civics
	SET Cost = 240, UITreeRow = -1
	WHERE CivicType = "CIVIC_FEUDALISM";	

UPDATE Civics --cost 240 with boosts
	SET Cost = 204, UITreeRow = 2, EraType = "ERA_MEDIEVAL"
	WHERE CivicType = "CIVIC_THEOLOGY";		
--Column 2
UPDATE Civics
	SET Cost = 240, UITreeRow = -2
	WHERE CivicType = "CIVIC_NAVAL_TRADITION";	

UPDATE Civics
	SET Cost = 280, UITreeRow = -1
	WHERE CivicType = "CIVIC_CIVIL_SERVICE";	

UPDATE Civics
	SET Cost = 280, UITreeRow = 0
	WHERE CivicType = "CIVIC_MEDIEVAL_FAIRES";	

UPDATE Civics
	SET Cost = 240, UITreeRow = 2
	WHERE CivicType = "CIVIC_DIVINE_RIGHT";		
--Column 3
UPDATE Civics
	SET Cost = 360, UITreeRow = 0
	WHERE CivicType = "CIVIC_GUILDS";					
		
--RENAISSANCE ERA
--Column 1
UPDATE Civics
	SET Cost = 440, UITreeRow = -2
	WHERE CivicType = "CIVIC_EXPLORATION";	

UPDATE Civics
	SET Cost = 480, UITreeRow = -1
	WHERE CivicType = "CIVIC_DIPLOMATIC_SERVICE";	

UPDATE Civics
	SET Cost = 480, UITreeRow = 1
	WHERE CivicType = "CIVIC_HUMANISM";	

UPDATE Civics
	SET Cost = 440, UITreeRow = 2
	WHERE CivicType = "CIVIC_REFORMED_CHURCH";		
--Column 2
UPDATE Civics
	SET Cost = 480, UITreeRow = -1
	WHERE CivicType = "CIVIC_MERCANTILISM";	
--Column 3
UPDATE Civics
	SET Cost = 520, UITreeRow = -1
	WHERE CivicType = "CIVIC_THE_ENLIGHTENMENT";	
	
--INDUSTRIAL ERA	
--Column 1
UPDATE Civics
	SET Cost = 700, UITreeRow = -2
	WHERE CivicType = "CIVIC_COLONIALISM";	

UPDATE Civics
	SET Cost = 700, UITreeRow = -1
	WHERE CivicType = "CIVIC_NATIONALISM";	

UPDATE Civics
	SET Cost = 800, UITreeRow = 0
	WHERE CivicType = "CIVIC_URBANIZATION";	

UPDATE Civics
	SET Cost = 700, UITreeRow = 1
	WHERE CivicType = "CIVIC_CIVIL_ENGINEERING";					
--Column 2
UPDATE Civics
	SET Cost = 700, UITreeRow = 2
	WHERE CivicType = "CIVIC_OPERA_BALLET";	

UPDATE Civics
	SET Cost = 700, UITreeRow = -2
	WHERE CivicType = "CIVIC_NATURAL_HISTORY";	

UPDATE Civics --cost 700 with boosts
	SET Cost = 595, UITreeRow = -1
	WHERE CivicType = "CIVIC_SCORCHED_EARTH";	
--Column 3
UPDATE Civics
	SET Cost = 900, UITreeRow = 0, EraType = "ERA_INDUSTRIAL"
	WHERE CivicType = "CIVIC_IDEOLOGY";	
	
--MODERN ERA
--Column 1
UPDATE Civics
	SET Cost = 900, UITreeRow = -2
	WHERE CivicType = "CIVIC_CONSERVATION";	

UPDATE Civics
	SET Cost = 900, UITreeRow = 0
	WHERE CivicType = "CIVIC_MASS_MEDIA";	
	
UPDATE Civics
	SET Cost = 800, UITreeRow = 1
	WHERE CivicType = "CIVIC_CAPITALISM";	
--Column 2
UPDATE Civics
	SET Cost = 1050, UITreeRow = -1
	WHERE CivicType = "CIVIC_SUFFRAGE";	

UPDATE Civics
	SET Cost = 1050, UITreeRow = 0
	WHERE CivicType = "CIVIC_CLASS_STRUGGLE";	

UPDATE Civics
	SET Cost = 1050, UITreeRow = 1
	WHERE CivicType = "CIVIC_TOTALITARIANISM";		
--Column 3
UPDATE Civics
	SET Cost = 1100, UITreeRow = 0
	WHERE CivicType = "CIVIC_NUCLEAR_PROGRAM";	

UPDATE Civics
	SET Cost = 1100, UITreeRow = 1
	WHERE CivicType = "CIVIC_MOBILIZATION";				
		
--ATOMIC ERA
--Column 1
UPDATE Civics
	SET Cost = 1200, UITreeRow = -1
	WHERE CivicType = "CIVIC_CULTURAL_HERITAGE";	

UPDATE Civics
	SET Cost = 1200, UITreeRow = 0
	WHERE CivicType = "CIVIC_PROFESSIONAL_SPORTS";	

UPDATE Civics
	SET Cost = 1200, UITreeRow = 1
	WHERE CivicType = "CIVIC_COLD_WAR";		
--Column 2
UPDATE Civics
	SET Cost = 1300, UITreeRow = 2
	WHERE CivicType = "CIVIC_RAPID_DEPLOYMENT";	

UPDATE Civics
	SET Cost = 1300, UITreeRow = 1
	WHERE CivicType = "CIVIC_SPACE_RACE";		
--Column 3
UPDATE Civics
	SET Cost = 1500, UITreeRow = 1, Repeatable = 0, EraType = "ERA_ATOMIC"
	WHERE CivicType = "CIVIC_GLOBALIZATION";	

UPDATE Civics
	SET Cost = 1500, UITreeRow = -1, Repeatable = 0, EraType = "ERA_ATOMIC"
	WHERE CivicType = "CIVIC_SOCIAL_MEDIA";			
		

--Civic Prereqs
DELETE FROM CivicPrereqs;
INSERT INTO CivicPrereqs (Civic, PrereqCivic)
	VALUES
		--ANCIENT ERA
		("CIVIC_CRAFTSMANSHIP", "CIVIC_CODE_OF_LAWS"),
		("CIVIC_TRIBAL_COUNCIL", "CIVIC_CODE_OF_LAWS"),
		("CIVIC_FOREIGN_TRADE", "CIVIC_CODE_OF_LAWS"),
		("CIVIC_MYTHOLOGIES", "CIVIC_CODE_OF_LAWS"),
		("CIVIC_WARRIOR_CODE", "CIVIC_CRAFTSMANSHIP"),
		("CIVIC_STATE_WORKFORCE", "CIVIC_CRAFTSMANSHIP"),
		("CIVIC_EARLY_EMPIRE", "CIVIC_TRIBAL_COUNCIL"),
		("CIVIC_EARLY_EMPIRE", "CIVIC_FOREIGN_TRADE"),
		("CIVIC_POLYTHEISM", "CIVIC_MYTHOLOGIES"),
		
		--CLASSICAL ERA
		("CIVIC_MILITARY_TRAINING", "CIVIC_WARRIOR_CODE"),
		("CIVIC_MILITARY_TRAINING", "CIVIC_STATE_WORKFORCE"),
		("CIVIC_GAMES_RECREATION", "CIVIC_WARRIOR_CODE"),
		("CIVIC_GAMES_RECREATION", "CIVIC_STATE_WORKFORCE"),
		("CIVIC_POLITICAL_PHILOSOPHY", "CIVIC_EARLY_EMPIRE"),
		("CIVIC_MUSIC", "CIVIC_EARLY_EMPIRE"),
		("CIVIC_MUSIC", "CIVIC_POLYTHEISM"),
		("CIVIC_MYSTICISM", "CIVIC_POLYTHEISM"),
		("CIVIC_MILITARY_TRADITION", "CIVIC_MILITARY_TRAINING"),
		("CIVIC_MILITARY_TRADITION", "CIVIC_GAMES_RECREATION"),
		("CIVIC_MILITARY_TRADITION", "CIVIC_POLITICAL_PHILOSOPHY"),
		("CIVIC_RECORDED_HISTORY", "CIVIC_POLITICAL_PHILOSOPHY"),
		("CIVIC_DRAMA_POETRY", "CIVIC_MUSIC"),
		("CIVIC_DRAMA_POETRY", "CIVIC_MYSTICISM"),
		("CIVIC_DEFENSIVE_TACTICS", "CIVIC_MILITARY_TRADITION"),
		("CIVIC_JURISPRUDENCE", "CIVIC_RECORDED_HISTORY"),
		("CIVIC_JURISPRUDENCE", "CIVIC_DRAMA_POETRY"),
		("CIVIC_ORGANIZED_RELIGION", "CIVIC_MYSTICISM"),
		
		--MEDIEVAL ERA
		("CIVIC_MERCENARIES", "CIVIC_DEFENSIVE_TACTICS"),
		("CIVIC_FEUDALISM", "CIVIC_DEFENSIVE_TACTICS"),
		("CIVIC_FEUDALISM", "CIVIC_JURISPRUDENCE"),
		("CIVIC_BUREAUCRACY", "CIVIC_JURISPRUDENCE"),
		("CIVIC_THEOLOGY", "CIVIC_ORGANIZED_RELIGION"),
		("CIVIC_THEOLOGY", "CIVIC_JURISPRUDENCE"),
		("CIVIC_NAVAL_TRADITION", "CIVIC_MERCENARIES"),
		("CIVIC_CIVIL_SERVICE", "CIVIC_FEUDALISM"),
		("CIVIC_CIVIL_SERVICE", "CIVIC_BUREAUCRACY"),
		("CIVIC_MEDIEVAL_FAIRES", "CIVIC_BUREAUCRACY"),
		("CIVIC_DIVINE_RIGHT", "CIVIC_BUREAUCRACY"),
		("CIVIC_DIVINE_RIGHT", "CIVIC_THEOLOGY"),
		("CIVIC_LOGISTICS", "CIVIC_NAVAL_TRADITION"),
		("CIVIC_LOGISTICS", "CIVIC_CIVIL_SERVICE"),
		("CIVIC_GUILDS", "CIVIC_CIVIL_SERVICE"),
		("CIVIC_GUILDS", "CIVIC_MEDIEVAL_FAIRES"),
		
		--RENAISSANCE ERA
		("CIVIC_EXPLORATION", "CIVIC_LOGISTICS"),
		("CIVIC_DIPLOMATIC_SERVICE", "CIVIC_LOGISTICS"),
		("CIVIC_DIPLOMATIC_SERVICE", "CIVIC_GUILDS"),
		("CIVIC_HUMANISM", "CIVIC_GUILDS"),
		("CIVIC_HUMANISM", "CIVIC_DIVINE_RIGHT"),
		("CIVIC_REFORMED_CHURCH", "CIVIC_DIVINE_RIGHT"),
		("CIVIC_MERCANTILISM", "CIVIC_EXPLORATION"),
		("CIVIC_MERCANTILISM", "CIVIC_DIPLOMATIC_SERVICE"),
		("CIVIC_PATRONAGE", "CIVIC_HUMANISM"),
		("CIVIC_PATRONAGE", "CIVIC_REFORMED_CHURCH"),
		("CIVIC_THE_ENLIGHTENMENT", "CIVIC_MERCANTILISM"),
		("CIVIC_THE_ENLIGHTENMENT", "CIVIC_PATRONAGE"),
		("CIVIC_AESTHETICS", "CIVIC_PATRONAGE"),
		("CIVIC_PERSPECTIVE", "CIVIC_PATRONAGE"),
		
		--INDUSTRIAL ERA
		("CIVIC_COLONIALISM", "CIVIC_THE_ENLIGHTENMENT"),
		("CIVIC_NATIONALISM", "CIVIC_THE_ENLIGHTENMENT"),
		("CIVIC_URBANIZATION", "CIVIC_THE_ENLIGHTENMENT"),
		("CIVIC_CIVIL_ENGINEERING", "CIVIC_THE_ENLIGHTENMENT"),
		("CIVIC_CIVIL_ENGINEERING", "CIVIC_AESTHETICS"),
		("CIVIC_LEVEE_EN_MASSE", "CIVIC_NATIONALISM"),
		("CIVIC_LEVEE_EN_MASSE", "CIVIC_URBANIZATION"),
		("CIVIC_OPERA_BALLET", "CIVIC_AESTHETICS"),
		("CIVIC_OPERA_BALLET", "CIVIC_PERSPECTIVE"),
		("CIVIC_NATURAL_HISTORY", "CIVIC_COLONIALISM"),
		("CIVIC_SCORCHED_EARTH", "CIVIC_COLONIALISM"),
		("CIVIC_SCORCHED_EARTH", "CIVIC_NATIONALISM"),
		("CIVIC_MARXISM", "CIVIC_OPERA_BALLET"),
		("CIVIC_MARXISM", "CIVIC_CIVIL_ENGINEERING"),
		("CIVIC_MARXISM", "CIVIC_URBANIZATION"),
		("CIVIC_IDEOLOGY", "CIVIC_MARXISM"),
		("CIVIC_IDEOLOGY", "CIVIC_SCORCHED_EARTH"),
		("CIVIC_IDEOLOGY", "CIVIC_LEVEE_EN_MASSE"),
		
		--MODERN ERA
		("CIVIC_CAPITALISM", "CIVIC_IDEOLOGY"),
		("CIVIC_CONSERVATION", "CIVIC_NATURAL_HISTORY"),
		("CIVIC_MASS_MEDIA", "CIVIC_IDEOLOGY"),
		("CIVIC_SUFFRAGE", "CIVIC_CONSERVATION"),
		("CIVIC_SUFFRAGE", "CIVIC_MASS_MEDIA"),
		("CIVIC_CLASS_STRUGGLE", "CIVIC_MASS_MEDIA"),
		("CIVIC_CLASS_STRUGGLE", "CIVIC_CAPITALISM"),
		("CIVIC_TOTALITARIANISM", "CIVIC_MASS_MEDIA"),
		("CIVIC_TOTALITARIANISM", "CIVIC_CAPITALISM"),
		("CIVIC_SOCIAL_REVOLUTION", "CIVIC_SUFFRAGE"),
		("CIVIC_NUCLEAR_PROGRAM", "CIVIC_SUFFRAGE"),
		("CIVIC_NUCLEAR_PROGRAM", "CIVIC_CLASS_STRUGGLE"),
		("CIVIC_MOBILIZATION", "CIVIC_TOTALITARIANISM"),
		
		--ATOMIC ERA
		("CIVIC_CULTURAL_HERITAGE", "CIVIC_SOCIAL_REVOLUTION"),
		("CIVIC_PROFESSIONAL_SPORTS", "CIVIC_SOCIAL_REVOLUTION"),
		("CIVIC_PROFESSIONAL_SPORTS", "CIVIC_NUCLEAR_PROGRAM"),
		("CIVIC_COLD_WAR", "CIVIC_NUCLEAR_PROGRAM"),
		("CIVIC_COLD_WAR", "CIVIC_MOBILIZATION"),
		("CIVIC_RAPID_DEPLOYMENT", "CIVIC_COLD_WAR"),
		("CIVIC_SPACE_RACE", "CIVIC_COLD_WAR"),
		("CIVIC_SOCIAL_MEDIA", "CIVIC_CULTURAL_HERITAGE"),
		("CIVIC_SOCIAL_MEDIA", "CIVIC_PROFESSIONAL_SPORTS"),
		("CIVIC_SOCIAL_MEDIA", "CIVIC_SPACE_RACE"),
		("CIVIC_GLOBALIZATION", "CIVIC_RAPID_DEPLOYMENT"),
		("CIVIC_GLOBALIZATION", "CIVIC_SPACE_RACE"),
		
		--INFORMATION ERA
		("CIVIC_VIRTUAL_REALITY", "CIVIC_GLOBALIZATION"),
		("CIVIC_VIRTUAL_REALITY", "CIVIC_SOCIAL_MEDIA"),
		("CIVIC_ASYMMETRICAL_WARFARE", "CIVIC_GLOBALIZATION"),
		("CIVIC_ASYMMETRICAL_WARFARE", "CIVIC_SOCIAL_MEDIA"),
		("CIVIC_UTOPIA", "CIVIC_VIRTUAL_REALITY"),
		("CIVIC_UTOPIA", "CIVIC_ASYMMETRICAL_WARFARE");

--QUOTES
DELETE FROM CivicQuotes WHERE CivicType = "CIVIC_CODE_OF_LAWS";
INSERT INTO CivicQuotes (CivicType, Quote, QuoteAudio)
	VALUES
		("CIVIC_CODE_OF_LAWS", "LOC_CIVIC_TRIBAL_COUNCIL_QUOTE", NULL),
		("CIVIC_TRIBAL_COUNCIL", "LOC_CIVIC_CODE_OF_LAWS_QUOTE_2", "PLAY_CODE_OF_LAWS_QUOTE_2"),
		("CIVIC_MYTHOLOGIES", "LOC_CIVIC_MYTHOLOGIES_QUOTE", NULL),
		("CIVIC_WARRIOR_CODE", "LOC_CIVIC_WARRIOR_CODE_QUOTE", NULL),
		("CIVIC_POLYTHEISM", "LOC_CIVIC_POLYTHEISM_QUOTE", NULL),
		("CIVIC_MUSIC", "LOC_CIVIC_MUSIC_QUOTE", NULL),
		("CIVIC_JURISPRUDENCE", "LOC_CIVIC_JURISPRUDENCE_QUOTE", NULL),
		("CIVIC_ORGANIZED_RELIGION", "LOC_CIVIC_ORGANIZED_RELIGION_QUOTE", NULL),
		("CIVIC_BUREAUCRACY", "LOC_CIVIC_BUREAUCRACY_QUOTE", NULL),
		("CIVIC_LOGISTICS", "LOC_CIVIC_LOGISTICS_QUOTE", NULL),
		("CIVIC_PATRONAGE", "LOC_CIVIC_PATRONAGE_QUOTE", NULL),
		("CIVIC_AESTHETICS", "LOC_CIVIC_AESTHETICS_QUOTE", NULL),
		("CIVIC_PERSPECTIVE", "LOC_CIVIC_PERSPECTIVE_QUOTE", NULL),
		("CIVIC_LEVEE_EN_MASSE", "LOC_CIVIC_LEVEE_EN_MASSE_QUOTE", NULL),
		("CIVIC_MARXISM", "LOC_CIVIC_MARXISM_QUOTE", NULL),
		("CIVIC_SOCIAL_REVOLUTION", "LOC_CIVIC_SOCIAL_REVOLUTION_QUOTE", NULL),
		("CIVIC_VIRTUAL_REALITY", "LOC_CIVIC_VIRTUAL_REALITY_QUOTE", NULL),
		("CIVIC_ASYMMETRICAL_WARFARE", "LOC_CIVIC_ASYMMETRICAL_WARFARE_QUOTE", NULL),
		("CIVIC_UTOPIA", "LOC_CIVIC_UTOPIA_QUOTE", NULL);
		
--BOOSTS
DELETE FROM Boosts WHERE CivicType = "CIVIC_SCORCHED_EARTH";
		
UPDATE Boosts 
	SET CivicType = "CIVIC_MYTHOLOGIES"
	WHERE CivicType = "CIVIC_MYSTICISM";

UPDATE Boosts 
	SET CivicType = "CIVIC_ORGANIZED_RELIGION"
	WHERE CivicType = "CIVIC_THEOLOGY";
		
/*INSERT INTO Boosts (CivicType, Boost, TriggerDescription, TriggerLongDescription, BoostClass, Unit1Type, Unit2Type, BuildingType, ImprovementType, BoostingTechType, BoostingCivicType, ResourceType, DistrictType, RequiresResource, RequirementSetId, GovernmentSlotType, NumItems)
	VALUES
		--BUGGED ("CIVIC_TRIBAL_COUNCIL", 50, "LOC_BOOST_TRIGGER_TRIBAL_COUNCIL", "LOC_BOOST_TRIGGER_LONGDESC_TRIBAL_COUNCIL", "BOOST_TRIGGER_RESEARCH_TECH", NULL, NULL, NULL, NULL, "TECH_IRRIGATION", NULL, NULL, NULL, 0, NULL, NULL, 0);
		("CIVIC_MYSTICISM", 50, "LOC_BOOST_TRIGGER_MYTHOLOGIES", "LOC_BOOST_TRIGGER_LONGDESC_MYTHOLOGIES", "BOOST_TRIGGER_HAVE_X_DISTRICTS", NULL, NULL, NULL, NULL, NULL, NULL, NULL, "DISTRICT_HOLY_SITE", 0, NULL, NULL, 2),
		("CIVIC_WARRIOR_CODE", 50, "LOC_BOOST_TRIGGER_WARRIOR_CODE", "LOC_BOOST_TRIGGER_LONGDESC_WARRIOR_CODE", "BOOST_TRIGGER_NUM_BARBS_KILLED", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1),
		("CIVIC_POLYTHEISM", 50, "LOC_BOOST_TRIGGER_POLYTHEISM", "LOC_BOOST_TRIGGER_LONGDESC_POLYTHEISM", "BOOST_TRIGGER_NUM_CITIES", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 2),
		("CIVIC_MUSIC", 50, "LOC_BOOST_TRIGGER_MUSIC", "LOC_BOOST_TRIGGER_LONGDESC_MUSIC", "BOOST_TRIGGER_HAVE_X_BUILDINGS", NULL, NULL, "BUILDING_SHRINE", NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 2),
		("CIVIC_JURISPRUDENCE", 50, "LOC_BOOST_TRIGGER_JURISPRUDENCE", "LOC_BOOST_TRIGGER_LONGDESC_JURISPRUDENCE", "BOOST_TRIGGER_HAVE_X_BUILDINGS", NULL, NULL, "BUILDING_MONUMENT", NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 3),
		("CIVIC_THEOLOGY", 50, "LOC_BOOST_TRIGGER_ORGANIZED_RELIGION", "LOC_BOOST_TRIGGER_LONGDESC_ORGANIZED_RELIGION", "BOOST_TRIGGER_OWN_X_UNITS_OF_TYPE", "UNIT_MISSIONARY", NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 2),
		("CIVIC_BUREAUCRACY", 50, "LOC_BOOST_TRIGGER_BUREAUCRACY", "LOC_BOOST_TRIGGER_LONGDESC_BUREAUCRACY", "BOOST_TRIGGER_HAVE_X_BUILDINGS", NULL, NULL, "BUILDING_AGORA", NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 2),
		("CIVIC_LOGISTICS", 50, "LOC_BOOST_TRIGGER_LOGISTICS", "LOC_BOOST_TRIGGER_LONGDESC_LOGISTICS", "BOOST_TRIGGER_RESEARCH_TECH", NULL, NULL, NULL, NULL, "TECH_CASTLES", NULL, NULL, NULL, 0, NULL, NULL, 0),
		("CIVIC_PATRONAGE", 50, "LOC_BOOST_TRIGGER_PATRONAGE", "LOC_BOOST_TRIGGER_LONGDESC_PATRONAGE", "BOOST_TRIGGER_HAVE_X_BUILDINGS", NULL, NULL, "BUILDING_AMPHITHEATER", NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 2),
		("CIVIC_AESTHETICS", 50, "LOC_BOOST_TRIGGER_AESTHETICS", "LOC_BOOST_TRIGGER_LONGDESC_AESTHETICS", "BOOST_TRIGGER_CONSTRUCT_BUILDING", NULL, NULL, "BUILDING_GUILD_HALL", NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0),
		("CIVIC_PERSPECTIVE", 50, "LOC_BOOST_TRIGGER_PERSPECTIVE", "LOC_BOOST_TRIGGER_LONGDESC_PERSPECTIVE", "BOOST_TRIGGER_CONSTRUCT_BUILDING", NULL, NULL, "BUILDING_OBSERVATORY", NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0),
		("CIVIC_SCORCHED_EARTH", 50, "LOC_BOOST_TRIGGER_SCORCHED_EARTH", "LOC_BOOST_TRIGGER_LONGDESC_SCORCHED_EARTH", "BOOST_TRIGGER_PILLAGE", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0),
		("CIVIC_LEVEE_EN_MASSE", 50, "LOC_BOOST_TRIGGER_LEVEE_EN_MASSE", "LOC_BOOST_TRIGGER_LONGDESC_LEVEE_EN_MASSE", "BOOST_TRIGGER_EMPIRE_POPULATION", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 50),
		("CIVIC_MARXISM", 50, "LOC_BOOST_TRIGGER_MARXISM", "LOC_BOOST_TRIGGER_LONGDESC_MARXISM", "BOOST_TRIGGER_CONSTRUCT_BUILDING", NULL, NULL, "BUILDING_OPERA_HOUSE", NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0),
		("CIVIC_SOCIAL_REVOLUTION", 50, "LOC_BOOST_TRIGGER_SOCIAL_REVOLUTION", "LOC_BOOST_TRIGGER_LONGDESC_SOCIAL_REVOLUTION", "BOOST_TRIGGER_HAVE_X_GREAT_PEOPLE", NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 9),
		("CIVIC_VIRTUAL_REALITY", 50, "LOC_BOOST_TRIGGER_VIRTUAL_REALITY", "LOC_BOOST_TRIGGER_LONGDESC_VIRTUAL_REALITY", "BOOST_TRIGGER_RESEARCH_TECH", NULL, NULL, NULL, NULL, "TECH_INTERNET", NULL, NULL, NULL, 0, NULL, NULL, 0),
		("CIVIC_ASYMMETRICAL_WARFARE", 50, "LOC_BOOST_TRIGGER_ASYMMETRICAL_WARFARE", "LOC_BOOST_TRIGGER_LONGDESC_ASYMMETRICAL_WARFARE", "BOOST_TRIGGER_RESEARCH_TECH", NULL, NULL, NULL, NULL, "TECH_GUIDANCE_SYSTEMS", NULL, NULL, NULL, 0, NULL, NULL, 0);*/
		
--Update Diplomatic Action prereqs
UPDATE DiplomaticActions
	SET InitiatorPrereqCivic = "CIVIC_DIVINE_RIGHT"
	WHERE DiplomaticActionType = "DIPLOACTION_DECLARE_HOLY_WAR";

UPDATE DiplomaticActions
	SET InitiatorPrereqCivic = "CIVIC_COLONIALISM"
	WHERE DiplomaticActionType = "DIPLOACTION_DECLARE_COLONIAL_WAR";
	
UPDATE DiplomaticActions
	SET InitiatorPrereqCivic = "CIVIC_BUREAUCRACY", TargetPrereqCivic = "CIVIC_BUREAUCRACY"
	WHERE DiplomaticActionType = "DIPLOACTION_ALLIANCE";
	
UPDATE DiplomaticActions
	SET InitiatorPrereqCivic = "CIVIC_DIPLOMATIC_SERVICE", TargetPrereqCivic = "CIVIC_DIPLOMATIC_SERVICE"
	WHERE DiplomaticActionType = "DIPLOACTION_DEFENSIVE_PACT";
	
UPDATE DiplomaticActions
	SET InitiatorPrereqCivic = "CIVIC_LEVEE_EN_MASSE"
	WHERE DiplomaticActionType = "DIPLOACTION_DECLARE_TERRITORIAL_WAR";

--Update Unit/Building/District prereqs
UPDATE Units
	SET PrereqCivic = "CIVIC_MYSTICISM"
	WHERE UnitType = "UNIT_MISSIONARY";

UPDATE Units
	SET PrereqCivic = "CIVIC_THEOLOGY"
	WHERE UnitType = "UNIT_APOSTLE";

UPDATE Units
	SET PrereqCivic = "CIVIC_DIVINE_RIGHT"
	WHERE UnitType = "UNIT_INQUISITOR";

UPDATE Buildings
	SET PrereqCivic = "CIVIC_POLYTHEISM", PrereqTech = NULL
	WHERE BuildingType = "BUILDING_SHRINE";

UPDATE Buildings
	SET PrereqCivic = "CIVIC_ORGANIZED_RELIGION"
	WHERE BuildingType = "BUILDING_TEMPLE";

UPDATE Buildings
	SET PrereqCivic = "CIVIC_ORGANIZED_RELIGION"
	WHERE BuildingType = "BUILDING_MAHABODHI_TEMPLE";
	
UPDATE Buildings
	SET PrereqCivic = "CIVIC_THEOLOGY"
	WHERE BuildingType = "BUILDING_MONT_ST_MICHEL";
	
UPDATE Buildings
	SET PrereqCivic = "CIVIC_BUREAUCRACY"
	WHERE BuildingType = "BUILDING_CHICHEN_ITZA";
	
UPDATE Buildings
	SET PrereqCivic = "CIVIC_SOCIAL_REVOLUTION"
	WHERE BuildingType = "BUILDING_CRISTO_REDENTOR";
	
UPDATE Districts
	SET PrereqCivic = "CIVIC_MUSIC"
	WHERE DistrictType = "DISTRICT_THEATER";

UPDATE Districts
	SET PrereqCivic = "CIVIC_MUSIC"
	WHERE DistrictType = "DISTRICT_ACROPOLIS";