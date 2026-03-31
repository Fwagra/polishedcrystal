MahoganyPokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, MAHOGANY_TOWN, 4
	warp_event  6,  7, MAHOGANY_TOWN, 4
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalPryceScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  9,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, MahoganyPokeCenter1FPokefanmText, -1
	object_event  1,  3, SPRITE_CAMPER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, MahoganyPokeCenter1FYoungsterText, -1
	object_event  2,  3, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, MahoganyPokeCenter1FCooltrainerfText, -1

PokemonJournalPryceScript:
	setflag ENGINE_READ_PRYCE_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "Dossier special:"
	line "Fredo!"

	para "On dit que son"
	line "style est souple"

	para "comme un saule"
	line "en hiver."

	para "D'ou son"
	line "surnom:"
	cont "l'Hiver."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "Leader Pryce!"

	para "Pryce's middle name"
	line "is Willow."

	para "His fighting style"
	line "is said to be as"

	para "flexible as a"
	line "willow tree in"
	cont "winter, which has"

	para "earned him the"
	line "nickname “the"
	cont "winter trainer”."
	done
endc

MahoganyPokeCenter1FPokefanmText:
if DEF(_LOCALE_FR)
	text "Hein? La Team"
	line "Rocket revient?"

	para "J'ai vu des gars"
	line "en noir au"
	cont "Lac Colère…"
	done
else
	text "What's this? Team"
	line "Rocket has come"
	cont "back?"

	para "I saw some men in"
	line "black at Lake of"
	cont "Rage…"
	done
endc

MahoganyPokeCenter1FYoungsterText:
if DEF(_LOCALE_FR)
	text "J'empêche mes"
	line "#mon d'évo-"
	cont "luer trop tôt."

	para "Je leur fais"
	line "apprendre"
	cont "des coups"

	para "avant."
	done
else
	text "I stop my #mon"
	line "from evolving too"
	cont "early."

	para "I make them learn"
	line "certain moves be-"
	cont "fore I let them"
	cont "evolve."
	done
endc

MahoganyPokeCenter1FCooltrainerfText:
if DEF(_LOCALE_FR)
	text "Evoluer rend"
	line "plus fort."

	para "Mais on apprend"
	line "des coups"
	cont "plus lentement."
	done
else
	text "#mon do become"
	line "stronger when they"

	para "evolve, but they"
	line "also learn moves"
	cont "more slowly."
	done
endc
