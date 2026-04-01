CeladonMansion2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  0, CELADON_MANSION_1F, 4
	warp_event  1,  0, CELADON_MANSION_3F, 2
	warp_event  6,  0, CELADON_MANSION_3F, 3
	warp_event  7,  0, CELADON_MANSION_1F, 5

	def_coord_events

	def_bg_events
	bg_event  0,  3, BGEVENT_JUMPTEXT, CeladonMansion2FComputerText
	bg_event  5,  8, BGEVENT_UP, CeladonMansion2FSign
	bg_event  2,  3, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events

CeladonMansion2FSign:
	jumptext CeladonMansion2FSignText

CeladonMansion2FComputerText:
if DEF(_LOCALE_FR)
	text "<PLAYER> allume"
	line "le PC."

	para "…"

	para "Un e-mail en"
	line "cours de redac-"
	cont "tion…"

	para "…J'espere que tu"
	line "viendras a Kanto."

	para "Tu verras comme"
	line "tout a change."

	para "Tu croiseras des"
	line "#mon que tu ne"

	para "vois pas a Johto."
	line "Au Producteur"

	para "…"
	done
else
	text "<PLAYER> turned on"
	line "the PC."

	para "…"

	para "Someone was in the"
	line "middle of compos-"
	cont "ing an e-mail."

	para "…I hope you'll"
	line "come visit Kanto."

	para "I think you'll be"
	line "surprised at how"

	para "much things have"
	line "changed here."

	para "You'll also see"
	line "many #mon that"

	para "aren't native to"
	line "Johto."

	para "To the Producer"

	para "…"
	done
endc

CeladonMansion2FSignText:
if DEF(_LOCALE_FR)
	text "Game Freak"
	line "Salle reunion"
	done
else
	text "Game Freak"
	line "Meeting Room"
	done
endc
