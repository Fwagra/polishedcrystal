CeladonHomeDecorStore1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, CELADON_CITY, 12
	warp_event  4,  7, CELADON_CITY, 12
	warp_event  9,  0, CELADON_HOME_DECOR_STORE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  8,  0, BGEVENT_JUMPTEXT, CeladonHomeDecorStore1FDirectoryText

	def_object_events
	object_event  4,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonHomeDecorStore1FReceptionistText, -1
	object_event  5,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonHomeDecorStore1FClerkScript, -1
	object_event  7,  5, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, BULBASAUR, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, NO_FORM, CeladonHomeDecorStore1FBulbasaurDollScript, -1
	object_event  8,  5, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, CHARMANDER, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, NO_FORM, CeladonHomeDecorStore1FCharmanderDollScript, -1
	object_event  9,  5, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, SQUIRTLE, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, NO_FORM, CeladonHomeDecorStore1FSquirtleDollScript, -1
	object_event  0,  4, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonHomeDecorStore1FCooltrainerfText, -1

CeladonHomeDecorStore1FBulbasaurDollScript:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Poupée"
	line "Bulbizarre!"

	para "Elle est trop"
	line "mignonne!"
	done
else
	text "It's a cute"
	line "Bulbasaur doll!"
	done
endc

CeladonHomeDecorStore1FCharmanderDollScript:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Poupée"
	line "Salameche!"

	para "Elle a l'air"
	line "costaud!"
	done
else
	text "It's a tough"
	line "Charmander doll!"
	done
endc

CeladonHomeDecorStore1FSquirtleDollScript:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Poupée"
	line "Carapuce!"

	para "Trop cool!"
	done
else
	text "It's a cool"
	line "Squirtle doll!"
	done
endc

CeladonHomeDecorStore1FClerkScript:
	faceplayer
	opentext
	writetext CeladonHomeDecorStore1FClerkText
	special PlaceMoneyTopRight
.Start:
	loadmenu .MenuData
	verticalmenu
	closewindow
	ifequalfwd $1, .BulbasaurDoll
	ifequalfwd $2, .CharmanderDoll
	ifequalfwd $3, .SquirtleDoll
	endtext

.BulbasaurDoll:
	checkmoney YOUR_MONEY, 16000
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_BULBASAUR_DOLL
	iftruefwd .AlreadyBought
	takemoney YOUR_MONEY, 16000
	setevent EVENT_DECO_BULBASAUR_DOLL
	writetext BoughtBulbasaurDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext BulbasaurDollSentText
	waitbutton
	sjump .Start

.CharmanderDoll:
	checkmoney YOUR_MONEY, 16000
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_CHARMANDER_DOLL
	iftruefwd .AlreadyBought
	takemoney YOUR_MONEY, 16000
	setevent EVENT_DECO_CHARMANDER_DOLL
	writetext BoughtCharmanderDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext CharmanderDollSentText
	waitbutton
	sjump .Start

.SquirtleDoll:
	checkmoney YOUR_MONEY, 16000
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_SQUIRTLE_DOLL
	iftruefwd .AlreadyBought
	takemoney YOUR_MONEY, 16000
	setevent EVENT_DECO_SQUIRTLE_DOLL
	writetext BoughtSquirtleDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext SquirtleDollSentText
	waitbutton
	sjump .Start

.NotEnoughMoney:
	writetext CeladonHomeDecorStore1FNoMoneyText
	waitbutton
	sjump .Start

.AlreadyBought:
	writetext CeladonHomeDecorStore1FAlreadyBoughtText
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
	db "Bulbasaur  ¥16000@"
	db "Charmander ¥16000@"
	db "Squirtle   ¥16000@"
	db "Cancel@"

.MenuData2FR:
	db $80 ; flags
	db 4 ; items
	db "Bulbasaur  ¥16000@"
	db "Charmander ¥16000@"
	db "Squirtle   ¥16000@"
	db "Retour@"

CeladonHomeDecorStore1FReceptionistText:
if DEF(_LOCALE_FR)
	text "Bonjour! Bienvenue"
	line "au Centre Comm."

	cont "Décoration maison!"

	para "L'annuaire est"
	line "au mur."
	done
else
	text "Hello! Welcome to"
	line "Celadon Dept."
	cont "Store Home Decor!"

	para "The directory is"
	line "on the wall."
	done
endc

CeladonHomeDecorStore1FClerkText:
if DEF(_LOCALE_FR)
	text "Souhaitez-vous une"
	line "poupée souvenir"

	para "de Céladopole?"
	done
else
	text "Welcome! Would you"
	line "like a doll as a"
	cont "Celadon souvenir?"
	done
endc

BoughtBulbasaurDollText:
if DEF(_LOCALE_FR)
	text "<PLAYER> a acheté"
	line "Poupée Bulbizarre."
	done
else
	text "<PLAYER> bought"
	line "Bulbasaur Doll."
	done
endc

BulbasaurDollSentText:
if DEF(_LOCALE_FR)
	text "Poupée Bulbizarre"
	line "envoyée chez toi."
	done
else
	text "Bulbasaur Doll"
	line "was sent home."
	done
endc

BoughtCharmanderDollText:
if DEF(_LOCALE_FR)
	text "<PLAYER> a acheté"
	line "Poupée Salameche."
	done
else
	text "<PLAYER> bought"
	line "Charmander Doll."
	done
endc

CharmanderDollSentText:
if DEF(_LOCALE_FR)
	text "Poupée Salameche"
	line "envoyée chez toi."
	done
else
	text "Charmander Doll"
	line "was sent home."
	done
endc

BoughtSquirtleDollText:
if DEF(_LOCALE_FR)
	text "<PLAYER> a acheté"
	line "Poupée Carapuce."
	done
else
	text "<PLAYER> bought"
	line "Squirtle Doll."
	done
endc

SquirtleDollSentText:
if DEF(_LOCALE_FR)
	text "Poupée Carapuce"
	line "envoyée chez toi."
	done
else
	text "Squirtle Doll"
	line "was sent home."
	done
endc

CeladonHomeDecorStore1FNoMoneyText:
if DEF(_LOCALE_FR)
	text "Tu n'as pas assez"
	line "d'argent!"
	done
else
	text "You can't afford"
	line "that!"
	done
endc

CeladonHomeDecorStore1FAlreadyBoughtText:
if DEF(_LOCALE_FR)
	text "Tu l'as déjà!"
	done
else
	text "You already have"
	line "that!"
	done
endc

CeladonHomeDecorStore1FCooltrainerfText:
if DEF(_LOCALE_FR)
	text "Cette aile est"
	line "plus chic que le"

	para "Centre Comm."
	line "principal."
	done
else
	text "This new wing"
	line "feels more upscale"

	para "than the main"
	line "Dept.Store."
	done
endc

CeladonHomeDecorStore1FDirectoryText:
if DEF(_LOCALE_FR)
	text "1F: Accueil"

	para "2F: Lits"

	para "3F: Tapis"

	para "4F: Peluches"
	done
else
	text "1F: Lobby"

	para "2F: Beds"

	para "3F: Carpets"

	para "4F: Jumbo Dolls"
	done
endc
