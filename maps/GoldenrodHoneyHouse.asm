GoldenrodHoneyHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 21
	warp_event  3,  7, GOLDENROD_CITY, 21

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodHoneyHousePokefanFScript, -1
	pokemon_event  6,  3, BUTTERFREE, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_BLUE, GoldenrodHoneyHouseButterfreeText, -1

GoldenrodHoneyHousePokefanFScript:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue_jumptextfaceplayer .AfterText
	checkevent EVENT_GOT_HONEY_FROM_GOLDENROD
	iftruefwd .SellHoney
	faceplayer
	opentext
	writetext .IntroText
	promptbutton
	verbosegiveitem SWEET_HONEY
	iffalse_endtext
	setevent EVENT_GOT_HONEY_FROM_GOLDENROD
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	jumpopenedtext .AfterText

.AfterText:
if DEF(_LOCALE_FR)
	text "Mon petit frère"
	line "prend du MIEL et"

	para "va se promener."
	line "Je me demande ce"

	para "qu'il fabrique…"
	done
else
	text "My little brother"
if DEF(FAITHFUL)
	line "takes Honey and"

	para "spreads it around"
else
	line "takes Sweet Honey"

	para "and spreads it in"
endc
	line "tall grass."

	para "#mon are"
	line "enticed by it."

	para "It tends to draw"
	line "in #mon at the"

	para "same level as"
	line "your own!"
	done
endc

.IntroText:
if DEF(_LOCALE_FR)
	text "Mon #mon adore"
	line "le MIEL."

	para "Je vais t'en"
	line "donner."
	done
else
	text "My #mon is an"
	line "expert at collect-"
if DEF(FAITHFUL)
	cont "ing Honey."
else
	cont "ing Sweet Honey."
endc

	para "I'll share some"
	line "with you."
	done
endc

.SellHoney:
	faceplayer
	opentext
	writetext .SellText
	special PlaceMoneyTopRight
	loadmenu .MenuDataHeader
	verticalmenu
	closewindow
	ifequalfwd $1, .Buy1
	ifequalfwd $2, .Buy10
	jumpopenedtext .SellHoneyCancelText

.SellHoneyCancelText:
if DEF(_LOCALE_FR)
	text "Reviens vite,"
	line "la belle!"
	done
else
	text "Well, come again,"
	line "honey!"
	done
endc

.Buy1:
	checkmoney YOUR_MONEY, 1000
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	giveitem SWEET_HONEY
	iffalse_jumpopenedtext .BagFullText
	takemoney YOUR_MONEY, 1000
	sjumpfwd .Done

.Buy10:
	checkmoney YOUR_MONEY, 10000
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	giveitem SWEET_HONEY, 10
	iffalse_jumpopenedtext .BagFullText
	takemoney YOUR_MONEY, 10000

.Done:
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	writetext .GoodbyeText
	promptbutton
	itemnotify
	endtext

.NotEnoughMoney:
	jumpopenedtext .NotEnoughMoneyText

.NotEnoughMoneyText:
if DEF(_LOCALE_FR)
	text "Tu n'as pas assez"
	line "d'argent."
	done
else
	text "You don't have"
	line "enough money,"
	cont "honey!"
	done
endc

.SellText:
if DEF(_LOCALE_FR)
	text "Tu veux du miel"
	line "pour attirer des"

	para "#mon?"
	line "C'est ¥1000"

	para "l'unité!"
	done
else
	text "Would you like to"
if DEF(FAITHFUL)
	line "buy some Honey"

	para "for attracting"
	line "#mon?"
else
	line "buy some Sweet"

	para "Honey for attract-"
	line "ing #mon?"
endc
	cont "Just ¥1000 each!"
	done
endc

.GoodbyeText:
if DEF(_LOCALE_FR)
	text "Voilà pour toi,"
	line "ma belle!"
	done
else
	text "Here you go,"
	line "honey!"
	done
endc

.BagFullText:
if DEF(_LOCALE_FR)
	text "Et non, y'a plus"
	line "de place!"
	done
else
	text "Oopsy! You have"
	line "no room for it."
	done
endc

.MenuDataHeader:
	db $40 ; flags
	db 04, 00 ; start coords
	db 11, 14 ; end coords
if DEF(_LOCALE_FR)
	dw .MenuData2_FR
else
	dw .MenuData2_EN
endc
	db 1 ; default option

.MenuData2_EN:
	db $80 ; flags
	db 3 ; items
	db "× 1   ¥1000@"
	db "×10  ¥10000@"
	db "Cancel@"

.MenuData2_FR:
	db $80 ; flags
	db 3 ; items
	db "× 1   ¥1000@"
	db "×10  ¥10000@"
	db "Annuler@"

GoldenrodHoneyHouseButterfreeText:
if DEF(_LOCALE_FR)
	text "PAPILUSION: Piii!"
	done
else
	text "Butterfree: Freeh!"
	done
endc
