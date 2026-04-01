CeladonHotelRoom1_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  5, CELADON_HOTEL_2F, 2
	warp_event  4,  5, CELADON_HOTEL_2F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonHotelRoom1CooltrainerMText, -1
	object_event  1,  3, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonHotelRoom1LassText, -1
	itemball_event  3,  1, POKE_DOLL, 1, EVENT_CELADON_HOTEL_ROOM_1_POKE_DOLL

CeladonHotelRoom1CooltrainerMText:
if DEF(_LOCALE_FR)
	text "Chez moi, pas de"
	line "# Balls."

	para "On utilise des"
	line "Stylets Capture"

	para "pour se lier aux"
	line "#mon."
	done
else
	text "Where I come from,"
	line "there aren't any"
	cont "# Balls."

	para "People use Capture"
	line "Stylers to be-"
	cont "friend #mon."
	done
endc

CeladonHotelRoom1LassText:
if DEF(_LOCALE_FR)
	text "Le personnel plie"
	line "nos serviettes en"

	para "fleurs chaque"
	line "jour."

	para "Je devrais leur"
	line "demander l'astuce."
	done
else
	text "The staff here"
	line "fold our towels"
	cont "into flower shapes"
	cont "every day."

	para "I should ask them"
	line "to teach me how."
	done
endc
