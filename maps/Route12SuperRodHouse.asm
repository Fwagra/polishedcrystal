Route12SuperRodHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_12_SOUTH, 1
	warp_event  3,  7, ROUTE_12_SOUTH, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route12SuperRodHouseFishingGuruScript, -1

Route12SuperRodHouseFishingGuruScript:
	checkevent EVENT_GOT_SUPER_ROD
	iftrue_jumptextfaceplayer .GaveSuperRodText
	faceplayer
	opentext
	writetext OfferSuperRodText
	yesorno
	iffalsefwd .Refused
	writetext GiveSuperRodText
	promptbutton
	verbosegivekeyitem SUPER_ROD
	iffalsefwd .NoRoom
	setevent EVENT_GOT_SUPER_ROD
	jumpthisopenedtext

.GaveSuperRodText:
if DEF(_LOCALE_FR)
	text "Essaie de pêcher"
	line "un peu partout où"
	cont "il y a de l'eau."

	para "Souviens-toi: tu"
	line "peux attraper plu-"

	para "sieurs #MON"
	line "grâce à différen-"
	cont "tes CANNES."
	done
else
	text "Try your hand at"
	line "fishing wherever"
	cont "there is water."

	para "Remember--you can"
	line "catch different"

	para "#mon using"
	line "different Rods."
	done
endc

.Refused:
	writetext DontWantSuperRodText
	waitbutton
.NoRoom:
	endtext

OfferSuperRodText:
if DEF(_LOCALE_FR)
	text "Je suis le petit"
	line "frère du MAITRE"
	cont "PECHEUR."

	para "Tu aimes la pêche,"
	line "toi! Ca se voit."

	para "J'ai raison, hein?"
	line "Bien sûr que oui!"
	done
else
	text "I'm the Fishing"
	line "Guru's younger"
	cont "brother."

	para "I can see that you"
	line "like fishing."

	para "There's no doubt"
	line "in my mind at all!"

	para "So? I know I'm"
	line "right."
	done
endc

GiveSuperRodText:
if DEF(_LOCALE_FR)
	text "Crénom de là!"
	line "C'est ben vrai!"

	para "Tiens boudiou!"
	line "Prends ça: c'est"
	cont "la MEGA CANNE."
	done
else
	text "Yes, yes. Just as"
	line "I thought!"

	para "Here, fishing fan!"
	line "Take this--it's a"
	cont "Super Rod."
	done
endc

DontWantSuperRodText:
if DEF(_LOCALE_FR)
	text "Hein? On m'aurait"
	line "trompé?"
	done
else
	text "Huh? My own eyes"
	line "deceived me?"
	done
endc
