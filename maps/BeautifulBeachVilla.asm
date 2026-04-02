BeautifulBeachVilla_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, BEAUTIFUL_BEACH, 3
	warp_event  3,  7, BEAUTIFUL_BEACH, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_DARACH, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, (1 << MORN) | (1 << DAY) | (1 << EVE), 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, DarachMornDayText, -1
	object_event 10,  4, SPRITE_DARACH, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, (1 << NITE), 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, DarachNiteText, -1
	object_event  1,  4, SPRITE_CAITLIN, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, (1 << MORN) | (1 << DAY) | (1 << EVE), 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CaitlinMornDayText, -1
	object_event  9,  2, SPRITE_WEIRD_TREE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, (1 << NITE), PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CaitlinNiteScript, -1
	object_event 11,  4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, (1 << NITE), 0, OBJECTTYPE_COMMAND, jumptext, DarachsBookText, -1

DarachMornDayText:
if DEF(_LOCALE_FR)
	text "L'air marin"
	line "aiguise l'esprit."

	para "Un duelliste sait"
	line "quand se reposer."
else
	text "The salt breeze"
	line "sharpens the mind."

	para "A duelist must"
	line "know when to rest."
endc
	done

DarachNiteText:
if DEF(_LOCALE_FR)
	text "Même un gardien"
	line "du Château doit"
	cont "se coucher tôt."

	para "Bonne nuit."
else
	text "Even a Battle"
	line "Castle steward"
	cont "needs his sleep."

	para "Good night."
endc
	done

CaitlinMornDayText:
if DEF(_LOCALE_FR)
	text "J'adore compter"
	line "les vagues…"

	para "Ca clarifie mes"
	line "pensées."
else
	text "I love counting"
	line "the waves…"

	para "It clears my"
	line "head."
endc
	done

CaitlinNiteScript:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Ne dis pas a"
	line "Darach que je"
	cont "scrute le ciel…"
else
	text "Please don't tell"
	line "Darach I'm out"
	cont "stargazing…"
endc
	done

DarachsBookText:
if DEF(_LOCALE_FR)
	text "Tactiques du"
	line "Château, vol. III"

	para "Notes en marge"
	line "signées Darach."
else
	text "Battle Castle"
	line "Tactics Vol. III"

	para "Notes in the"
	line "margins by Darach."
endc
	done
