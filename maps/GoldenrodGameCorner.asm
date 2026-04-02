DEF GOLDENRODGAMECORNER_TM35_COINS EQU 4000
DEF GOLDENRODGAMECORNER_TM24_COINS EQU 4000
DEF GOLDENRODGAMECORNER_TM13_COINS EQU 4000
DEF GOLDENRODGAMECORNER_ABRA_COINS     EQU 200
DEF GOLDENRODGAMECORNER_CUBONE_COINS   EQU 800
DEF GOLDENRODGAMECORNER_CLEFAIRY_COINS EQU 1500

GoldenrodGameCorner_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2, 13, GOLDENROD_CITY, 10
	warp_event  3, 13, GOLDENROD_CITY, 10

	def_coord_events

	def_bg_events
	bg_event  6,  6, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  6,  7, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  6,  8, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  6,  9, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  6, 10, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  6, 11, BGEVENT_RIGHT, GoldenrodGameCornerSlotsMachineScript
	bg_event  7,  6, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  7,  7, BGEVENT_READ, GoldenrodGameCornerLuckySlotsMachineScript
	bg_event  7,  8, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  7,  9, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  7, 10, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event  7, 11, BGEVENT_LEFT, GoldenrodGameCornerSlotsMachineScript
	bg_event 12,  6, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 12,  7, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 12,  8, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 12,  9, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 12, 10, BGEVENT_READ, GoldenrodGameCornerSlotsMachineScript
	bg_event 12, 11, BGEVENT_RIGHT, GoldenrodGameCornerSlotsMachineScript
	bg_event 13,  6, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 13,  7, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 13,  8, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 13,  9, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 13, 10, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 13, 11, BGEVENT_LEFT, GoldenrodGameCornerCardFlipMachineScript
	bg_event 18,  6, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 18,  7, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 18,  8, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 18,  9, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 18, 10, BGEVENT_READ, GoldenrodGameCornerCardFlipMachineScript
	bg_event 18, 11, BGEVENT_RIGHT, GoldenrodGameCornerCardFlipMachineScript
	bg_event 12,  1, BGEVENT_LEFT, GoldenrodGameCornerLeftTheirDrinkScript

	def_object_events
	object_event  3,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumpstd, gamecornercoinvendor, -1
	object_event 16,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerTMVendorScript, -1
	object_event 18,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerPrizeMonVendorScript, -1
	object_event 10,  1, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerFisherScript, -1
	object_event 10,  3, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_WANDER, 1, 2, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodGameCornerCooltrainerFText, -1
	object_event 17,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerPokefanFScript, -1
	object_event  8,  7, SPRITE_BURGLAR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, (1 << DAY) | (1 << NITE), 0, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerPharmacistScript, -1
	object_event 14,  8, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerCooltrainerMScript, -1
	object_event  5, 10, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerGentlemanScript, -1
	object_event 11, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerPokefanM1Script, -1
	object_event 17, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodGameCornerPokefanM3Script, -1
	object_event  2,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodGameCornerPokefanM2Text, EVENT_BEAT_WHITNEY

GoldenrodGameCornerPokefanM3Script:
	showtextfaceplayer GoldenrodGameCornerPokefanM3Text
	turnobject LAST_TALKED, RIGHT
	end

GoldenrodGameCornerFisherScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_PAY_DAY_INTRO
	iftruefwd GoldenrodGameCornerTutorPayDayScript
	writetext GoldenrodGameCornerFisherText
	waitbutton
	setevent EVENT_LISTENED_TO_PAY_DAY_INTRO
GoldenrodGameCornerTutorPayDayScript:
	writetext Text_GoldenrodGameCornerTutorPayDayQuestion
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	yesorno
	iffalsefwd .TutorRefused
	setval PAY_DAY
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_GoldenrodGameCornerTutorRefused

.NoSilverLeaf
	waitbutton
	jumpopenedtext Text_GoldenrodGameCornerTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_GoldenrodGameCornerTutorTaught

GoldenrodGameCornerTMVendorScript:
	faceplayer
	opentext
	writetext GoldenrodGameCornerPrizeVendorIntroText
	waitbutton
	checkkeyitem COIN_CASE
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorNoCoinCaseText
	writetext GoldenrodGameCornerPrizeVendorWhichPrizeText
GoldenrodGameCornerTMVendor_LoopScript: ; 056c36
	special Special_DisplayCoinCaseBalance
	loadmenu GoldenrodGameCornerTMVendorMenuData
	verticalmenu
	closewindow
	ifequalfwd $1, .flamethrower
	ifequalfwd $2, .thunderbolt
	ifequalfwd $3, .ice_beam
	jumpopenedtext GoldenrodGameCornerPrizeVendorQuitText

.flamethrower:
	checktmhm TM_FLAMETHROWER
	iftruefwd GoldenrodGameCornerPrizeVendor_AlreadyHaveTMScript
	checkcoins GOLDENRODGAMECORNER_TM35_COINS
	ifequalfwd HAVE_LESS, GoldenrodGameCornerPrizeVendor_NotEnoughCoinsScript
	gettmhmname TM_FLAMETHROWER, STRING_BUFFER_3
	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorQuitText
	givetmhm TM_FLAMETHROWER
	takecoins GOLDENRODGAMECORNER_TM35_COINS
	sjumpfwd GoldenrodGameCornerTMVendor_FinishScript

.thunderbolt:
	checktmhm TM_THUNDERBOLT
	iftruefwd GoldenrodGameCornerPrizeVendor_AlreadyHaveTMScript
	checkcoins GOLDENRODGAMECORNER_TM24_COINS
	ifequalfwd HAVE_LESS, GoldenrodGameCornerPrizeVendor_NotEnoughCoinsScript
	gettmhmname TM_THUNDERBOLT, STRING_BUFFER_3
	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorQuitText
	givetmhm TM_THUNDERBOLT
	takecoins GOLDENRODGAMECORNER_TM24_COINS
	sjumpfwd GoldenrodGameCornerTMVendor_FinishScript

.ice_beam:
	checktmhm TM_ICE_BEAM
	iftruefwd GoldenrodGameCornerPrizeVendor_AlreadyHaveTMScript
	checkcoins GOLDENRODGAMECORNER_TM13_COINS
	ifequalfwd HAVE_LESS, GoldenrodGameCornerPrizeVendor_NotEnoughCoinsScript
	gettmhmname TM_ICE_BEAM, STRING_BUFFER_3
	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorQuitText
	givetmhm TM_ICE_BEAM
	takecoins GOLDENRODGAMECORNER_TM13_COINS
	sjumpfwd GoldenrodGameCornerTMVendor_FinishScript

GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript:
	writetext GoldenrodGameCornerPrizeVendorConfirmPrizeText
	yesorno
	end

GoldenrodGameCornerTMVendor_FinishScript:
	waitsfx
	playsound SFX_TRANSACTION
	writetext GoldenrodGameCornerPrizeVendorHereYouGoText
	waitbutton
	sjump GoldenrodGameCornerTMVendor_LoopScript

GoldenrodGameCornerPrizeVendor_AlreadyHaveTMScript:
	writetext GoldenrodGameCornerPrizeVendorAlreadyHaveTMText
	waitbutton
	sjump GoldenrodGameCornerTMVendor_LoopScript

GoldenrodGameCornerPrizeVendor_NotEnoughCoinsScript:
	jumpopenedtext GoldenrodGameCornerPrizeVendorNeedMoreCoinsText

GoldenrodGameCornerTMVendorMenuData:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 15, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "TM35    {d:GOLDENRODGAMECORNER_TM35_COINS}@"
	db "TM24    {d:GOLDENRODGAMECORNER_TM24_COINS}@"
	db "TM13    {d:GOLDENRODGAMECORNER_TM13_COINS}@"
	db "Cancel@"

GoldenrodGameCornerPrizeMonVendorScript:
	faceplayer
	opentext
	writetext GoldenrodGameCornerPrizeVendorIntroText
	waitbutton
	checkkeyitem COIN_CASE
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorNoCoinCaseText
.loop
	writetext GoldenrodGameCornerPrizeVendorWhichPrizeText
	special Special_DisplayCoinCaseBalance
	loadmenu .MenuDataHeader
	verticalmenu
	closewindow
	ifequalfwd $1, .abra
	ifequalfwd $2, .cubone
	ifequalfwd $3, .clefairy
	jumpopenedtext GoldenrodGameCornerPrizeVendorQuitText

.abra
	checkcoins GOLDENRODGAMECORNER_ABRA_COINS
	ifequal HAVE_LESS, GoldenrodGameCornerPrizeVendor_NotEnoughCoinsScript
	getmonname ABRA, STRING_BUFFER_3
	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorQuitText
	waitsfx
	playsound SFX_TRANSACTION
	writetext GoldenrodGameCornerPrizeVendorHereYouGoText
	waitbutton
	givepoke ABRA, 5
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorNoMoreRoomText
	setmonval ABRA
	special Special_GameCornerPrizeMonCheckDex
	takecoins GOLDENRODGAMECORNER_ABRA_COINS
	sjump .loop

.cubone
	checkcoins GOLDENRODGAMECORNER_CUBONE_COINS
	ifequal HAVE_LESS, GoldenrodGameCornerPrizeVendor_NotEnoughCoinsScript
	getmonname CUBONE, STRING_BUFFER_3
	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorQuitText
	waitsfx
	playsound SFX_TRANSACTION
	writetext GoldenrodGameCornerPrizeVendorHereYouGoText
	waitbutton
	givepoke CUBONE, 10
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorNoMoreRoomText
	setmonval CUBONE
	special Special_GameCornerPrizeMonCheckDex
	takecoins GOLDENRODGAMECORNER_CUBONE_COINS
	sjump .loop

.clefairy
	checkcoins GOLDENRODGAMECORNER_CLEFAIRY_COINS
	ifequal HAVE_LESS, GoldenrodGameCornerPrizeVendor_NotEnoughCoinsScript
	getmonname CLEFAIRY, STRING_BUFFER_3
	scall GoldenrodGameCornerPrizeVendor_ConfirmPurchaseScript
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorQuitText
	waitsfx
	playsound SFX_TRANSACTION
	writetext GoldenrodGameCornerPrizeVendorHereYouGoText
	waitbutton
	givepoke CLEFAIRY, 15
	iffalse_jumpopenedtext GoldenrodGameCornerPrizeVendorNoMoreRoomText
	setmonval CLEFAIRY
	special Special_GameCornerPrizeMonCheckDex
	takecoins GOLDENRODGAMECORNER_CLEFAIRY_COINS
	sjump .loop

.MenuDataHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 17, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Abra        {d:GOLDENRODGAMECORNER_ABRA_COINS}@"
	db "Cubone      {d:GOLDENRODGAMECORNER_CUBONE_COINS}@"
	db "Clefairy   {d:GOLDENRODGAMECORNER_CLEFAIRY_COINS}@"
	db "Cancel@"

GoldenrodGameCornerPharmacistScript:
	showtextfaceplayer GoldenrodGameCornerPharmacistText
	turnobject LAST_TALKED, LEFT
	end

GoldenrodGameCornerPokefanM1Script:
	showtextfaceplayer GoldenrodGameCornerPokefanM1Text
	turnobject LAST_TALKED, RIGHT
	end

GoldenrodGameCornerCooltrainerMScript:
	showtextfaceplayer GoldenrodGameCornerCooltrainerMText
	turnobject LAST_TALKED, LEFT
	end

GoldenrodGameCornerPokefanFScript:
	showtextfaceplayer GoldenrodGameCornerPokefanFText
	turnobject LAST_TALKED, RIGHT
	end

GoldenrodGameCornerGentlemanScript:
	showtextfaceplayer GoldenrodGameCornerGentlemanText
	turnobject LAST_TALKED, RIGHT
	end

GoldenrodGameCornerLeftTheirDrinkScript:
	jumptext GoldenrodGameCornerLeftTheirDrinkText

GoldenrodGameCornerSlotsMachineScript:
	random 6
	ifequalfwd 0, GoldenrodGameCornerLuckySlotsMachineScript
	reanchormap
	setval FALSE
	special Special_SlotMachine
	endtext

GoldenrodGameCornerLuckySlotsMachineScript:
	reanchormap
	setval TRUE
	special Special_SlotMachine
	endtext

GoldenrodGameCornerCardFlipMachineScript:
	reanchormap
	special Special_CardFlip
	endtext

GoldenrodGameCornerPrizeVendorIntroText:
if DEF(_LOCALE_FR)
	text "Bienvenue!"

	para "On échange tes"
	line "jetons contre de"
	cont "super lots!"
	done
else
	text "Welcome!"

	para "We exchange your"
	line "game coins for"
	cont "fabulous prizes!"
	done
endc

GoldenrodGameCornerPrizeVendorWhichPrizeText:
if DEF(_LOCALE_FR)
	text "Quel lot tu veux?"
	done
else
	text "Which prize would"
	line "you like?"
	done
endc

GoldenrodGameCornerPrizeVendorConfirmPrizeText:
	text_ram wStringBuffer3
	text "."
if DEF(_LOCALE_FR)
	line "C'est ça?"
else
	line "Is that right?"
endc
	done

GoldenrodGameCornerPrizeVendorHereYouGoText:
if DEF(_LOCALE_FR)
	text "Tiens!"
	done
else
	text "Here you go!"
	done
endc

GoldenrodGameCornerPrizeVendorAlreadyHaveTMText:
if DEF(_LOCALE_FR)
	text "Tu as déjà cette"
	line "CT!"
	done
else
	text "But you already"
	line "have that TM!"
	done
endc

GoldenrodGameCornerPrizeVendorNeedMoreCoinsText:
if DEF(_LOCALE_FR)
	text "Désolé! Il te faut"
	line "plus de jetons."
	done
else
	text "Sorry! You need"
	line "more coins."
	done
endc

GoldenrodGameCornerPrizeVendorNoMoreRoomText:
if DEF(_LOCALE_FR)
	text "Oh non. Tu n'as"
	line "plus de place."

	para "Ta BOITE est"
	line "pleine."

	para "Je te rends tes"
	line "jetons."
	done
else
	text "Oh, no. You can't"
	line "carry any more and"
	cont "your Box is full."

	para "I'll return your"
	line "coins to you."
	done
endc

GoldenrodGameCornerPrizeVendorQuitText:
if DEF(_LOCALE_FR)
	text "OK. Economise tes"
	line "jetons et"
	cont "reviens plus tard!"
	done
else
	text "OK. Please save"
	line "your coins and"
	cont "come again!"
	done
endc

GoldenrodGameCornerPrizeVendorNoCoinCaseText:
if DEF(_LOCALE_FR)
	text "Oh? Tu n'as pas"
	line "de BOITE JETON."
	done
else
	text "Oh? You don't have"
	line "a Coin Case."
	done
endc

GoldenrodGameCornerFisherText:
if DEF(_LOCALE_FR)
	text "Jackpot!"
	line "Je fête ça"
	cont "aux machines!"

	para "...Tu sais, les"
	line "#mon ont aussi"
	cont "Jackpot."
	done
else
	text "Today's my pay day!"
	line "Time to celebrate"
	cont "with some slots!"

	para "…You know, #mon"
	line "get a Pay Day too."
	done
endc

Text_GoldenrodGameCornerTutorPayDayQuestion:
if DEF(_LOCALE_FR)
	text "Si tu me donnes"
	line "une FEUIL.ARGENT,"

	para "j'apprends"
	line "Jackpot à ton"
	cont "#mon."
	done
else
	text "If you give me a"
	line "Silver Leaf, I'll"

	para "teach Pay Day to"
	line "your #mon."
	done
endc

Text_GoldenrodGameCornerTutorNoSilverLeaf:
if DEF(_LOCALE_FR)
	text "Tu n'as pas de"
	line "FEUIL.ARGENT?"
	cont "Tant pis."
	done
else
	text "You don't have a"
	line "Silver Leaf?"
	cont "Never mind then."
	done
endc

Text_GoldenrodGameCornerTutorRefused:
if DEF(_LOCALE_FR)
	text "Tant pis."
	done
else
	text "Never mind then."
	done
endc

Text_GoldenrodGameCornerTutorTaught:
if DEF(_LOCALE_FR)
	text "Jackpot te"
	line "donne plus de"
	cont "fric après"
	cont "un combat."

	para "Utilise-la et tu"
	line "seras riche!"
	done
else
	text "Pay Day nets you"
	line "more money after a"
	cont "battle."

	para "Keep using it and"
	line "you'll be rich!"
	done
endc

GoldenrodGameCornerPharmacistText:
if DEF(_LOCALE_FR)
	text "Je joue tout le"
	line "temps à cette"

	para "machine. Elle me"
	line "fait plus gagner"
	cont "que les autres."
	cont "Enfin, je crois!"
	done
else
	text "I always play this"
	line "slot machine. It"

	para "pays out more than"
	line "others, I think."
	done
endc

GoldenrodGameCornerPokefanM1Text:
if DEF(_LOCALE_FR)
	text "J'aime trop cette"
	line "nouvelle machine."

	para "Y'a beaucoup plus"
	line "de suspense qu'"
	cont "avec celles de"
	cont "CELADOPOLE."
	done
else
	text "I just love this"
	line "new slot machine."

	para "It's more of a"
	line "challenge than the"
	cont "ones in Celadon."
	done
endc

GoldenrodGameCornerCooltrainerMText:
if DEF(_LOCALE_FR)
	text "Dans la vie tout"
	line "est question de"
	cont "chance!"
	cont "Moi j'en ai pas."
	cont "Et alors?"
	done
else
	text "Life is a gamble."
	line "I'm going to flip"
	cont "cards till I drop!"
	done
endc

GoldenrodGameCornerPokefanFText:
if DEF(_LOCALE_FR)
	text "Et hop les cartes!"

	para "Je préfère ça aux"
	line "machines..."

	para "C'est plus facile"
	line "de gagner."

	para "Mais les gains"
	line "sont plus faibles."
	done
else
	text "Card flip…"

	para "I prefer it over"
	line "the slots because"

	para "it's easier to"
	line "figure the odds."

	para "But the payout is"
	line "much lower."
	done
endc

GoldenrodGameCornerCooltrainerFText:
if DEF(_LOCALE_FR)
	text "Tant que je"
	line "perds..."
	cont "Je reste!"
	done
else
	text "I won't quit until"
	line "I win!"
	done
endc

GoldenrodGameCornerGentlemanText:
if DEF(_LOCALE_FR)
	text "J'ai appris"
	line "Laser Glace"
	cont "à mon #mon."

	para "Dur d'avoir assez"
	line "de jetons, mais"
	cont "ça valait le coup."
	done
else
	text "I taught Ice Beam"
	line "to my #mon."

	para "It was hard to get"
	line "enough coins for"

	para "it, but it was"
	line "worth it."
	done
endc

GoldenrodGameCornerPokefanM2Text:
if DEF(_LOCALE_FR)
	text "Je gagnais jamais"
	line "aux machines,"

	para "et aux cartes..."
	line "Pareil..."

	para "Quand t'es nul,"
	line "t'es nul!!"

	para "J'ai jeté ma BOITE"
	line "JETON dans le"
	cont "SOUTERRAIN."
	done
else
	text "I couldn't win at"
	line "the slots, and I"

	para "blew it on card"
	line "flipping…"

	para "I got so furious,"
	line "I tossed out my"

	para "Coin Case in the"
	line "Underground."
	done
endc

GoldenrodGameCornerPokefanM3Text:
if DEF(_LOCALE_FR)
	text "Wahahah! Encore"
	line "des jetons!"
	done
else
	text "Wahahah! The coins"
	line "keep rolling in!"
	done
endc

GoldenrodGameCornerLeftTheirDrinkText:
if DEF(_LOCALE_FR)
	text "Quelqu'un a oublié"
	line "sa boisson."
	done
else
	text "Someone left their"
	line "drink."

	para "It smells sweet."
	done
endc
