/*
	Hasupuweteri
	~ Your builders may construct Maloca improvements.

	Authors: lornard
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,						Kind				)
VALUES	('IMPROVEMENT_CSE_MALOCA',	'KIND_IMPROVEMENT'	);

-----------------------------------------------
-- Improvements
-----------------------------------------------

INSERT INTO Improvements	(
		ImprovementType,
		Name,		
		Description,
		TraitType,
		Icon,
		Buildable,
		Housing,
		TilesRequired,
		PlunderType,
		PlunderAmount,
		SameAdjacentValid
		)
VALUES	(
		'IMPROVEMENT_CSE_MALOCA', -- ImprovementType
		'LOC_IMPROVEMENT_CSE_MALOCA_NAME', -- Name		
		'LOC_IMPROVEMENT_CSE_MALOCA_DESCRIPTION', -- Description
		'MINOR_CIV_CSE_HASUPUWETERI_TRAIT', -- TraitType
		'ICON_IMPROVEMENT_CSE_MALOCA', -- Icon
		1, -- Buildable
		1, -- Housing
		1, -- TilesRequired
		'PLUNDER_HEAL', -- PlunderType
		50, -- PlunderAmount
		0 -- SameAdjacentValid
		);

-----------------------------------------------
-- Improvement_ValidBuildUnits
-----------------------------------------------
		
INSERT INTO Improvement_ValidBuildUnits
		(ImprovementType,			UnitType		)
VALUES	('IMPROVEMENT_CSE_MALOCA',	'UNIT_BUILDER'	);

-----------------------------------------------
-- Improvement_ValidFeatures 
-----------------------------------------------
		
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,			TerrainType				)
VALUES	('IMPROVEMENT_CSE_MALOCA',	'FEATURE_JUNGLE'		);

-----------------------------------------------
-- Improvement_YieldChanges
-----------------------------------------------
		
INSERT INTO Improvement_YieldChanges
		(ImprovementType,			YieldType,			YieldChange	)
VALUES	('IMPROVEMENT_CSE_MALOCA',	'YIELD_FOOD',		1			);

-----------------------------------------------
-- Improvement_BonusYieldChanges
-----------------------------------------------

INSERT INTO Improvement_BonusYieldChanges
		(Id,	ImprovementType,			YieldType,			BonusYieldChange,	PrereqTech,					PrereqCivic			)
VALUES	(100,	'IMPROVEMENT_CSE_MALOCA',	'YIELD_FOOD',		1,					NULL,						'CIVIC_FEUDALISM'	);

--Criar os requirements para Guilds
--Criar os requirements para HAS_ANY_IMPROVEMENT

--------------------------------------------------------------
-- Requirements
--------------------------------------------------------------
INSERT INTO Requirements 
		(RequirementId,							RequirementType							)
VALUES 	('REQUIRES_PLAYER_HAS_GUILDS',			'REQUIREMENT_PLAYER_HAS_CIVIC'			),
		('REQUIRES_PLOT_HAS_ANY_IMPROVEMENT',	'REQUIREMENT_PLOT_HAS_ANY_IMPROVEMENT'	);
		
--------------------------------------------------------------
-- RequirementArguments
--------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,							Name,			Type,				Value			)
VALUES 	('REQUIRES_PLAYER_HAS_GUILDS',			'CivicType',	'ARGTYPE_IDENTITY',	'CIVIC_GUILDS'	);

--------------------------------------------------------------
-- RequirementSets
--------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType)
VALUES	('CSE_MALOCA_ADJACENCY_FOOD_REQUIREMENTS',			'REQUIREMENTSET_TEST_ALL'),
		('CSE_MALOCA_ADJACENCY_LATE_FOOD_REQUIREMENTS',		'REQUIREMENTSET_TEST_ALL'),
		('CSE_MALOCA_ADJACENCY_LATE_CULTURE_REQUIREMENTS',	'REQUIREMENTSET_TEST_ALL');
--------------------------------------------------------------

--------------------------------------------------------------
-- RequirementSetRequirements
--------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('CSE_MALOCA_ADJACENCY_FOOD_REQUIREMENTS',			'ADJACENT_TO_OWNER'						),
		('CSE_MALOCA_ADJACENCY_FOOD_REQUIREMENTS',			'REQUIRES_PLOT_HAS_NO_IMPROVEMENT'		),
		('CSE_MALOCA_ADJACENCY_LATE_FOOD_REQUIREMENTS',		'ADJACENT_TO_OWNER'						),
		('CSE_MALOCA_ADJACENCY_LATE_FOOD_REQUIREMENTS',		'REQUIRES_PLOT_HAS_NO_IMPROVEMENT'		),
		('CSE_MALOCA_ADJACENCY_LATE_FOOD_REQUIREMENTS',		'REQUIRES_PLAYER_HAS_GUILDS'			),
		('CSE_MALOCA_ADJACENCY_LATE_CULTURE_REQUIREMENTS',	'ADJACENT_TO_OWNER'						),
		('CSE_MALOCA_ADJACENCY_LATE_CULTURE_REQUIREMENTS',	'REQUIRES_PLOT_HAS_ANY_IMPROVEMENT'	),
		('CSE_MALOCA_ADJACENCY_LATE_CULTURE_REQUIREMENTS',	'REQUIRES_PLAYER_HAS_GUILDS'			);
		
-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,							ModifierType,										SubjectRequirementSetId							)
VALUES	('CSE_HASUPUWETERI_SUZERAIN_MALOCA',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'							),
		('CSE_HASUPUWETERI_MALOCA',				'MODIFIER_PLAYER_ADJUST_VALID_IMPROVEMENT',			NULL											),
		('CSE_MALOCA_ADJACENCY_FOOD',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',				'CSE_MALOCA_ADJACENCY_FOOD_REQUIREMENTS'		),
		('CSE_MALOCA_ADJACENCY_LATE_FOOD',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',				'CSE_MALOCA_ADJACENCY_LATE_FOOD_REQUIREMENTS'	),
		('CSE_MALOCA_ADJACENCY_LATE_CULTURE',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',				'CSE_MALOCA_ADJACENCY_LATE_CULTURE_REQUIREMENTS');

--------------------------------------------------------------
-- ImprovementModifiers
--------------------------------------------------------------
INSERT INTO ImprovementModifiers
		(ImprovementType,			ModifierId)
VALUES	('IMPROVEMENT_CSE_MALOCA',	'ADJ_CSE_MALOCA_FOOD'),
		('IMPROVEMENT_CSE_MALOCA',	'ADJ_CSE_MALOCA_LATE_FOOD'),
		('IMPROVEMENT_CSE_MALOCA',	'ADJ_CSE_MALOCA_CULTURE');
--------------------------------------------------------------		

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,								ModifierId						)
VALUES	('MINOR_CIV_CSE_HASUPUWETERI_TRAIT',	'CSE_HASUPUWETERI_SUZERAIN_MALOCA'	);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,							Name,				Value						)
VALUES	('CSE_HASUPUWETERI_SUZERAIN_MALOCA',	'ModifierId',		'CSE_HASUPUWETERI_MALOCA'	),
		('CSE_HASUPUWETERI_MALOCA',				'ImprovementType',	'IMPROVEMENT_CSE_MALOCA'	);