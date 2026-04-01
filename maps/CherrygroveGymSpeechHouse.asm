CherrygroveGymSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CHERRYGROVE_CITY, 3
	warp_event  3,  7, CHERRYGROVE_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CherrygroveGymSpeechHousePokefanMText, -1
	object_event  5,  5, SPRITE_CHILD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CherrygroveGymSpeechHouseBugCatcherText, -1

CherrygroveGymSpeechHousePokefanMText:
if DEF(_LOCALE_FR)
	text "T'essaierais pas"
	line "d'évaluer ton"

	para "p'tit niveau de"
	line "dresseur par"
	cont "hasard?"

	para "Tu ferais mieux de"
	line "te rendre aux"

	para "Arènes de Johto et"
	line "collecter quelques"
	cont "Badges."
	done
else
	text "You're trying to"
	line "see how good you"

	para "are as a #mon"
	line "trainer?"

	para "You better visit"
	line "the #mon Gyms"

	para "all over Johto and"
	line "collect Badges."
	done
endc

CherrygroveGymSpeechHouseBugCatcherText:
if DEF(_LOCALE_FR)
	text "Quand je serai"
	line "grand, je serai un"
	cont "Champion d'Arène!"

	para "Je fais combattre"
	line "mes #mon contre"

	para "ceux de mon ami"
	line "pour qu'ils"
	cont "progressent!"
	done
else
	text "When I get older,"
	line "I'm going to be a"
	cont "Gym Leader!"

	para "I make my #mon"
	line "battle with my"

	para "friend's to make"
	line "them tougher!"
	done
endc
