EcruteakMart_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ECRUTEAK_CITY, 9
	warp_event  3,  7, ECRUTEAK_CITY, 9

	def_coord_events

	def_bg_events

	def_object_events
	mart_clerk_event  1,  3, MARTTYPE_STANDARD, MART_ECRUTEAK
	object_event  5,  2, SPRITE_POKEMANIAC, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakMartSuperNerdText, -1
	object_event  6,  6, SPRITE_RICH_BOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakMartGrannyText, -1

EcruteakMartSuperNerdText:
if DEF(_LOCALE_FR)
	text "Mon EVOLI a évolué"
	line "en MENTALI."

	para "Mais l'EVOLI de"
	line "mon ami a évolué"
	cont "en NOCTALI."

	para "Il a dû se passer"
	line "un truc."

	para "Pourtant, on a"
	line "tous les deux"
	cont "passé tout"

	para "notre temps à"
	line "élever notre"
	cont "Pokémon"

	para "comme un EVOLI…"
	done
else
	text "My Eevee evolved"
	line "into an Espeon."

	para "But my friend's"
	line "Eevee turned into"
	cont "an Umbreon."

	para "I wonder why? We"
	line "both were raising"

	para "our Eevee in the"
	line "same way…"
	done
endc

EcruteakMartGrannyText:
if DEF(_LOCALE_FR)
	text "Le Train Magnet"
	line "est génial."

	para "On voulait une"
	line "gare ici,"
	cont "avant."
	done
else
	text "The Magnet Train"
	line "in Goldenrod is"
	cont "great, but there"

	para "were also plans to"
	line "put a station in"
	cont "Ecruteak at first."
	done
endc
