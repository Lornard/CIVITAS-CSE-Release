/*
	Localisation
	Authors: thecrazyscotsman, ChimpanG
*/

INSERT OR REPLACE INTO LocalizedText (Language, Tag, Text)
VALUES

-----------------------------------------------
-- Agrarian
-----------------------------------------------

	("pt_BR",	"LOC_CSE_AGRICULTURAL_TRAIT_LARGEST_INFLUENCE_BONUS",	"+2 [ICON_FOOD] Food in every Food Market and Shopping Mall."	),

-----------------------------------------------
-- Consular
-----------------------------------------------

	("pt_BR",	"LOC_CITY_STATES_TYPE_CSE_CONSULAR",					"Consular"	),
	
	("pt_BR",	"LOC_CSE_CONSULAR_TRAIT_SMALL_INFLUENCE_BONUS",			"+2 Loyalty Pressure in the [ICON_CAPITAL] Capital."	),
	("pt_BR",	"LOC_CSE_CONSULAR_TRAIT_MEDIUM_INFLUENCE_BONUS",		"+2 Loyalty in every City."		),
	("pt_BR",	"LOC_CSE_CONSULAR_TRAIT_LARGE_INFLUENCE_BONUS",			"+2 Loyalty Pressure in every City."	),
	("pt_BR",	"LOC_CSE_CONSULAR_TRAIT_LARGEST_INFLUENCE_BONUS",		"+2 Loyalty Pressure in every City with an established [ICON_GOVERNOR] Governor."	),

	("pt_BR",	"LOC_CSE_CONSULAR_TRAIT_NAME",							"{LOC_CITY_STATES_TYPE_CSE_CONSULAR} City-State"	),
	("pt_BR",	"LOC_CSE_CONSULAR_TRAIT_DESCRIPTION",					"{LOC_MINOR_CIV_SMALL_INFLUENCE_ENVOYS} {LOC_CSE_CONSULAR_TRAIT_SMALL_INFLUENCE_BONUS}[NEWLINE]{LOC_MINOR_CIV_MEDIUM_INFLUENCE_ENVOYS} {LOC_CSE_CONSULAR_TRAIT_MEDIUM_INFLUENCE_BONUS}[NEWLINE]{LOC_MINOR_CIV_LARGE_INFLUENCE_ENVOYS} {LOC_CSE_CONSULAR_TRAIT_LARGE_INFLUENCE_BONUS}[NEWLINE]{LOC_MINOR_CIV_LARGEST_INFLUENCE_ENVOYS} {LOC_CSE_CONSULAR_TRAIT_LARGEST_INFLUENCE_BONUS}"	),

	("pt_BR",	"LOC_PEDIA_CITYSTATES_PAGEGROUP_CSE_CONSULAR_NAME",		"{LOC_CITY_STATES_TYPE_CSE_CONSULAR}"	),

-----------------------------------------------
-- Entertainment
-----------------------------------------------

	("pt_BR",	"LOC_CSE_ENTERTAINMENT_TRAIT_SMALL_INFLUENCE_BONUS",		"+1 [ICON_AMENITIES] Amenity in the [ICON_CAPITAL] Capital."	),
	("pt_BR",	"LOC_CSE_ENTERTAINMENT_TRAIT_MEDIUM_INFLUENCE_BONUS",		"+1 [ICON_AMENITIES] Amenity in every Arena or Ferris Wheel."		),
	("pt_BR",	"LOC_CSE_ENTERTAINMENT_TRAIT_LARGE_INFLUENCE_BONUS",		"+1 [ICON_AMENITIES] Amenity in every Zoo or Aquarium."	),
	("pt_BR",	"LOC_CSE_ENTERTAINMENT_TRAIT_LARGEST_INFLUENCE_BONUS",		"+1 [ICON_AMENITIES] Amenity in every Stadium or Aquatics Center."	);
	
