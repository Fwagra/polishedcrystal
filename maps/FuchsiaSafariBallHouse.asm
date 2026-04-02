FuchsiaSafariBallHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 11
	warp_event  3,  7, FUCHSIA_CITY, 11

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaSafariBallHouseOfficerScript, -1

FuchsiaSafariBallHouseOfficerScript:
	faceplayer
	opentext
	writetext .IntroText
	special PlaceMoneyTopRight
	loadmenu .MenuDataHeader
	verticalmenu
	closewindow
	ifequalfwd $1, .Buy1
	ifequalfwd $2, .Buy10
	jumpthisopenedtext ; cancel

if DEF(_LOCALE_FR)
	text "Qu'est-ce que"
	line "j'en ferai?"
	done
else
	text "What will I do"
	line "with them all?"
	done
endc

.Buy1:
	checkmoney YOUR_MONEY, 2000
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	giveitem SAFARI_BALL
	iffalse_jumpopenedtext .BagFullText
	takemoney YOUR_MONEY, 2000
	sjumpfwd .Done

.Buy10:
	checkmoney YOUR_MONEY, 20000
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	giveitem SAFARI_BALL, 10
	iffalse_jumpopenedtext .BagFullText
	takemoney YOUR_MONEY, 20000

.Done:
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	writetext .GoodbyeText
	promptbutton
	itemnotify
	endtext

.NotEnoughMoney:
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Tu n'as pas assez"
	line "d'argent."
	done
else
	text "You don't have"
	line "enough money."
	done
endc

.IntroText:
if DEF(_LOCALE_FR)
	text "Je gérais le Parc"
	line "Safari."

	para "Maintenant qu'il"
	line "est fermé, je dois"

	para "gagner de l'argent"
	line "autrement."

	para "Tu veux acheter"
	line "des # BALL Safari"
	cont "qui restent?"

	para "C'est un objet de"
	line "collection!"
	done
else
	text "I used to manage"
	line "the Safari Game."

	para "Now that it's"
	line "closed I need to"

	para "make money an-"
	line "other way."

	para "Want to buy some"
	line "leftover Safari"
	cont "Balls?"

	para "They're a collec-"
	line "tor's item!"
	done
endc

.GoodbyeText:
if DEF(_LOCALE_FR)
	text "Merci, l'ami!"
	done
else
	text "Thanks, pal!"
	done
endc

.BagFullText:
if DEF(_LOCALE_FR)
	text "Tu peux pas les"
	line "porter!"
	done
else
	text "You can't carry"
	line "them!"
	done
endc

.MenuDataHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 4, 14, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db "× 1   ¥2000@"
	db "×10  ¥20000@"
	db "Cancel@"
