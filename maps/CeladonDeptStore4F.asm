CeladonDeptStore4F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 12,  0, CELADON_DEPT_STORE_5F, 1
	warp_event 15,  0, CELADON_DEPT_STORE_3F, 2
	warp_event  2,  0, CELADON_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_JUMPTEXT, CeladonDeptStore4FDirectoryText

	def_object_events
	object_event 13,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_CELADON_4F, -1
	object_event  7,  6, SPRITE_POKEMANIAC, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonDeptStore4FSuperNerdText, -1
	object_event  8,  2, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonDeptStore4FYoungsterText, -1
	object_event 15,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PosterClerkScript, -1

PosterClerkScript:
	faceplayer
	opentext
	writetext PosterClerkText
	special PlaceMoneyTopRight
.Start:
	loadmenu .MenuData
	verticalmenu
	closewindow
	ifequalfwd $1, .MarillPoster
	ifequalfwd $2, .ClefairyPoster
	ifequalfwd $3, .PikachuPoster
	endtext

.MarillPoster:
	checkmoney YOUR_MONEY, 3200
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_POSTER_3
	iftruefwd .AlreadyBought
	takemoney YOUR_MONEY, 3200
	setevent EVENT_DECO_POSTER_3
	writetext BoughtMarillPosterText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext MarillPosterSentText
	waitbutton
	sjump .Start

.ClefairyPoster:
	checkmoney YOUR_MONEY, 4800
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_POSTER_2
	iftruefwd .AlreadyBought
	takemoney YOUR_MONEY, 4800
	setevent EVENT_DECO_POSTER_2
	writetext BoughtClefairyPosterText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext ClefairyPosterSentText
	waitbutton
	sjump .Start

.PikachuPoster:
	checkmoney YOUR_MONEY, 6400
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_POSTER_1
	iftruefwd .AlreadyBought
	takemoney YOUR_MONEY, 6400
	setevent EVENT_DECO_POSTER_1
	writetext BoughtPikachuPosterText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext PikachuPosterSentText
	waitbutton
	sjump .Start

.NotEnoughMoney:
	writetext PosterClerkNoMoneyText
	waitbutton
	sjump .Start

.AlreadyBought:
	writetext PosterClerkAlreadyBoughtText
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
	db "Marill      ¥3200@"
	db "Clefairy    ¥4800@"
	db "Pikachu     ¥6400@"
	db "Cancel@"

.MenuData2FR:
	db $80 ; flags
	db 4 ; items
	db "Marill      ¥3200@"
	db "Clefairy    ¥4800@"
	db "Pikachu     ¥6400@"
	db "Retour@"

PosterClerkText:
if DEF(_LOCALE_FR)
	text "Bienvenue! Un"
	line "poster peut-être?"
	done
else
	text "Welcome! Would you"
	line "like a poster?"
	done
endc

PosterClerkNoMoneyText:
if DEF(_LOCALE_FR)
	text "Il te manque de"
	line "l'argent."
	done
else
	text "You don't have"
	line "enough money."
	done
endc

PosterClerkAlreadyBoughtText:
if DEF(_LOCALE_FR)
	text "Tu l'as déjà"
	line "acheté."
	done
else
	text "You bought that"
	line "already."
	done
endc

BoughtMarillPosterText:
if DEF(_LOCALE_FR)
	text "<PLAYER> a acheté"
	line "Poster Marill."
	done
else
	text "<PLAYER> bought"
	line "Marill Poster."
	done
endc

MarillPosterSentText:
if DEF(_LOCALE_FR)
	text "Poster Marill"
	line "envoyé chez toi."
	done
else
	text "Marill Poster"
	line "was sent home."
	done
endc

BoughtClefairyPosterText:
if DEF(_LOCALE_FR)
	text "<PLAYER> a acheté"
	line "Poster Mélofée."
	done
else
	text "<PLAYER> bought"
	line "Clefairy Poster."
	done
endc

ClefairyPosterSentText:
if DEF(_LOCALE_FR)
	text "Poster Mélofée"
	line "envoyé chez toi."
	done
else
	text "Clefairy Poster"
	line "was sent home."
	done
endc

BoughtPikachuPosterText:
if DEF(_LOCALE_FR)
	text "<PLAYER> a acheté"
	line "Poster Pikachu."
	done
else
	text "<PLAYER> bought"
	line "Pikachu Poster."
	done
endc

PikachuPosterSentText:
if DEF(_LOCALE_FR)
	text "Poster Pikachu"
	line "envoyé chez toi."
	done
else
	text "Pikachu Poster"
	line "was sent home."
	done
endc

CeladonDeptStore4FSuperNerdText:
if DEF(_LOCALE_FR)
	text "Je viens acheter"
	line "du Courrier"

	para "Charmant pour"
	line "ma copine."
	done
else
	text "I'm here to buy"
	line "Lovely Mail for"
	cont "my girlfriend."
	done
endc

CeladonDeptStore4FYoungsterText:
if DEF(_LOCALE_FR)
	text "C'est le seul"
	line "endroit où on"

	para "trouve des"
	line "affiches."

	para "Je rassemble les"
	line "affiches ici!"
	done
else
	text "This is the only"
	line "place where you"

	para "can buy posters."
	line "I collect them!"
	done
endc

CeladonDeptStore4FDirectoryText:
if DEF(_LOCALE_FR)
	text "Exprime-toi avec"
	line "des cadeaux!"

	para "4F: Cadeaux"
	line "    Sages"
	done
else
	text "Express Yourself"
	line "With Gifts!"

	para "4F: Wiseman Gifts"
	done
endc
