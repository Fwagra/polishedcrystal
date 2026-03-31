MrFujisHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 2
	warp_event  3,  7, LAVENDER_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  1, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, MrFujisHouseSuperNerdText, -1
	object_event  3,  4, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, MrFujisHouseLassText, -1
	pokemon_event  8,  4, PSYDUCK, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_BROWN, MrFujisPsyduckText, -1
	pokemon_event  5,  5, NIDORINO, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_PURPLE, MrFujisNidorinoText, -1
	pokemon_event  1,  3, PIDGEY, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_BROWN, MrFujisPidgeyText, -1

MrFujisHouseSuperNerdText:
if DEF(_LOCALE_FR)
	text "M.Fuji vit ici"
	line "mais il est"
	cont "absent"

	para "pour le moment."

	para "Il est à la"
	line "Maison des Ames."
	done
else
	text "Mr.Fuji does live"
	line "here, but he's not"
	cont "home now."

	para "He might be at the"
	line "House of Souls."
	done
endc

MrFujisHouseLassText:
if DEF(_LOCALE_FR)
	text "Des gens sans"
	line "coeur délaissent"
	cont "leurs #mon."

	para "Pépé s'occupe"
	line "des #mon"
	cont "abandonnés"

	para "et les soigne."
	done
else
	text "Some cold-hearted"
	line "people stop caring"
	cont "for their #mon."

	para "Grandpa takes in"
	line "the poor homeless"

	para "#mon and takes"
	line "care of them."
	done
endc

MrFujisPsyduckText:
if DEF(_LOCALE_FR)
	text "Psykokwak: Kwa?"
	done
else
	text "Psyduck: Gu-guwa?"
	done
endc

MrFujisNidorinoText:
if DEF(_LOCALE_FR)
	text "Nidorino: Nido!"
	done
else
	text "Nidorino: Gyun!"
	done
endc

MrFujisPidgeyText:
if DEF(_LOCALE_FR)
	text "Roucool: Rrrou!"
	done
else
	text "Pidgey: Pijji!"
	done
endc
