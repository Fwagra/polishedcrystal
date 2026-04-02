CeladonUniversityWillowsOffice_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  5, CELADON_UNIVERSITY_2F, 3
	warp_event  4,  5, CELADON_UNIVERSITY_2F, 3

	def_coord_events

	def_bg_events
	bg_event  0,  0, BGEVENT_JUMPTEXT, CeladonUniversityWillowsOfficeBlackboardText
	bg_event  1,  0, BGEVENT_JUMPTEXT, CeladonUniversityWillowsOfficeBlackboardText
	bg_event  2,  1, BGEVENT_JUMPTEXT, CeladonUniversityWillowsOfficeBookshelf1Text
	bg_event  3,  1, BGEVENT_JUMPTEXT, CeladonUniversityWillowsOfficeBookshelf2Text
	bg_event  5,  2, BGEVENT_RIGHT, CeladonUniversityWillowsOfficeComputer

	def_object_events
	object_event  0,  2, SPRITE_WILLOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityWillowsOfficeWillowText, -1
	object_event  4,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityWillowsOfficeScientistText, -1

CeladonUniversityWillowsOfficeWillowText:
if DEF(_LOCALE_FR)
	text "Salut! Prof."
	line "Willow ici."

	para "Je supervise"
	line "Candela, Blanche,"

	para "et Spark en cours"
	line "et en recherche."

	para "Tu les croiseras"
	line "en classe."

	para "J'étudie aussi les"
	line "habitats #-"

	para "mon et leur"
	line "répartition."

	para "Je suis chargé,"
	line "mais mes aides"

	para "déchirent!"
	done
else
	text "Hello there!"
	line "I am Prof.Willow."

	para "I supervise"
	line "Candela, Blanche,"
	cont "and Spark in their"

	para "teaching and re-"
	line "search."

	para "You may run into"
	line "them in classes."

	para "I also study #-"
	line "mon habitats and"
	cont "distribution."

	para "I'm very busy, but"
	line "my excellent"

	para "assistants help"
	line "get work done."
	done
endc

CeladonUniversityWillowsOfficeScientistText:
if DEF(_LOCALE_FR)
	text "Je bosse avec le"
	line "Prof. Willow!"

	para "Je catalogue les"
	line "observations de la"

	para "Route 7."
	line "Aujourd'hui: 42"

	para "Rattatac, 37"
	line "Roucoups… et un"

	para "Goupix!"
	done
else
	text "I get to work as"
	line "Prof.Willow's"
	cont "aide!"

	para "I'm cataloguing"
	line "my observations"
	cont "of Route 7."

	para "Today I saw 42"
	line "Raticate and"
	cont "37 Pidgeotto…"
	cont "and one Vulpix!"
	done
endc

CeladonUniversityWillowsOfficeBlackboardText:
if DEF(_LOCALE_FR)
	text "On a écrit NE PAS"
	line "EFFACER avec une"

	para "flèche vers un"
	line "griffonnage…"
	done
else
	text "Someone wrote “DO"
	line "NOT ERASE” with"

	para "an arrow toward"
	line "an illegible"
	cont "scrawl…"
	done
endc

CeladonUniversityWillowsOfficeBookshelf1Text:
if DEF(_LOCALE_FR)
	text "Un livre sur les"
	line "niches écologiques"

	para "et comment les"
	line "#mon y vivent."
	done
else
	text "It's a book about"
	line "ecological niches"

	para "and how #mon"
	line "fit within their"
	cont "environments."
	done
endc

CeladonUniversityWillowsOfficeBookshelf2Text:
if DEF(_LOCALE_FR)
	text "Un dépliant sur la"
	line "Zone Safari."

	para "Plein de #mon"
	line "exotiques dessus."
	done
else
	text "It's a promotional"
	line "flyer for the"
	cont "Safari Zone."

	para "Lots of exotic-"
	line "looking #mon"
	cont "adorn it."
	done
endc

CeladonUniversityWillowsOfficeComputer:
	jumpthistext

if DEF(_LOCALE_FR)
	text "A l'écran: Système"
	line "Transfert #mon."
	done
else
	text "“#mon Transfer"
	line "System” is on the"
	cont "screen."
	done
endc
