WarmBeachHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, WARM_BEACH, 3
	warp_event  3,  7, WARM_BEACH, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, WarmBeachHouseGrampsText, -1
	object_event  5,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, WarmBeachHouseGrannyText, -1
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, WarmBeachHouseBookScript, -1

WarmBeachHouseGrampsText:
if DEF(_LOCALE_FR)
	text "Ces lignes parlent"
	line "d'un gardien..."
	done
else
	text "TODO"
	done
endc

WarmBeachHouseGrannyText:
if DEF(_LOCALE_FR)
	text "Une prophétie des"
	line "îles…"
	done
else
	text "TODO"
	done
endc

WarmBeachHouseBookScript:
	opentext
	writetext .Text0
	yesorno
	iffalse_endtext
	writetext .Text1
	yesorno
	iffalse_endtext
	writetext .Text2
	yesorno
	iffalse_endtext
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Des trois îles,"
	line "prends les sphères"
	cont "anciennes."

	para "Entre vie et mort,"
	line "tu feras la"
	cont "différence."

	para "Monte au"
	line "sanctuaire"
	line "pour réparer,"

	para "et le monde sera"
	line "guéri par le chant"
	cont "du gardien…"
	done
else
	text "From the trio of"
	line "islands, ancient"
	cont "spheres shall you"
	cont "take."

	para "For between life"
	line "and death, all the"
	cont "difference you'll"
	cont "make."

	para "Climb to the"
	line "shrine to right"
	cont "what is wrong,"

	para "and the world"
	line "shall be healed"
	cont "by the guardian's"
	cont "song…"
	done
endc

.Text0:
if DEF(_LOCALE_FR)
	text "La Prophétie de"
	line "Shamouti"

	para "Tu veux la lire?"
	done
else
	text "The Shamouti"
	line "Prophecy"

	para "Want to read it?"
	done
endc

.Text1:
if DEF(_LOCALE_FR)
	text "Ne trouble pas"
	line "l'harmonie du feu,"
	cont "de la glace,"
	cont "ou de la foudre,"

	para "sinon ces titans"
	line "ravageront le"
	cont "monde."

	para "Le grand gardien"
	line "des eaux se lèvera"
	cont "pour les arrêter,"

	para "mais son chant"
	line "échouera, et la"
	cont "terre deviendra"
	cont "cendre."

	para "Continuer?"
	done
else
	text "Disturb not the"
	line "harmony of fire,"
	cont "ice, or lightning,"

	para "lest these titans"
	line "wreak destruction"
	cont "upon the world in"
	cont "which they clash."

	para "Though the water's"
	line "great guardian sh-"
	cont "all arise to quell"
	cont "the fighting,"

	para "alone its song"
	line "will fail, and"
	cont "thus the earth"
	cont "shall turn to ash."

	para "Keep reading?"
	done
endc

.Text2:
if DEF(_LOCALE_FR)
	text "O Elu,"
	line "rassemble les"
	cont "trois trésors."

	para "Unis, ils domptent"
	line "la bête de la mer."

	para "Continuer?"
	done
else
	text "O Chosen One,"
	line "into thine hands"
	cont "bring together"
	cont "all three."

	para "Their treasures"
	line "combined tame the"
	cont "beast of the sea."

	para "Keep reading?"
	done
endc
