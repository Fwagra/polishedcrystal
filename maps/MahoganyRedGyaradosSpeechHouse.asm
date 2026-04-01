MahoganyRedGyaradosSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, MAHOGANY_TOWN, 2
	warp_event  3,  7, MAHOGANY_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, MahoganyRedGyaradosSpeechHouseBlackBeltText, -1
	object_event  6,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MahoganyRedGyaradosSpeechHouseTeacherScript, -1

MahoganyRedGyaradosSpeechHouseTeacherScript:
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue_jumptextfaceplayer MahoganyRedGyaradosSpeechHouseTeacherText_RocketsInRadioTower
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Mon émission de"
	line "radio préférée?"
	cont "La #musique!"
	done
else
	text "My favorite radio"
	line "program? I'd say"
	cont "#mon Music."
	done
endc

MahoganyRedGyaradosSpeechHouseBlackBeltText:
if DEF(_LOCALE_FR)
	text "J'ai entendu dire"
	line "qu'un Léviator"
	cont "rouge est apparu"
	cont "au Lac."

	para "C'est bizarre..."
	line "Même un Léviator"

	para "ordinaire est très"
	line "rare dans ce Lac!"
	done
else
	text "I heard that a red"
	line "Gyarados appeared"
	cont "at the lake."

	para "That's odd, since"
	line "even ordinary"

	para "Gyarados are rare"
	line "in that lake…"
	done
endc

MahoganyRedGyaradosSpeechHouseTeacherText_RocketsInRadioTower:
if DEF(_LOCALE_FR)
	text "J'ai entendu des"
	line "rires à la radio."

	para "Ca donne la chair"
	line "de poule!"
	done
else
	text "I've been hearing"
	line "laughter on the"

	para "radio…"
	line "It's creepy."
	done
endc
