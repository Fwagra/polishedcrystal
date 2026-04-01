SaffronOrreSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 17
	warp_event  3,  7, SAFFRON_CITY, 17

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_SILPH_EMPLOYEE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, SaffronOrreSpeechHouseSilphEmployeeText, -1
	object_event  5,  4, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, SaffronOrreSpeechHouseCooltrainerMText, -1

SaffronOrreSpeechHouseSilphEmployeeText:
if DEF(_LOCALE_FR)
	text "J'ai entendu"
	line "parler"
	line "d'une méthode pour"
	cont "sceller le coeur"

	para "d'un #mon et le"
	line "forcer à attaquer"
	cont "les gens."

	para "Comment peut-on"
	line "faire une chose"
	cont "pareille"
	cont "à un #mon?!"
	done
else
	text "I heard about a"
	line "method to seal off"
	cont "a #mon's heart"

	para "and force them to"
	line "attack people."

	para "How could anyone"
	line "do such a horrible"
	cont "thing to #mon?!"
	done
endc

SaffronOrreSpeechHouseCooltrainerMText:
if DEF(_LOCALE_FR)
	text "On revient de voir"
	line "un ami dans une"
	cont "autre région."

	para "Ils ont eu des"
	line "ennuis avec deux"
	cont "bandes de voyous,"

	para "mais un dresseur"
	line "talentueux a su"
	cont "les sauver."
	done
else
	text "We just got back"
	line "from seeing a"

	para "friend in another"
	line "region."

	para "They had a lot of"
	line "trouble from two"
	cont "criminal gangs,"

	para "but a talented"
	line "trainer stepped up"
	cont "to save them."
	done
endc
