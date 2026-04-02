SilphCo2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 13,  0, SILPH_CO_1F, 3
	warp_event 11,  0, SILPH_CO_3F, 1

	def_coord_events

	def_bg_events
	bg_event  3,  2, BGEVENT_JUMPTEXT, SilphCo2FDeptSignText
	bg_event  9,  2, BGEVENT_JUMPTEXT, SilphCo2FDeptSignText
	bg_event  5,  0, BGEVENT_JUMPTEXT, SilphCo2FElevatorText
	bg_event  0,  3, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  6,  3, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  7,  3, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event 12,  3, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event 13,  3, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events
	object_event  4,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, SilphCo2FScientist1Script, -1
	object_event 14,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, SilphCo2FScientist2Text, -1
	object_event  8,  5, SPRITE_SILPH_EMPLOYEE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, SilphCo2FSilphEmployee1Text, -1
	object_event  2,  5, SPRITE_SILPH_EMPLOYEE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, SilphCo2FSilphEmployee2Text, -1

SilphCo2FScientist1Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_UPGRADE
	iftruefwd SilphCo2FScientist1GaveUpgradeScript
	writetext SilphCo2FScientist1Text1
	promptbutton
	verbosegiveitem UPGRADE
	iffalsefwd SilphCo2FScientist1NoRoomForUpgradeScript
	setevent EVENT_GOT_UPGRADE
SilphCo2FScientist1GaveUpgradeScript:
	writetext SilphCo2FScientist1Text2
	waitbutton
SilphCo2FScientist1NoRoomForUpgradeScript:
	endtext

SilphCo2FScientist1Text1:
if DEF(_LOCALE_FR)
	text "Seuls les employés"
	line "peuvent aller aux"
	cont "étages supérieurs."

	para "Mais comme tu"
	line "viens de loin,"

	para "voilà un petit"
	line "souvenir."
	done
else
	text "You traveled here"
	line "from Johto?"

	para "Since you came"
	line "such a long way,"

	para "have this neat"
	line "little souvenir."
	done
endc

SilphCo2FScientist1Text2:
if DEF(_LOCALE_FR)
	text "C'est le dernier"
	line "cri de la SYLPHE!"

	para "Et c'est même pas"
	line "encore en vente!"
	done
else
	text "It's Silph Co.'s"
	line "latest product."

	para "It's not for sale"
	line "anywhere yet."
	done
endc

SilphCo2FScientist2Text:
if DEF(_LOCALE_FR)
	text "Je code! Ne casse"
	line "pas ma concen-"
	cont "tration!"
	done
else
	text "I'm coding! Don't"
	line "break my concen-"
	cont "tration!"
	done
endc

SilphCo2FSilphEmployee1Text:
if DEF(_LOCALE_FR)
	text "Avant, on utili-"
	line "sait des télépor-"

	para "teurs pour se"
	line "déplacer, mais"
	cont "ils sont coupés."

	para "Heureusement, je"
	line "suis au 2ème!"
	done
else
	text "We used to use"
	line "teleporters to get"

	para "around, but they"
	line "were disabled."

	para "Good thing I'm on"
	line "the second floor!"
	done
endc

SilphCo2FSilphEmployee2Text:
if DEF(_LOCALE_FR)
	text "On bosse toujours"
	line "sur de nouvelles"
	cont "CT."

	para "Certaines sont"
	line "arrêtées, mais"

	para "d'autres sont tel-"
	line "lement populaires"

	para "qu'elles n'ont pas"
	line "changé depuis"
	cont "plus de 20 ans!"
	done
else
	text "We're always work-"
	line "ing on new TMs."

	para "Some have been"
	line "discontinued, but"

	para "others are so pop-"
	line "ular that they"

	para "haven't changed in"
	line "over 20 years!"
	done
endc

SilphCo2FDeptSignText:
if DEF(_LOCALE_FR)
	text "SYLPHE SARL  2ème"
	line "Dev. logiciel"
	done
else
	text "Silph Co. 2F"
	line "Software Dev."
	done
endc

SilphCo2FElevatorText:
if DEF(_LOCALE_FR)
	text "Hors service"
	done
else
	text "Out Of Order"
	done
endc
