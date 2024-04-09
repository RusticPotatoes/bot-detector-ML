USE playerdata;

INSERT INTO playerdata.apiPermissions (permission) VALUES
	('request_highscores'),
	('verify_ban'),
	('create_token'),
	('verify_players'),
	('discord_general')
;
INSERT INTO playerdata.apiUser (username,token,last_used,ratelimit,is_active) VALUES
	('example','verify_ban',NULL,-1,1)
;
INSERT INTO playerdata.apiUserPerms (user_id,permission_id) VALUES
	(1,1),
	(1,2)
;

INSERT INTO Labels (id, label) VALUES
	(1, 'Real_Player'),
	(4, 'Wintertodt_bot'),
	(5, 'Mining_bot'),
	(7, 'Hunter_bot'),
	(8, 'Herblore_bot'),
	(9, 'Fletching_bot'),
	(10, 'Fishing_bot'),
	(11, 'Crafting_bot'),
	(12, 'Cooking_bot'),
	(13, 'Woodcutting_bot'),
	(15, 'Smithing_bot'),
	(17, 'Magic_bot'),
	(19, 'PVM_Ranged_Magic_bot'),
	(21, 'Agility_bot'),
	(27, 'Zalcano_bot'),
	(38, 'Runecrafting_bot'),
	(40, 'PVM_Ranged_bot'),
	(41, 'PVM_Melee_bot'),
	(42, 'Thieving_bot'),
	(52, 'LMS_bot'),
	(56, 'Fishing_Cooking_bot'),
	(57, 'mort_myre_fungus_bot'),
	(59, 'temp_real_player'),
	(61, 'Soul_Wars_bot'),
	(64, 'Construction_Magic_bot'),
	(65, 'Vorkath_bot'),
	(66, 'Clue_Scroll_bot'),
	(67, 'Barrows_bot'),
	(76, 'Woodcutting_Mining_bot'),
	(77, 'Woodcutting_Firemaking_bot'),
	(84, 'Mage_Guild_Store_bot'),
	(87, 'Phosani_bot'),
	(89, 'Unknown_bot'),
	(90, 'Blast_mine_bot'),
	(91, 'Zulrah_bot'),
	(92, 'test_label'),
	(109, 'Nex_bot'),
	(110, 'Gauntlet_bot')
;

INSERT INTO Labels(id, label) VALUES
	(0, 'Unknown')
;
UPDATE `Labels` 
	set id=0 
	where label='Unknown'
;

-- Insert data into the Players table
INSERT INTO skills (skill_id, skill_name) VALUES
	(2, 'attack'),
	(3, 'defence'),
	(4, 'strength'),
	(5, 'hitpoints'),
	(6, 'ranged'),
	(7, 'prayer'),
	(8, 'magic'),
	(9, 'cooking'),
	(10, 'woodcutting'),
	(11, 'fletching'),
	(12, 'fishing'),
	(13, 'firemaking'),
	(14, 'crafting'),
	(15, 'smithing'),
	(16, 'mining'),
	(17, 'herblore'),
	(18, 'agility'),
	(19, 'thieving'),
	(20, 'slayer'),
	(21, 'farming'),
	(22, 'runecraft'),
	(23, 'hunter'),
	(24, 'construction')
;


INSERT INTO activities (activity_id, activity_name) VALUES
	(1, 'abyssal_sire'),
	(2, 'alchemical_hydra'),
	(3, 'artio'),
	(4, 'barrows_chests'),
	(5, 'bounty_hunter_hunter'),
	(6, 'bounty_hunter_rogue'),
	(7, 'bryophyta'),
	(8, 'callisto'),
	(9, 'calvarion'),
	(10, 'cerberus'),
	(11, 'chambers_of_xeric'),
	(12, 'chambers_of_xeric_challenge_mode'),
	(13, 'chaos_elemental'),
	(14, 'chaos_fanatic'),
	(15, 'commander_zilyana'),
	(16, 'corporeal_beast'),
	(17, 'crazy_archaeologist'),
	(18, 'cs_all'),
	(19, 'cs_beginner'),
	(20, 'cs_easy'),
	(21, 'cs_elite'),
	(22, 'cs_hard'),
	(23, 'cs_master'),
	(24, 'cs_medium'),
	(25, 'dagannoth_prime'),
	(26, 'dagannoth_rex'),
	(27, 'dagannoth_supreme'),
	(28, 'deranged_archaeologist'),
	(29, 'duke_sucellus'),
	(30, 'general_graardor'),
	(31, 'giant_mole'),
	(32, 'grotesque_guardians'),
	(33, 'hespori'),
	(34, 'kalphite_queen'),
	(35, 'king_black_dragon'),
	(36, 'kraken'),
	(37, 'kreearra'),
	(38, 'kril_tsutsaroth'),
	(39, 'league'),
	(40, 'lms_rank'),
	(41, 'mimic'),
	(42, 'nex'),
	(43, 'nightmare'),
	(44, 'obor'),
	(45, 'phantom_muspah'),
	(46, 'phosanis_nightmare'),
	(47, 'rifts_closed'),
	(48, 'sarachnis'),
	(49, 'scorpia'),
	(50, 'skotizo'),
	(51, 'soul_wars_zeal'),
	(52, 'spindel'),
	(53, 'tempoross'),
	(54, 'the_corrupted_gauntlet'),
	(55, 'the_gauntlet'),
	(56, 'the_leviathan'),
	(57, 'the_whisperer'),
	(58, 'theatre_of_blood'),
	(59, 'theatre_of_blood_hard'),
	(60, 'thermonuclear_smoke_devil'),
	(61, 'tombs_of_amascut'),
	(62, 'tombs_of_amascut_expert'),
	(63, 'tzkal_zuk'),
	(64, 'tztok_jad'),
	(65, 'vardorvis'),
	(66, 'venenatis'),
	(67, 'vetion'),
	(68, 'vorkath'),
	(69, 'wintertodt'),
	(70, 'zalcano'),
	(71, 'zulrah')
;