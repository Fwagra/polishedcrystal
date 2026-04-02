RuinsOfAlphEntranceChamber_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, RUINS_OF_ALPH_OUTSIDE, 5
	warp_event  4,  7, RUINS_OF_ALPH_OUTSIDE, 5
	warp_event  4,  3, RUINS_OF_ALPH_INNER_CHAMBER, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_JUMPTEXT, RuinsofAlphStatueText

	def_object_events

RuinsofAlphStatueText:
if DEF(_LOCALE_FR)
	text "C'est la réplique"
	line "d'un ancien #-"
	cont "mon."
else
	text "It's a replica of"
	line "an ancient #-"
	cont "mon."
endc
	done
