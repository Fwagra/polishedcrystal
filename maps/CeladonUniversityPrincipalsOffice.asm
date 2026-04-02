CeladonUniversityPrincipalsOffice_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CELADON_UNIVERSITY_1F, 5
	warp_event  3,  7, CELADON_UNIVERSITY_1F, 5

	def_coord_events

	def_bg_events
	bg_event  2,  0, BGEVENT_JUMPTEXT, CeladonUniversityPrincipalsOfficeSignpost1Text
	bg_event  3,  0, BGEVENT_JUMPTEXT, CeladonUniversityPrincipalsOfficeSignpost2Text
	bg_event  5,  4, BGEVENT_RIGHT, CeladonUniversityPrincipalsOfficeComputer
	bg_event  1,  1, BGEVENT_JUMPTEXT, CeladonUniversityPrincipalsOfficeBookshelfText

	def_object_events
	object_event  2,  2, SPRITE_MATSUMOTO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonUniversityPrincipalsOfficeMatsumotoScript, -1

CeladonUniversityPrincipalsOfficeMatsumotoScript:
	checkevent EVENT_GOT_RARE_CANDY_IN_UNIVERSITY
	iftrue_jumptextfaceplayer .Text2
	faceplayer
	opentext
	writetext .Text1
	promptbutton
	verbosegiveitem RARE_CANDY
	iffalse_endtext
	setevent EVENT_GOT_RARE_CANDY_IN_UNIVERSITY
	jumpthisopenedtext

.Text2:
if DEF(_LOCALE_FR)
	text "Je bosse dur pour"
	line "que tout roule,"

	para "alors je me fais"
	line "plaisir avec des"

	para "bonbons de temps"
	line "en temps."
	done
else
	text "I work hard to"
	line "keep this place"
	cont "running smoothly,"

	para "so I unwind with"
	line "candy every now"
	cont "and then."
	done
endc

.Text1:
if DEF(_LOCALE_FR)
	text "Salut,"
	line "jeune Dresseur!"

	para "Je suis le Prof."
	line "Matsumoto."

	para "Directeur de"
	line "l'université de"

	para "Céladopole."
	line "Appelle-moi ton"

	para "pote! Tiens, des"
	line "bonbons de mon"

	para "tiroir."
	done
else
	text "Hello there,"
	line "young trainer!"

	para "I am Professor"
	line "Matsumoto."

	para "I'm the principal"
	line "of Celadon Uni-"
	cont "versity."

	para "But you can call"
	line "me your pal!"

	para "Here, have some"
	line "candy from my"
	cont "desk stash."
	done
endc

CeladonUniversityPrincipalsOfficeSignpost1Text:
if DEF(_LOCALE_FR)
	text "Diplôme de Matsu-"
	line "moto en Sciences"

	para "de l'éducation."
	done
else
	text "It's Prof.Matsu-"
	line "moto's degree in"
	cont "Education."
	done
endc

CeladonUniversityPrincipalsOfficeSignpost2Text:
if DEF(_LOCALE_FR)
	text "Photo de Matsu-"
	line "moto devant une"

	para "promotion."
	done
else
	text "It's a picture of"
	line "Prof.Matsumoto in"

	para "front of a grad-"
	line "uating class."
	done
endc

CeladonUniversityPrincipalsOfficeComputer:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Brouillon de mail"
	line "aux anciens pour"

	para "des dons."
	done
else
	text "There's a draft"
	line "email asking"

	para "alumni for"
	line "donations."
	done
endc

CeladonUniversityPrincipalsOfficeBookshelfText:
if DEF(_LOCALE_FR)
	text "Toute l'encyclo"
	line "#monica."
	done
else
	text "It's a complete set"
	line "of books of the"

	para "Encyclopedia"
	line "#monica."
	done
endc
