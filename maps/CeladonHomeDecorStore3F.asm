CeladonHomeDecorStore3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6,  0, CELADON_HOME_DECOR_STORE_2F, 2
	warp_event  9,  0, CELADON_HOME_DECOR_STORE_4F, 1

	def_coord_events

	def_bg_events
	bg_event  8,  0, BGEVENT_JUMPTEXT, CeladonHomeDecorStore3FDirectoryText

	def_object_events
	object_event  7,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonHomeDecorStore3FClerk1Script, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonHomeDecorStore3FClerk2Script, -1
	object_event  3,  5, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonHomeDecorStore3FYoungsterText, -1
	object_event  9,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonHomeDecorStore3FBeautyText, -1

CeladonHomeDecorStore3FClerk1Script:
	faceplayer
	opentext
	writetext CeladonHomeDecorStore3FClerk1Text
	special PlaceMoneyTopRight
.Start:
	loadmenu .MenuData
	verticalmenu
	closewindow
	ifequalfwd $1, .RedCarpet
	ifequalfwd $2, .YellowCarpet
	ifequalfwd $3, .GreenCarpet
	endtext

.RedCarpet:
	checkmoney YOUR_MONEY, 45000
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_CARPET_1
	iftruefwd .AlreadyBought
	takemoney YOUR_MONEY, 45000
	setevent EVENT_DECO_CARPET_1
	writetext BoughtRedCarpetText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext RedCarpetSentText
	waitbutton
	sjump .Start

.YellowCarpet:
	checkmoney YOUR_MONEY, 45000
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_CARPET_3
	iftruefwd .AlreadyBought
	takemoney YOUR_MONEY, 45000
	setevent EVENT_DECO_CARPET_3
	writetext BoughtYellowCarpetText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext YellowCarpetSentText
	waitbutton
	sjump .Start

.GreenCarpet:
	checkmoney YOUR_MONEY, 45000
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_CARPET_4
	iftruefwd .AlreadyBought
	takemoney YOUR_MONEY, 45000
	setevent EVENT_DECO_CARPET_4
	writetext BoughtGreenCarpetText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext GreenCarpetSentText
	waitbutton
	sjump .Start

.NotEnoughMoney:
	writetext CeladonHomeDecorStore3FNoMoneyText
	waitbutton
	sjump .Start

.AlreadyBought:
	writetext CeladonHomeDecorStore3FAlreadyBoughtText
	waitbutton
	sjump .Start

.MenuData:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 19, 11
if DEF(_LOCALE_FR)
	dw .MenuData2FR
else
	dw .MenuData2
endc
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Red       ¥45000@"
	db "Yellow    ¥45000@"
	db "Green     ¥45000@"
	db "Cancel@"

.MenuData2FR:
	db $80 ; flags
	db 4 ; items
	db "Red       ¥45000@"
	db "Yellow    ¥45000@"
	db "Green     ¥45000@"
	db "Retour@"

CeladonHomeDecorStore3FClerk2Script:
	checkevent EVENT_DECO_CARPET_2
	iftrue_jumptextfaceplayer CeladonHomeDecorStore3FClerk2Text
	faceplayer
	opentext
	special PlaceMoneyTopRight
	writetext CeladonHomeDecorStore3FClerk2SaleText
	yesorno
	iffalse_jumpopenedtext CeladonHomeDecorStore3FClerk2NoText
	checkmoney YOUR_MONEY, 35000
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	takemoney YOUR_MONEY, 35000
	setevent EVENT_DECO_CARPET_2
	writetext BoughtBlueCarpetText
	special PlaceMoneyTopRight
	playsound SFX_TRANSACTION
	waitbutton
	writetext BlueCarpetSentText
	waitbutton
	jumpopenedtext CeladonHomeDecorStore3FClerk2YesText

.NotEnoughMoney:
	jumpopenedtext CeladonHomeDecorStore3FNoMoneyText

CeladonHomeDecorStore3FClerk1Text:
if DEF(_LOCALE_FR)
	text "Bienvenue! Un"
	line "tapis peut-être?"
	done
else
	text "Welcome! Would"
	line "you like a carpet?"
	done
endc

CeladonHomeDecorStore3FClerk2Text:
if DEF(_LOCALE_FR)
	text "Un tapis, ca"
	line "fait toute la"

	para "piece, non?"
	done
else
	text "Doesn't a carpet"
	line "really tie your"
	cont "room together?"
	done
endc

CeladonHomeDecorStore3FClerk2SaleText:
if DEF(_LOCALE_FR)
	text "Notre tapis bleu"
	line "royal est a"

	para "¥35000! Tu"
	line "en veux un?"
	done
else
	text "Our imported"
	line "Royal Blue Carpet"

	para "is on sale right"
	line "now for ¥35,000."

	para "Would you like to"
	line "buy one?"
	done
endc

CeladonHomeDecorStore3FClerk2YesText:
if DEF(_LOCALE_FR)
	text "Merci!"
	line "Bonne journee!"
	done
else
	text "Thank you!"
	line "Have a nice day!"
	done
endc

CeladonHomeDecorStore3FClerk2NoText:
if DEF(_LOCALE_FR)
	text "Bonne journee!"
	done
else
	text "Have a nice day!"
	done
endc

BoughtRedCarpetText:
if DEF(_LOCALE_FR)
	text "<PLAYER> a acheté"
	line "Tapis rouge."
	done
else
	text "<PLAYER> bought"
	line "Red Carpet."
	done
endc

RedCarpetSentText:
if DEF(_LOCALE_FR)
	text "Tapis rouge"
	line "envoyé chez toi."
	done
else
	text "Red Carpet"
	line "was sent home."
	done
endc

BoughtBlueCarpetText:
if DEF(_LOCALE_FR)
	text "<PLAYER> a acheté"
	line "Tapis bleu."
	done
else
	text "<PLAYER> bought"
	line "Blue Carpet."
	done
endc

BlueCarpetSentText:
if DEF(_LOCALE_FR)
	text "Tapis bleu"
	line "envoyé chez toi."
	done
else
	text "Blue Carpet"
	line "was sent home."
	done
endc

BoughtYellowCarpetText:
if DEF(_LOCALE_FR)
	text "<PLAYER> a acheté"
	line "Tapis jaune."
	done
else
	text "<PLAYER> bought"
	line "Yellow Carpet."
	done
endc

YellowCarpetSentText:
if DEF(_LOCALE_FR)
	text "Tapis jaune"
	line "envoyé chez toi."
	done
else
	text "Yellow Carpet"
	line "was sent home."
	done
endc

BoughtGreenCarpetText:
if DEF(_LOCALE_FR)
	text "<PLAYER> a acheté"
	line "Tapis vert."
	done
else
	text "<PLAYER> bought"
	line "Green Carpet."
	done
endc

GreenCarpetSentText:
if DEF(_LOCALE_FR)
	text "Tapis vert"
	line "envoyé chez toi."
	done
else
	text "Green Carpet"
	line "was sent home."
	done
endc

CeladonHomeDecorStore3FNoMoneyText:
if DEF(_LOCALE_FR)
	text "Tu n'as pas assez"
	line "d'argent!"
	done
else
	text "You can't afford"
	line "that!"
	done
endc

CeladonHomeDecorStore3FAlreadyBoughtText:
if DEF(_LOCALE_FR)
	text "Tu l'as déjà!"
	done
else
	text "You already have"
	line "that!"
	done
endc

CeladonHomeDecorStore3FYoungsterText:
if DEF(_LOCALE_FR)
	text "Ce tapis est"
	line "tout doux!"
	done
else
	text "This carpet feels"
	line "so plush!"
	done
endc

CeladonHomeDecorStore3FBeautyText:
if DEF(_LOCALE_FR)
	text "Certains tapis"
	line "viennent de"

	para "Kalos!"
	done
else
	text "Some of these"
	line "carpets are im-"
	cont "ported from Kalos!"
	done
endc

CeladonHomeDecorStore3FDirectoryText:
if DEF(_LOCALE_FR)
	text "Elegance en"
	line "couleurs!"

	para "3F: Tapis"
	done
else
	text "Colorful Elegance"

	para "3F: Carpets"
	done
endc
