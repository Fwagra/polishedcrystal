DEF ROUTE39FARMHOUSE_MILK_PRICE EQU 500
DEF ROUTE39FARMHOUSE_DOZEN_MILK_PRICE EQU 6000

Route39Farmhouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_39, 2
	warp_event  3,  7, ROUTE_39, 2

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_JUMPSTD, picturebookshelf
	bg_event  7,  1, BGEVENT_JUMPSTD, picturebookshelf

	def_object_events
	object_event  3,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PokefanM_DairyFarmer, -1
	object_event  5,  4, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PokefanF_AcrobaticsFarmer, -1

PokefanM_DairyFarmer:
	faceplayer
	opentext
	checkevent EVENT_HEALED_MOOMOO
	iftruefwd FarmerMScript_SellMilk
	writetext FarmerMText_SickCow
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_FARMER_ABOUT_MOOMOO
	end

FarmerMScript_SellMilk:
	checkflag ENGINE_BOUGHT_MOOMOO_MILK
	iftruefwd .Milking
	writetext FarmerMText_BuyMilk
	special PlaceMoneyTopRight
	loadmenu .MenuDataHeader
	verticalmenu
	closewindow
	ifequalfwd $1, .Buy1
	ifequalfwd $2, .Buy12
	sjumpfwd .Cancel

.Buy1:
	checkmoney YOUR_MONEY, ROUTE39FARMHOUSE_MILK_PRICE
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	giveitem MOOMOO_MILK
	iffalsefwd .BagFull
	takemoney YOUR_MONEY, ROUTE39FARMHOUSE_MILK_PRICE
	sjumpfwd .Done

.Buy12:
	checkmoney YOUR_MONEY, ROUTE39FARMHOUSE_DOZEN_MILK_PRICE
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	giveitem MOOMOO_MILK, 12
	iffalsefwd .BagFull
	takemoney YOUR_MONEY, ROUTE39FARMHOUSE_DOZEN_MILK_PRICE

.Done:
	setflag ENGINE_BOUGHT_MOOMOO_MILK
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	writetext FarmerMText_GotMilk
	promptbutton
	itemnotify
	endtext

.Cancel:
	jumpopenedtext FarmerMText_NoSale

.NotEnoughMoney:
	jumpopenedtext FarmerMText_NoMoney

.BagFull:
	jumpopenedtext FarmerMText_NoRoom

.MenuDataHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 4, 14, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db "× 1    ¥{d:ROUTE39FARMHOUSE_MILK_PRICE}@"
	db "×12   ¥{d:ROUTE39FARMHOUSE_DOZEN_MILK_PRICE}@"
	db "Cancel@"

.Milking:
	jumpopenedtext FarmerMText_Milking

PokefanF_AcrobaticsFarmer:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM62_ACROBATICS_FROM_MOOMOO_FARM
	iftruefwd .GotAcrobatics
	checkevent EVENT_HEALED_MOOMOO
	iftruefwd .GiveAcrobatics
	jumpopenedtext FarmerFText_InTrouble

.GiveAcrobatics:
	writetext FarmerFText_HealedMiltank
	promptbutton
	verbosegivetmhm TM_ACROBATICS
	setevent EVENT_GOT_TM62_ACROBATICS_FROM_MOOMOO_FARM
.GotAcrobatics:
	jumpopenedtext FarmerFText_AcrobaticsSpeech

FarmerMText_SickCow:
if DEF(_LOCALE_FR)
	text "Ma chtite ECREMEUH"
	line "m'donne plus eud'"
	cont "lait."

	para "Et pourtant qu'il"
	line "était bien bon"
	cont "not'lait d'ici."

	para "Et tout eul'monde"
	line "y veut à boire."

	para "Si j'en avais des"
	line "BAIES à lui donner"

	para "elle m'donnerait"
	line "aussi du lait, par"
	cont "le fait."
	done
else
	text "My Miltank ain't"
	line "givin' me milk"
	cont "n'more."

	para "This here Farm's"
	line "got famous milk."

	para "Most everyone"
	line "wants a drink."

	para "It'll give me lots"
	line "o' milk if'n I"

	para "feed it lots o'"
	line "Berries, I reckon."
	done
endc

FarmerMText_BuyMilk:
if DEF(_LOCALE_FR)
	text "Ca te dit du bon"
	line "LAIT MEUMEU?"

	para "C'est ma fierté et"
	line "ma joie, poussin."

	para "Donnes-en à tes"
	line "#mon pour en"
	cont "gagner des PV!"

	para "Pour juste 500¥"
	line "je te l'offre."
	cont "Pour sûr!"
	done
else
	text "How'd you like my"
	line "Moomoo Milk?"

	para "It's my pride and"
	line "joy, there."

	para "Give it to #mon"
	line "to restore HP!"

	para "I'll give it to ya"
	line "fer just ¥500."
	done
endc

FarmerMText_GotMilk:
if DEF(_LOCALE_FR)
	text "Tiens, poussin!"
	line "Bien à toi!"
	done
else
	text "Here ya go!"
	line "Drink up'n enjoy!"
	done
endc

FarmerMText_NoMoney:
if DEF(_LOCALE_FR)
	text "Dommage, t'as pas"
	line "de mitraille!"
	done
else
	text "Sorry, there."
	line "No cash, no sale!"
	done
endc

FarmerMText_NoRoom:
if DEF(_LOCALE_FR)
	text "T'as pas de place,"
	line "mon poussin."
	done
else
	text "I reckon yer"
	line "Bag's full."
	done
endc

FarmerMText_NoSale:
if DEF(_LOCALE_FR)
	text "Il en veut pas?"
	line "A plus tard."
	done
else
	text "You don't want it?"
	line "Come again, hear?"
	done
endc

FarmerMText_Milking:
if DEF(_LOCALE_FR)
	text "Bon. J'ai à"
	line "traire."
	done
else
	text "I best go do my"
	line "milkin'."
	done
endc

FarmerFText_InTrouble:
if DEF(_LOCALE_FR)
	text "Notre lait est mê-"
	line "me vendu à KANTO."

	para "Si notre fidèle"
	line "ECREMEUH ne donne"

	para "plus de lait,"
	line "c'est la faillite."
	done
else
	text "Our milk even goes"
	line "out to Kanto."

	para "So if our own"
	line "Miltank won't give"

	para "us any milk, we're"
	line "in trouble."
	done
endc

FarmerFText_HealedMiltank:
	text "You fixed our"
	line "Miltank, hon. Now"

	para "it gives Moomoo"
	line "Milk again."

	para "Here's somethin'"
	line "fer your trouble."
	done

FarmerFText_AcrobaticsSpeech:
	text "That there's"
	line "Acrobatics."

	para "It's a move that"
	line "hurts more if'n"

	para "your #mon ain't"
	line "holdin' an item."

	para "You best think how"
	line "you ought to use"
	cont "it, hon."
	done
