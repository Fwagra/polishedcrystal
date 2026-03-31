CinnabarPokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, CINNABAR_ISLAND, 1
	warp_event  6,  7, CINNABAR_ISLAND, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalBlaineScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  2,  5, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CinnabarPokeCenter1FCooltrainerfText, -1
	object_event  9,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CinnabarPokeCenter1FFisherText, -1

PokemonJournalBlaineScript:
	setflag ENGINE_READ_BLAINE_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "Dossier special:"
	line "Auguste!"

	para "On dit qu'Auguste"
	line "enleve ses"

	para "lunettes noires"
	line "pour inventer"

	para "de nouvelles"
	line "enigmes."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "Leader Blaine!"

	para "Blaine is said to"
	line "only remove his"

	para "shades when he is"
	line "thinking up new"
	cont "riddles."
	done
endc

CinnabarPokeCenter1FCooltrainerfText:
if DEF(_LOCALE_FR)
	text "Auguste vit"
	line "seul"

	para "dans les Iles"
	line "Ecume…"
	done
else
	text "Cinnabar Gym's"
	line "Blaine apparently"

	para "lives alone in the"
	line "Seafoam Islands"
	cont "cave…"
	done
endc

CinnabarPokeCenter1FFisherText:
if DEF(_LOCALE_FR)
	text "Ca fait 1 an"
	line "que le volcan"
	cont "a explose."
	done
else
	text "It's been a year"
	line "since the volcano"
	cont "erupted."
	done
endc
