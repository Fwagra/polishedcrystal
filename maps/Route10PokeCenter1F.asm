Route10PokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, ROUTE_10_NORTH, 1
	warp_event  6,  7, ROUTE_10_NORTH, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalAgathaScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  8,  2, SPRITE_GYM_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route10PokeCenter1FGymGuyScript, -1
	object_event  9,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route10PokeCenter1FGentlemanText, -1
	object_event  2,  3, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route10PokeCenter1FCooltrainerfText, -1

PokemonJournalAgathaScript:
	setflag ENGINE_READ_AGATHA_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "Dossier special:"
	line "Ex-Agatha!"

	para "Jeunes, Agatha"
	line "et Pr.Chen"

	para "etaient rivaux,"
	line "et se"
	cont "defiaient."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "Ex-Elite Agatha!"

	para "In their youth,"
	line "Agatha and Prof."
	cont "Oak were rivals"

	para "who vied for supr-"
	line "emacy as trainers."
	done
endc

Route10PokeCenter1FGymGuyScript:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue_jumptextfaceplayer .Text2
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Le chef de la"
	line "Centrale"

	para "cherche un"
	line "bon Dresseur."

	para "Il veut"
	line "recuperer"

	para "un objet"
	line "vole."
	done
else
	text "The Power Plant's"
	line "Manager is looking"

	para "for a strong #-"
	line "mon trainer."

	para "He needs help"
	line "getting back"

	para "something that"
	line "was stolen."
	done
endc

.Text2:
if DEF(_LOCALE_FR)
	text "La Team Rocket"
	line "s'est refaite"

	para "à Johto, puis"
	line "dissoute."

	para "Je n'étais pas"
	line "au courant."
	done
else
	text "I hear Team Rocket"
	line "got back together"

	para "in Johto but fell"
	line "apart right away."

	para "I didn't know any-"
	line "thing about that."
	done
endc

Route10PokeCenter1FGentlemanText:
if DEF(_LOCALE_FR)
	text "C'est tellement"
	line "pratique"
	cont "d'avoir un"

	para "Centre Pokémon"
	line "près de la"
	cont "caverne!"
	done
else
	text "A #mon Center"
	line "near a cave?"

	para "That's mighty"
	line "convenient."
	done
endc

Route10PokeCenter1FCooltrainerfText:
if DEF(_LOCALE_FR)
	text "Dehors, tu vois"
	line "un grand"
	cont "toit."

	para "C'est la"
	line "Centrale."
	done
else
	text "When you go out-"
	line "side, you can see"

	para "the roof of a big"
	line "building."

	para "That's the Power"
	line "Plant."
	done
endc
