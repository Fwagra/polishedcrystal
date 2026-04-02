Route7SaffronGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  4, ROUTE_7, 1
	warp_event  0,  5, ROUTE_7, 2
	warp_event  9,  4, SAFFRON_CITY, 10
	warp_event  9,  5, SAFFRON_CITY, 11

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route7SaffronGuardScript, -1
	object_event  3,  3, SPRITE_SILPH_EMPLOYEE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route7SaffronGateSilphEmployeeText, -1

Route7SaffronGuardScript:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue_jumptextfaceplayer Route7SaffronGuardSeriousText
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Sais-tu qu'il y a"
	line "eu un accident à"
	cont "la CENTRALE?"

	para "C'est à l'Est,"
	line "près de"
	cont "LAVANVILLE."
	done
else
	text "Did you hear about"
	line "the accident at"
	cont "the Power Plant?"

	para "It's located in"
	line "the East, close to"
	cont "Lavender Town."
	done
endc

Route7SaffronGuardSeriousText:
if DEF(_LOCALE_FR)
	text "J'suis un GARDE."
	line "J'en suis fier."

	para "Hé! T'as un"
	line "#DEX!"

	para "OK. Tu peux"
	line "passer."
	done
else
	text "I take my guard"
	line "job seriously."

	para "Hey! You have a"
	line "#dex."

	para "OK. You can go"
	line "through."
	done
endc

Route7SaffronGateSilphEmployeeText:
if DEF(_LOCALE_FR)
	text "Le membre du"
	line "Conseil 4, Aldo,"

	para "a entraîné ses"
	line "techniques à"
	cont "SAFRANIA."

	para "Il s'entraînait"
	line "avec un type,"

	para "Bastien, au"
	line "commencement."
	done
else
	text "The Elite Four's"
	line "Bruno used to hone"

	para "his skills in"
	line "Saffron."

	para "He trained with a"
	line "guy named Brawly"

	para "back in the early"
	line "days."
	done
endc
