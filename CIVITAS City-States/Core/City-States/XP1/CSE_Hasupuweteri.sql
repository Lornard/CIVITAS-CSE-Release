/*
	Hasupuweteri
	~ Your builders may construct Kiva improvements.

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
		2, -- TilesRequired
		'PLUNDER_HEALTH', -- PlunderType
		25, -- PlunderAmount
		0 -- SameAdjacentValid
		);

-----------------------------------------------
-- Improvement_ValidBuildUnits
-----------------------------------------------
		
INSERT INTO Improvement_ValidBuildUnits
		(ImprovementType,			UnitType		)
VALUES	('IMPROVEMENT_CSE_MALOCA',	'UNIT_BUILDER'	);

-----------------------------------------------
-- Improvement_ValidTerrains ?? There is a VALIDFEATURES table?
-----------------------------------------------
		
--INSERT INTO Improvement_ValidTerrains
--		(ImprovementType,			TerrainType				)
--VALUES	('IMPROVEMENT_CSE_MALOCA',	'FEATURE_RAINFOREST'		);

-----------------------------------------------
-- Improvement_YieldChanges
-----------------------------------------------
		
INSERT INTO Improvement_YieldChanges
		(ImprovementType,			YieldType,			YieldChange	)
VALUES	('IMPROVEMENT_CSE_MALOCA',	'YIELD_FOOD',		1			);

-----------------------------------------------
-- Improvement_YieldChanges (ADJACENCT_TILES) - No idea how to do this yet.
-----------------------------------------------

-----------------------------------------------
-- Improvement_BonusYieldChanges
-----------------------------------------------

INSERT INTO Improvement_BonusYieldChanges
		(Id,	ImprovementType,		YieldType,			BonusYieldChange,	PrereqTech,					PrereqCivic				)
VALUES	(100,	'IMPROVEMENT_CSE_KIVA',	'YIELD_FOOD',		1,					NULL,						'CIVIC_GUILDS'			),
		(101,	'IMPROVEMENT_CSE_KIVA',	'YIELD_PRODUCTION',	1,					'TECH_MASS_PRODUCTION',		NULL					),
		(102,	'IMPROVEMENT_CSE_KIVA',	'YIELD_FAITH',		1,					NULL,						'CIVIC_DIVINE_RIGHT'	);

-----------------------------------------------
-- Improvement_BonusYieldChanges (ADJACENCT_TILES) - Also, no idea how to do this yet.
-----------------------------------------------

		
-- No adjacencies for itself - It'll improve adjacent tiles similar to Nazca Lines
-----------------------------------------------
-- Improvement_Adjacencies
-----------------------------------------------
-----------------------------------------------
-- Adjacency_YieldChanges
-----------------------------------------------

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO TraitModifiers
		(TraitType,							ModifierId						)
VALUES	('MINOR_CIV_CSE_HASUPUWETERI_TRAIT',	'CSE_HASUPUWETERI_SUZERAIN_MALOCA'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,							ModifierType,								SubjectRequirementSetId	)
VALUES	('CSE_HASUPUWETERI_SUZERAIN_MALOCA',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',		'PLAYER_IS_SUZERAIN'	),
		('CSE_HASUPUWETERI_MALOCA',				'MODIFIER_PLAYER_ADJUST_VALID_IMPROVEMENT',	NULL					);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,							Name,				Value						)
VALUES	('CSE_HASUPUWETERI_SUZERAIN_MALOCA',	'ModifierId',		'CSE_HASUPUWETERI_MALOCA'	),
		('CSE_HASUPUWETERI_MALOCA',				'ImprovementType',	'IMPROVEMENT_CSE_MALOCA'	);