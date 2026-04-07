GoldenrodHarbor_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 31, 16, GOLDENROD_HARBOR_GATE, 1
	warp_event 31, 17, GOLDENROD_HARBOR_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 29, 19, BGEVENT_JUMPTEXT, GoldenrodHarborSignText
	bg_event 20, 19, BGEVENT_JUMPTEXT, GoldenrodHarborAdvancedTipsSignText
	bg_event 28, 15, BGEVENT_JUMPTEXT, GoldenrodHarborCrateSignText
	bg_event 22, 21, BGEVENT_ITEM + REVIVE, EVENT_GOLDENROD_HARBOR_HIDDEN_REVIVE

	def_object_events
	object_event 17,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodHarborFisherScript, -1
	object_event 13,  5, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerFisherPaton, -1
	itemball_event 13,  3, STAR_PIECE, 1, EVENT_GOLDENROD_HARBOR_STAR_PIECE
	object_event 27, 15, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_ADVENTURER, MART_GOLDENROD_HARBOR, -1
	object_event 22, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodHarborPokefanmScript, -1
	object_event 21, 15, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, MAGIKARP, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, PLAIN_FORM, GoldenrodHarborMagikarpScript, -1
	object_event 16, 15, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodHarborYoungsterScript, -1
	object_event 16, 20, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_COMMAND, trade, NPC_TRADE_JACQUES, -1
	object_event 40, 16, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GOLDENROD_CITY_ROCKET_SCOUT
	object_event  6, 14, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerSwimmerfKatie, -1
	object_event 23, 28, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSwimmermJames, -1
	object_event 23, 19, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodHarborLass2Text, -1
	object_event  6, 26, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_TOP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT_SILENT, 0, GoldenrodHarborSailboatScript, -1
	object_event  6, 26, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_BOTTOM, 0, 0, -1, 0, OBJECTTYPE_SCRIPT_SILENT, 0, GoldenrodHarborSailboatScript, -1

GoldenrodHarborFisherScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_HYPER_VOICE_INTRO
	iftruefwd GoldenrodHarborTutorHyperVoiceScript
	writetext GoldenrodHarborFisherText
	waitbutton
	setevent EVENT_LISTENED_TO_HYPER_VOICE_INTRO
GoldenrodHarborTutorHyperVoiceScript:
	writetext Text_GoldenrodHarborTutorHyperVoice
	waitbutton
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	writetext Text_GoldenrodHarborTutorQuestion
	yesorno
	iffalsefwd .TutorRefused
	setval HYPER_VOICE
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_GoldenrodHarborTutorRefused

.NoSilverLeaf
	jumpopenedtext Text_GoldenrodHarborTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_GoldenrodHarborTutorTaught

GenericTrainerFisherPaton:
	generictrainer FISHER, PATON, EVENT_BEAT_FISHER_PATON, FisherPatonSeenText, FisherPatonBeatenText

if DEF(_LOCALE_FR)
	text "Tu fais le #-"
	line "DEX? C'est"
	cont "sympa!"
	done
else
	text "You're working"
	line "on a #dex?"
	cont "That's neat!"
	done
endc

GenericTrainerSwimmerfKatie:
	generictrainer SWIMMERF, KATIE, EVENT_BEAT_SWIMMERF_KATIE, SwimmerfKatieSeenText, SwimmerfKatieBeatenText

if DEF(_LOCALE_FR)
	text "Pourquoi la mer"
	line "est bleue?"

	para "On dit qu'elle"
	line "reflète le ciel…"

	para "Mais alors,"
	line "pourquoi le ciel"
	cont "est bleu?"
	done
else
	text "Why is the sea"
	line "blue?"

	para "I heard it ref-"
	line "lects the sky…"

	para "But then why is"
	line "the sky blue?"
	done
endc

GenericTrainerSwimmermJames:
	generictrainer SWIMMERM, JAMES, EVENT_BEAT_SWIMMERM_JAMES, SwimmermJamesSeenText, SwimmermJamesBeatenText

if DEF(_LOCALE_FR)
	text "Un NAGEUR n'a pas"
	line "le droit d'user"
	cont "d'une barque?"
	done
else
	text "Can't a Swimmer"
	line "use a rowboat"
	cont "sometimes?"
	done
endc


GoldenrodHarborMagikarpScript:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Un #MON poisson!"
	line "Hein?"

	para "C'est juste une"
	line "poupée…"
	done
else
	text "This is a Fish"
	line "#mon! Huh?"

	para "It's only a doll…"
	done
endc

GoldenrodHarborPokefanmScript:
	faceplayer
	opentext
	writetext GoldenrodHarborDollVendorText
	special PlaceMoneyTopRight
.Start:
	loadmenu .MenuData
	verticalmenu
	closewindow
	ifequalfwd $1, .MagikarpDoll
	ifequalfwd $2, .MarillDoll
	ifequalfwd $3, .OctilleryDoll
	endtext

.MagikarpDoll:
	checkmoney YOUR_MONEY, 1400
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_MAGIKARP_DOLL
	iftruefwd .AlreadyBought
	takemoney YOUR_MONEY, 1400
	setevent EVENT_DECO_MAGIKARP_DOLL
	writetext GoldenrodHarborMagikarpDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext GoldenrodHarborMagikarpDollSentText
	waitbutton
	sjump .Start

.MarillDoll:
	checkmoney YOUR_MONEY, 5600
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_MARILL_DOLL
	iftruefwd .AlreadyBought
	takemoney YOUR_MONEY, 5600
	setevent EVENT_DECO_MARILL_DOLL
	writetext GoldenrodHarborMarillDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext GoldenrodHarborMarillDollSentText
	waitbutton
	sjump .Start

.OctilleryDoll:
	checkmoney YOUR_MONEY, 11200
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_OCTILLERY_DOLL
	iftruefwd .AlreadyBought
	takemoney YOUR_MONEY, 11200
	setevent EVENT_DECO_OCTILLERY_DOLL
	writetext GoldenrodHarborOctilleryDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext GoldenrodHarborOctilleryDollSentText
	waitbutton
	sjump .Start

.NotEnoughMoney:
	writetext GoldenrodHarborNoMoneyText
	waitbutton
	sjump .Start

.AlreadyBought:
	writetext GoldenrodHarborAlreadyBoughtText
	waitbutton
	sjump .Start

.MenuData:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 19, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Magikarp    ¥1400@"
	db "Marill      ¥5600@"
	db "Octillery  ¥11200@"
	db "Cancel@"

GoldenrodHarborYoungsterScript:
	faceplayer
	opentext
	writetext GoldenrodHarborPlantVendorText
	special PlaceMoneyTopRight
.Start:
	loadmenu .MenuData
	verticalmenu
	closewindow
	ifequalfwd $1, .MagnaPlant
	ifequalfwd $2, .TropicPlant
	ifequalfwd $3, .JumboPlant
	endtext

.MagnaPlant:
	checkmoney YOUR_MONEY, 6400
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_PLANT_1
	iftruefwd .AlreadyBought
	takemoney YOUR_MONEY, 6400
	setevent EVENT_DECO_PLANT_1
	writetext GoldenrodHarborMagnaPlantText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext GoldenrodHarborMagnaPlantSentText
	waitbutton
	sjump .Start

.TropicPlant:
	checkmoney YOUR_MONEY, 9600
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_PLANT_2
	iftruefwd .AlreadyBought
	takemoney YOUR_MONEY, 9600
	setevent EVENT_DECO_PLANT_2
	writetext GoldenrodHarborTropicPlantText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext GoldenrodHarborTropicPlantSentText
	waitbutton
	sjump .Start

.JumboPlant:
	checkmoney YOUR_MONEY, 12800
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_PLANT_3
	iftruefwd .AlreadyBought
	takemoney YOUR_MONEY, 12800
	setevent EVENT_DECO_PLANT_3
	writetext GoldenrodHarborJumboPlantText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext GoldenrodHarborJumboPlantSentText
	waitbutton
	sjump .Start

.NotEnoughMoney:
	writetext GoldenrodHarborNoMoneyText
	waitbutton
	sjump .Start

.AlreadyBought:
	writetext GoldenrodHarborAlreadyBoughtText
	waitbutton
	sjump .Start

.MenuData:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 19, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Magna P.    ¥6400@"
	db "Tropic P.   ¥9600@"
	db "Jumbo P.   ¥12800@"
	db "Cancel@"

GoldenrodHarborSailboatScript:
	readvar VAR_FACING
	ifnotequal DOWN, .show_text
	end
.show_text
	playsound SFX_READ_TEXT_2
	waitsfx
	jumptext GoldenrodHarborSailboatText

GoldenrodHarborFisherText:
if DEF(_LOCALE_FR)
	text "Si tu pêches, tu"
	line "dois être discret"

	para "pour ne pas faire"
	line "fuir les #MON."

	para "Mais pour qu'on"
	line "t'entende"
	cont "au milieu des"
	cont "vagues,"

	para "faut parler FORT!"
	done
else
	text "If you're fishing,"
	line "you have to be"

	para "quiet so you don't"
	line "scare the #mon."

	para "But to be heard"
	line "over the waves,"

	para "you have to say"
	line "things LOUD!"
	done
endc

Text_GoldenrodHarborTutorHyperVoice:
if DEF(_LOCALE_FR)
	text "Je peux enseigner"
	line "MEGAPHONE à ton"
	cont "#MON"

	para "contre une"
	line "Feuille Arg."
	done
else
	text "I can teach your"
	line "#mon how to"

	para "use Hyper Voice"
	line "for a Silver Leaf."
	done
endc

Text_GoldenrodHarborTutorNoSilverLeaf:
if DEF(_LOCALE_FR)
	text "Tu n'as pas de"
	line "Feuille Arg…"
	done
else
	text "You don't have a"
	line "Silver Leaf!"
	done
endc

Text_GoldenrodHarborTutorQuestion:
if DEF(_LOCALE_FR)
	text "Je lui enseigne"
	line "MEGAPHONE?"
	done
else
	text "Should I teach"
	line "your #mon"
	cont "Hyper Voice?"
	done
endc

Text_GoldenrodHarborTutorRefused:
if DEF(_LOCALE_FR)
	text "OK, tant pis."
	done
else
	text "OK then."
	done
endc

Text_GoldenrodHarborTutorTaught:
if DEF(_LOCALE_FR)
	text "Ton #MON connaît"
	line "MEGAPHONE!"
	done
else
	text "Now your #mon"
	line "knows how to use"
	cont "Hyper Voice!"
	done
endc

FisherPatonSeenText:
if DEF(_LOCALE_FR)
	text "Le poisson pêché"
	line "était accroché"
	cont "ché à un #MON!"
	done
else
	text "The fish I caught"
	line "was attached to"
	cont "another #mon!"
	done
endc

FisherPatonBeatenText:
if DEF(_LOCALE_FR)
	text "Les #MON sont"
	line "passionnants,"
	cont "hein?"
	done
else
	text "Aren't #mon"
	line "interesting?"
	done
endc

SwimmerfKatieSeenText:
if DEF(_LOCALE_FR)
	text "Nager dans la mer"
	line "bleue, c'est"
	cont "génial!"
	done
else
	text "Swimming in the"
	line "deep blue sea"
	cont "feels wonderful!"
	done
endc

SwimmerfKatieBeatenText:
if DEF(_LOCALE_FR)
	text "Perdu…"
	done
else
	text "I lost…"
	line "Now I feel blue…"
	done
endc

SwimmermJamesSeenText:
if DEF(_LOCALE_FR)
	text "Je sais nager,"
	line "et ramer aussi!"
	done
else
	text "I can swim, but"
	line "I can also row!"
	done
endc

SwimmermJamesBeatenText:
if DEF(_LOCALE_FR)
	text "Peut-être que je"
	line "sais pas lutter…"
	done
else
	text "Maybe I can't"
	line "battle…"
	done
endc

GoldenrodHarborDollVendorText:
if DEF(_LOCALE_FR)
	text "Bienvenue!"
	line "Des poupées"
	cont "aquatiques."
	done
else
	text "Welcome! I have"
	line "adorable aquatic"
	cont "dolls for sale."
	done
endc

GoldenrodHarborMagikarpDollText:
if DEF(_LOCALE_FR)
	text "<PLAYER> achète"
	line "POUPEE MAGIKARP."
	done
else
	text "<PLAYER> bought"
	line "Magikarp Doll."
	done
endc

GoldenrodHarborMagikarpDollSentText:
if DEF(_LOCALE_FR)
	text "POUPEE MAGIKARP"
	line "envoyée chez toi."
	done
else
	text "Magikarp Doll"
	line "was sent home."
	done
endc

GoldenrodHarborMarillDollText:
if DEF(_LOCALE_FR)
	text "<PLAYER> achète"
	line "POUPEE MARILL."
	done
else
	text "<PLAYER> bought"
	line "Marill Doll."
	done
endc

GoldenrodHarborMarillDollSentText:
if DEF(_LOCALE_FR)
	text "POUPEE MARILL"
	line "envoyée chez toi."
	done
else
	text "Marill Doll"
	line "was sent home."
	done
endc

GoldenrodHarborOctilleryDollText:
if DEF(_LOCALE_FR)
	text "<PLAYER> achète"
	line "POUPEE OCTILLERY."
	done
else
	text "<PLAYER> bought"
	line "Octillery Doll."
	done
endc

GoldenrodHarborOctilleryDollSentText:
if DEF(_LOCALE_FR)
	text "POUPEE OCTILLERY"
	line "envoyée chez toi."
	done
else
	text "Octillery Doll"
	line "was sent home."
	done
endc

GoldenrodHarborNoMoneyText:
if DEF(_LOCALE_FR)
	text "Tu n'as pas assez"
	line "d'argent!"
	done
else
	text "You can't afford"
	line "that!"
	done
endc

GoldenrodHarborAlreadyBoughtText:
if DEF(_LOCALE_FR)
	text "Tu l'as déjà!"
	done
else
	text "You already have"
	line "that!"
	done
endc

GoldenrodHarborPlantVendorText:
if DEF(_LOCALE_FR)
	text "Bienvenue! Des"
	line "plantes exotiques"
	cont "pour ta maison."
	done
else
	text "Welcome! I have"
	line "a selection of"

	para "exotic plants to"
	line "adorn your home."
	done
endc

GoldenrodHarborMagnaPlantText:
if DEF(_LOCALE_FR)
	text "<PLAYER> achète"
	line "PLANTE MAGNA."
	done
else
	text "<PLAYER> bought"
	line "Magna Plant."
	done
endc

GoldenrodHarborMagnaPlantSentText:
if DEF(_LOCALE_FR)
	text "PLANTE MAGNA"
	line "envoyée chez toi."
	done
else
	text "Magna Plant"
	line "was sent home."
	done
endc

GoldenrodHarborTropicPlantText:
if DEF(_LOCALE_FR)
	text "<PLAYER> achète"
	line "PLANTE TROPIC."
	done
else
	text "<PLAYER> bought"
	line "Tropic Plant."
	done
endc

GoldenrodHarborTropicPlantSentText:
if DEF(_LOCALE_FR)
	text "PLANTE TROPIC"
	line "envoyée chez toi."
	done
else
	text "Tropic Plant"
	line "was sent home."
	done
endc

GoldenrodHarborJumboPlantText:
if DEF(_LOCALE_FR)
	text "<PLAYER> achète"
	line "PLANTE JUMBO."
	done
else
	text "<PLAYER> bought"
	line "Jumbo Plant."
	done
endc

GoldenrodHarborJumboPlantSentText:
if DEF(_LOCALE_FR)
	text "PLANTE JUMBO"
	line "envoyée chez toi."
	done
else
	text "Jumbo Plant"
	line "was sent home."
	done
endc

GoldenrodHarborLass2Text:
if DEF(_LOCALE_FR)
	text "Toute cette eau,"
	line "c'est trop…"

	para "bloup-bloup,"
	line "splitch-splitch."

	para "Tu es d'accord?"
	done
else
	text "All this water,"
	line "it's totally…"

	para "bloop-bloop,"
	line "splish-splish."

	para "Don't you agree?"
	done
endc

GoldenrodHarborSignText:
if DEF(_LOCALE_FR)
	text "Une énorme perle"
	line "pêchée au Port de"
	line "DOUBLONVILLE."
	done
else
	text "Goldenrod Harbor"
	done
endc

GoldenrodHarborAdvancedTipsSignText:
if DEF(_LOCALE_FR)
	text "Astuces avancées!"

	para "Parfois, un"
	line "distrib te donne"

	para "deux boissons pour"
	line "le prix d'une!"
	done
else
	text "Advanced Tips!"

	para "Sometimes you'll"
	line "get lucky with a"

	para "vending machine"
	line "and get two drinks"

	para "for the price of"
	line "one!"
	done
endc

GoldenrodHarborCrateSignText:
if DEF(_LOCALE_FR)
	text "Une caisse pleine"
	line "d'objets rares!"
	done
else
	text "A crate full of"
	line "rare items!"
	done
endc

GoldenrodHarborSailboatText:
if DEF(_LOCALE_FR)
	text "Un voilier nommé"
	line "SeaKing."
	done
else
	text "It's a sailboat"
	line "named SeaKing."
	done
endc
