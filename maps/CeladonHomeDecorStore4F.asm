
CeladonHomeDecorStore4F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  9,  0, CELADON_HOME_DECOR_STORE_3F, 2

	def_coord_events

	def_bg_events
	bg_event  8,  0, BGEVENT_JUMPTEXT, CeladonHomeDecorStore4FDirectoryText
	bg_event  2,  5, BGEVENT_READ, BigOnixDollScript
	bg_event  3,  5, BGEVENT_READ, BigOnixDollScript
	bg_event  2,  6, BGEVENT_READ, BigOnixDollScript
	bg_event  3,  6, BGEVENT_READ, BigOnixDollScript

	def_object_events
	object_event  9,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, BigDollClerkText, -1
	object_event  1,  3, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BigSnorlaxDollScript, -1
	object_event  2,  3, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_STANDING_DOWN_FLIP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BigSnorlaxDollScript, -1
	object_event  1,  4, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BigSnorlaxDollScript, -1
	object_event  2,  4, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_STANDING_UP_FLIP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BigSnorlaxDollScript, -1
	object_event  4,  4, SPRITE_BIG_LAPRAS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BigLaprasDollScript, -1
	object_event  5,  4, SPRITE_BIG_LAPRAS, SPRITEMOVEDATA_STANDING_DOWN_FLIP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BigLaprasDollScript, -1
	object_event  4,  5, SPRITE_BIG_LAPRAS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BigLaprasDollScript, -1
	object_event  5,  5, SPRITE_BIG_LAPRAS, SPRITEMOVEDATA_STANDING_UP_FLIP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BigLaprasDollScript, -1

BigDollClerkNoMoneyScript:
	jumpopenedtext BigDollClerkNoMoneyText

BigLaprasDollScript:
	checkevent EVENT_DECO_BIG_LAPRAS_DOLL
	iftrue_jumptext BigLaprasDollText
	opentext
	writetext BigDollClerkSellLaprasText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext BigDollClerkNoSaleText
	checkmoney YOUR_MONEY, 300000
	ifequal HAVE_LESS, BigDollClerkNoMoneyScript
	takemoney YOUR_MONEY, 300000
	setevent EVENT_DECO_BIG_LAPRAS_DOLL
	writetext BoughtBigLaprasDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	jumpopenedtext BigLaprasDollSentText

BigSnorlaxDollScript:
	checkevent EVENT_DECO_BIG_SNORLAX_DOLL
	iftrue_jumptext BigSnorlaxDollText
	opentext
	writetext BigDollClerkSellSnorlaxText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext BigDollClerkNoSaleText
	checkmoney YOUR_MONEY, 200000
	ifequal HAVE_LESS, BigDollClerkNoMoneyScript
	takemoney YOUR_MONEY, 200000
	setevent EVENT_DECO_BIG_SNORLAX_DOLL
	writetext BoughtBigSnorlaxDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	jumpopenedtext BigSnorlaxDollSentText

BigOnixDollScript:
	checkevent EVENT_DECO_BIG_ONIX_DOLL
	iftrue_jumptext BigOnixDollText
	opentext
	writetext BigDollClerkSellOnixText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext BigDollClerkNoSaleText
	checkmoney YOUR_MONEY, 250000
	ifequal HAVE_LESS, BigDollClerkNoMoneyScript
	takemoney YOUR_MONEY, 250000
	setevent EVENT_DECO_BIG_ONIX_DOLL
	writetext BoughtBigOnixDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	jumpopenedtext BigOnixDollSentText

BigDollClerkText:
if DEF(_LOCALE_FR)
	text "Nos peluches"
	line "geantes sont top!"

	para "Elles sont si"
	line "grosses qu'on"

	para "peine a les caser!"
	done
else
	text "Aren't our jumbo"
	line "dolls impressive?"

	para "They're so big,"
	line "we can barely fit"
	cont "them in the room."
	done
endc

BigDollClerkNoSaleText:
if DEF(_LOCALE_FR)
	text "Vendeur: Bon, si"
	line "vous voulez."
	done
else
	text "Clerk: Well, if"
	line "you say so."
	done
endc

BigDollClerkNoMoneyText:
if DEF(_LOCALE_FR)
	text "Vendeur: Pas assez"
	line "d'argent!"
	done
else
	text "Clerk: You can't"
	line "afford it!"
	done
endc

BigDollClerkSellLaprasText:
if DEF(_LOCALE_FR)
	text "Vendeur: la"
	line "peluche Lokhlass?"

	para "C'est ¥300000."
	done
else
	text "Clerk: You like"
	line "the Lapras doll?"

	para "It'll cost you"
	line "¥300,000."
	done
endc

BigDollClerkSellSnorlaxText:
if DEF(_LOCALE_FR)
	text "Vendeur: la"
	line "peluche Ronflex?"

	para "C'est ¥200000."
	done
else
	text "Clerk: You like"
	line "the Snorlax doll?"

	para "It'll cost you"
	line "¥200,000."
	done
endc

BigDollClerkSellOnixText:
if DEF(_LOCALE_FR)
	text "Vendeur: la"
	line "peluche Onix?"

	para "C'est ¥250000."
	done
else
	text "Clerk: You like"
	line "the Onix doll?"

	para "It'll cost you"
	line "¥250,000."
	done
endc

BoughtBigLaprasDollText:
if DEF(_LOCALE_FR)
	text "<PLAYER> a acheté"
	line "Peluche Lokhlass."
	done
else
	text "<PLAYER> bought"
	line "Big Lapras Doll."
	done
endc

BigLaprasDollSentText:
if DEF(_LOCALE_FR)
	text "Peluche Lokhlass"
	line "envoyée chez toi."
	done
else
	text "Big Lapras Doll"
	line "was sent home."
	done
endc

BoughtBigSnorlaxDollText:
if DEF(_LOCALE_FR)
	text "<PLAYER> a acheté"
	line "Peluche Ronflex."
	done
else
	text "<PLAYER> bought"
	line "Big Snorlax Doll."
	done
endc

BigSnorlaxDollSentText:
if DEF(_LOCALE_FR)
	text "Peluche Ronflex"
	line "envoyée chez toi."
	done
else
	text "Big Snorlax Doll"
	line "was sent home."
	done
endc

BoughtBigOnixDollText:
if DEF(_LOCALE_FR)
	text "<PLAYER> a acheté"
	line "Peluche Onix."
	done
else
	text "<PLAYER> bought"
	line "Big Onix Doll."
	done
endc

BigOnixDollSentText:
if DEF(_LOCALE_FR)
	text "Peluche Onix"
	line "envoyée chez toi."
	done
else
	text "Big Onix Doll"
	line "was sent home."
	done
endc

BigLaprasDollText:
if DEF(_LOCALE_FR)
	text "Une enorme"
	line "peluche Lokhlass!"
	done
else
	text "It's a jumbo-size"
	line "Lapras Doll!"
	done
endc

BigSnorlaxDollText:
if DEF(_LOCALE_FR)
	text "Une enorme"
	line "peluche Ronflex!"
	done
else
	text "It's a jumbo-size"
	line "Snorlax Doll!"
	done
endc

BigOnixDollText:
if DEF(_LOCALE_FR)
	text "Une enorme"
	line "peluche Onix!"
	done
else
	text "It's a jumbo-size"
	line "Onix Doll!"
	done
endc

CeladonHomeDecorStore4FDirectoryText:
if DEF(_LOCALE_FR)
	text "Un compagnon"
	line "en peluche!"

	para "4F: Peluches"
	done
else
	text "A Stuffed"
	line "Companion!"

	para "4F: Jumbo Dolls"
	done
endc
