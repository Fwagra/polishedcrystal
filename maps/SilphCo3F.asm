SilphCo3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 11,  0, SILPH_CO_2F, 2

	def_coord_events

	def_bg_events
	bg_event  3,  2, BGEVENT_JUMPTEXT, SilphCo3FDeptSignText
	bg_event  9,  2, BGEVENT_JUMPTEXT, SilphCo3FDeptSignText
	bg_event  5,  0, BGEVENT_JUMPTEXT, SilphCo3FElevatorText
	bg_event  0,  3, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  6,  3, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  7,  3, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event 12,  3, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event 13,  3, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events
	object_event 10,  5, SPRITE_SILPH_EMPLOYEE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo3FSilphEmployeeScript, -1
	object_event  2,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, SilphCo3FScientist1Text, -1
	object_event  8,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, SilphCo3FScientist2Text, -1
	object_event 14,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_SILPH, MART_SILPH_CO, -1
	object_event 13,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, SilphCo3FOfficerText, -1
	object_event  6,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, SilphCo3FGentlemanText, -1

SilphCo3FSilphEmployeeScript:
	checkevent EVENT_GOT_CHERISH_BALL_FROM_SAFFRON
	iftrue_jumptextfaceplayer .Text2
	faceplayer
	opentext
	writetext .Text1
	promptbutton
	verbosegiveitem CHERISH_BALL
	iffalse_endtext
	setevent EVENT_GOT_CHERISH_BALL_FROM_SAFFRON
	jumpthisopenedtext

.Text2:
if DEF(_LOCALE_FR)
	text "C'est un type"
	line "très rare de"
	cont "# BALL."

	para "Ne la gaspille"
	line "pas!"
	done
else
	text "That's a very"
	line "rare type of"
	cont "# Ball."

	para "Don't waste it!"
	done
endc

.Text1:
if DEF(_LOCALE_FR)
	text "Je viens d'une"
	line "famille de"
	cont "fabricants de"
	cont "# BALL."

	para "Mon père FARGAS"
	line "apprend à ma"
	cont "fille à en faire"

	para "avec des NOIGRUMES"
	line "pendant que je"
	cont "bosse ici."

	para "Tu les as aidés à"
	line "ECORCIA? Super!"

	para "Je suis content"
	line "que Maizie aille"
	cont "bien."

	para "Tiens, merci!"
	done
else
	text "I'm from a family"
	line "of # Ball"
	cont "creators."

	para "My father Kurt is"
	line "teaching my daugh-"
	cont "ter how to make"

	para "Apricorn Balls"
	line "while I'm busy"
	cont "working here."

	para "You helped them"
	line "out in Azalea"
	cont "Town? Great!"

	para "I'm glad my Maizie"
	line "is doing well."

	para "Take this as a"
	line "thank-you!"
	done
endc

SilphCo3FScientist1Text:
if DEF(_LOCALE_FR)
	text "SYLPHE a conclu"
	line "un partenariat"
	cont "avec DEVON."

	para "On a obtenu des"
	line "licences sur nos"
	cont "produits."
	done
else
	text "Silph just entered"
	line "a partnership with"
	cont "Devon Corp."

	para "We licensed some"
	line "of each others'"
	cont "products."
	done
endc

SilphCo3FScientist2Text:
if DEF(_LOCALE_FR)
	text "Les # BALL"
	line "fonctionnent"

	para "comme le SYSTEME"
	line "de STOCKAGE PC."

	para "Les #MON sont"
	line "convertis en"
	cont "données, puis"

	para "reformés ailleurs."
	done
else
	text "# Balls work on"
	line "the same principle"

	para "as the PC Storage"
	line "System."

	para "#mon are con-"
	line "verted into"
	cont "digital data and"

	para "reformed in a"
	line "new location."
	done
endc

SilphCo3FOfficerText:
if DEF(_LOCALE_FR)
	text "Je peux pas te"
	line "laisser monter,"

	para "même si je te"
	line "fais confiance."

	para "Désolé, c'est la"
	line "règle."
	done
else
	text "I can't let you on"
	line "the upper floors,"

	para "even if you are"
	line "trustworthy."

	para "Sorry, but those"
	line "are the rules."
	done
endc

SilphCo3FGentlemanText:
if DEF(_LOCALE_FR)
	text "Je viens de DEVON."

	para "On collabore pour"
	line "faire avancer la"

	para "technologie des"
	line "# BALL!"
	done
else
	text "I'm visiting from"
	line "Devon Corporation."

	para "We are working to-"
	line "gether to advance"

	para "# Ball techno-"
	line "logy even further!"
	done
endc

SilphCo3FDeptSignText:
if DEF(_LOCALE_FR)
	text "SYLPHE SARL  3ème"
	line "Tech # BALL"
	done
else
	text "Silph Co. 3F"
	line "# Ball Tech"
	done
endc

SilphCo3FElevatorText:
if DEF(_LOCALE_FR)
	text "Hors service"
	done
else
	text "Out Of Order"
	done
endc
