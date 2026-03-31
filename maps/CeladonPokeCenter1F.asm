CeladonPokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, CELADON_CITY, 5
	warp_event  6,  7, CELADON_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalErikaScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  2,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_COMMAND, jumpstd, happinesschecknpc, -1
	object_event  1,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonPokeCenter1FPharmacistText, -1
	object_event 11,  5, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonPokeCenter1FCooltrainerfText, -1
	object_event 11,  6, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonPokeCenter1FLassText, -1

PokemonJournalErikaScript:
	setflag ENGINE_READ_ERIKA_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "Dossier special:"
	line "Erika!"

	para "On raconte que"
	line "si tu regardes"

	para "dans l'Arène de"
	line "Céladopole,"

	para "tu verras souvent"
	line "Erika dormir."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "Leader Erika!"

	para "Rumor has it that"
	line "if you peek into"
	cont "Celadon Gym, you"

	para "can often see"
	line "Erika snoozing."
	done
endc

CeladonPokeCenter1FPharmacistText:
if DEF(_LOCALE_FR)
	text "Le repaire de"
	line "la Team Rocket"

	para "était au sous-sol"
	line "du Casino."

	para "Ah, ça date…"
	line "Il y a 3 ans."
	done
else
	text "Team Rocket's"
	line "hideout is in the"

	para "basement of the"
	line "Game Corner."

	para "Oh, wait. That was"
	line "three years ago."
	done
endc

CeladonPokeCenter1FCooltrainerfText:
if DEF(_LOCALE_FR)
	text "Erika est"
	line "une pro du"
	cont "type Plante."

	para "Si tu baisses"
	line "ta garde,"

	para "elle te punira!"
	done
else
	text "Erika is a master"
	line "of grass #mon."

	para "She'll make you"
	line "pay if you don't"
	cont "watch yourself."
	done
endc

CeladonPokeCenter1FLassText:
if DEF(_LOCALE_FR)
	text "Erika n'est"
	line "pas que"
	cont "Champion."

	para "Elle enseigne"
	line "a l'univer-"
	cont "site."
	done
else
	text "Erika isn't just"
	line "a Gym Leader."

	para "She also lectures"
	line "at the university."
	done
endc
