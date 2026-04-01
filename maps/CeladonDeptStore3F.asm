CeladonDeptStore3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 12,  0, CELADON_DEPT_STORE_2F, 1
	warp_event 15,  0, CELADON_DEPT_STORE_4F, 2
	warp_event  2,  0, CELADON_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_JUMPTEXT, CeladonDeptStore3FDirectoryText
	bg_event  2,  3, BGEVENT_JUMPTEXT, CeladonDeptStore3FRPGText
	bg_event  5,  3, BGEVENT_JUMPTEXT, CeladonDeptStore3FSportsGameText
	bg_event  2,  5, BGEVENT_JUMPTEXT, CeladonDeptStore3FPuzzleGameText
	bg_event  5,  5, BGEVENT_JUMPTEXT, CeladonDeptStore3FFightingGameText

	def_object_events
	object_event  9,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_TM, MART_CELADON_3F_TM, -1
	object_event  8,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FClerk2Script, -1
	object_event  7,  5, SPRITE_CAMPER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonDeptStore3FYoungsterText, -1
	object_event 13,  4, SPRITE_POKEMANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonDeptStore3FSuperNerdText, -1
	object_event  0,  4, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, VideoGameClerkText, -1
	object_event  1,  3, SPRITE_SNES, SPRITEMOVEDATA_STILL, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FSnesScript, -1
	object_event  1,  5, SPRITE_N64, SPRITEMOVEDATA_STILL, 0, 0, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FN64Script, -1
	object_event  4,  3, SPRITE_GAMECUBE, SPRITEMOVEDATA_STILL, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FGameCubeScript, -1
	object_event  4,  5, SPRITE_WII, SPRITEMOVEDATA_STILL, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore3FWiiScript, -1

CeladonDeptStore3FClerk2Script:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_COUNTER_INTRO
	iftruefwd CeladonDeptStore3FTutorCounterScript
	writetext CeladonDeptStore3FClerk2Text
	waitbutton
	setevent EVENT_LISTENED_TO_COUNTER_INTRO
CeladonDeptStore3FTutorCounterScript:
	writetext Text_CeladonDeptStore3FTutorCounter
	waitbutton
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	writetext Text_CeladonDeptStore3FTutorQuestion
	yesorno
	iffalsefwd .TutorRefused
	setval COUNTER
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_CeladonDeptStore3FTutorRefused

.NoSilverLeaf
	jumpopenedtext Text_CeladonDeptStore3FTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_CeladonDeptStore3FTutorTaught

VideoGameClerkNoMoneyScript:
	jumpopenedtext VideoGameClerkNoMoneyText

CeladonDeptStore3FSnesScript:
	checkevent EVENT_DECO_SNES
	iftrue_jumptext CeladonDeptStore3FSnesText
	opentext
	writetext VideoGameClerkSellSnesText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext VideoGameClerkNoSaleText
	checkmoney YOUR_MONEY, 20000
	ifequal HAVE_LESS, VideoGameClerkNoMoneyScript
	takemoney YOUR_MONEY, 20000
	setevent EVENT_DECO_SNES
	writetext BoughtSnesText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	jumpopenedtext SnesSentText

CeladonDeptStore3FN64Script:
	checkevent EVENT_DECO_N64
	iftrue_jumptext CeladonDeptStore3FN64Text
	opentext
	writetext VideoGameClerkSellN64Text
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext VideoGameClerkNoSaleText
	checkmoney YOUR_MONEY, 25000
	ifequal HAVE_LESS, VideoGameClerkNoMoneyScript
	takemoney YOUR_MONEY, 25000
	setevent EVENT_DECO_N64
	writetext BoughtN64Text
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	jumpopenedtext N64SentText

CeladonDeptStore3FGameCubeScript:
	checkevent EVENT_DECO_GAMECUBE
	iftrue_jumptext CeladonDeptStore3FGameCubeText
	opentext
	writetext VideoGameClerkSellGameCubeText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext VideoGameClerkNoSaleText
	checkmoney YOUR_MONEY, 30000
	ifequal HAVE_LESS, VideoGameClerkNoMoneyScript
	takemoney YOUR_MONEY, 30000
	setevent EVENT_DECO_GAMECUBE
	writetext BoughtGameCubeText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	jumpopenedtext GameCubeSentText

CeladonDeptStore3FWiiScript:
	checkevent EVENT_DECO_WII
	iftrue_jumptext CeladonDeptStore3FWiiText
	opentext
	writetext VideoGameClerkSellWiiText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext VideoGameClerkNoSaleText
	checkmoney YOUR_MONEY, 40000
	ifequal HAVE_LESS, VideoGameClerkNoMoneyScript
	takemoney YOUR_MONEY, 40000
	setevent EVENT_DECO_WII
	writetext BoughtWiiText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	jumpopenedtext WiiSentText

CeladonDeptStore3FClerk2Text:
if DEF(_LOCALE_FR)
	text "Il y a une attaque"
	line "appelée Riposte."

	para "Pas le même mot"
	line "que ce comptoir,"
	cont "hein!"
	done
else
	text "There's a neat move"
	line "called Counter."

	para "Not the kind of"
	line "counter I'm leaning"
	cont "on, mind you!"
	done
endc

Text_CeladonDeptStore3FTutorCounter:
if DEF(_LOCALE_FR)
	text "J'enseigne Riposte"
	line "à ton #mon pour"

	para "une Feuille Arg."
	done
else
	text "I'll teach your"
	line "#mon how to use"

	para "Counter if you pay"
	line "me a Silver Leaf."
	done
endc

Text_CeladonDeptStore3FTutorNoSilverLeaf:
if DEF(_LOCALE_FR)
	text "Tu n'as pas de"
	line "Feuille Arg…"
	done
else
	text "You don't have a"
	line "Silver Leaf…"
	done
endc

Text_CeladonDeptStore3FTutorQuestion:
if DEF(_LOCALE_FR)
	text "J'apprends Riposte"
	line "à ton #mon?"
	done
else
	text "Should I teach"
	line "your #mon"
	cont "Counter?"
	done
endc

Text_CeladonDeptStore3FTutorRefused:
if DEF(_LOCALE_FR)
	text "Tant pis."
	done
else
	text "Never mind."
	done
endc

Text_CeladonDeptStore3FTutorTaught:
if DEF(_LOCALE_FR)
	text "Ton #mon sait"
	line "faire Riposte."
	done
else
	text "Now your #mon"
	line "knows Counter."
	done
endc

VideoGameClerkText:
if DEF(_LOCALE_FR)
	text "Consoles neuves"
	line "et de collection!"

	para "Viens essayer!"
	done
else
	text "We sell brand-new"
	line "and vintage game"
	cont "systems!"

	para "Try them out for"
	line "yourself!"
	done
endc

VideoGameClerkNoSaleText:
if DEF(_LOCALE_FR)
	text "Vendeur: Bon, si"
	line "vous voulez."
	done
else
	text "Clerk: Well, if"
	line "you say so."
	done
endc

VideoGameClerkNoMoneyText:
if DEF(_LOCALE_FR)
	text "Vendeur: Pas assez"
	line "d'argent!"
	done
else
	text "Clerk: You can't"
	line "afford it!"
	done
endc

VideoGameClerkSellSnesText:
if DEF(_LOCALE_FR)
	text "Vendeur: la SNES"
	line "peut être à vous"

	para "pour ¥20000!"
	line "Ca vous tente?"
	done
else
	text "Clerk: That SNES"
	line "can be yours for"

	para "just ¥20,000!"
	line "Want one?"
	done
endc

VideoGameClerkSellN64Text:
if DEF(_LOCALE_FR)
	text "Vendeur: la N64"
	line "peut être à vous"

	para "pour ¥25000!"
	line "Ca vous tente?"
	done
else
	text "Clerk: That N64"
	line "can be yours for"

	para "just ¥25,000!"
	line "Want one?"
	done
endc

VideoGameClerkSellGameCubeText:
if DEF(_LOCALE_FR)
	text "Vendeur: la Game-"
	line "Cube peut être"

	para "à vous pour"
	line "¥30000! Ca tente?"
	done
else
	text "Clerk: That Game-"
	line "Cube can be yours"

	para "for just ¥30,000!"
	line "Want one?"
	done
endc

VideoGameClerkSellWiiText:
if DEF(_LOCALE_FR)
	text "Vendeur: la Wii"
	line "peut être à vous"

	para "pour ¥40000!"
	line "Ca vous tente?"
	done
else
	text "Clerk: That Wii"
	line "can be yours for"

	para "just ¥40,000!"
	line "Want one?"
	done
endc

BoughtSnesText:
if DEF(_LOCALE_FR)
	text "<PLAYER> a acheté"
	line "Super NES."
	done
else
	text "<PLAYER> bought"
	line "Super NES."
	done
endc

SnesSentText:
if DEF(_LOCALE_FR)
	text "Super NES"
	line "envoyée chez toi."
	done
else
	text "Super NES"
	line "was sent home."
	done
endc

BoughtN64Text:
if DEF(_LOCALE_FR)
	text "<PLAYER> a acheté"
	line "Nintendo 64."
	done
else
	text "<PLAYER> bought"
	line "Nintendo 64."
	done
endc

N64SentText:
if DEF(_LOCALE_FR)
	text "Nintendo 64"
	line "envoyée chez toi."
	done
else
	text "Nintendo 64"
	line "was sent home."
	done
endc

BoughtGameCubeText:
if DEF(_LOCALE_FR)
	text "<PLAYER> a acheté"
	line "GameCube."
	done
else
	text "<PLAYER> bought"
	line "GameCube."
	done
endc

GameCubeSentText:
if DEF(_LOCALE_FR)
	text "GameCube"
	line "envoyée chez toi."
	done
else
	text "GameCube"
	line "was sent home."
	done
endc

BoughtWiiText:
if DEF(_LOCALE_FR)
	text "<PLAYER> a acheté"
	line "Wii."
	done
else
	text "<PLAYER> bought"
	line "Wii."
	done
endc

WiiSentText:
if DEF(_LOCALE_FR)
	text "Wii"
	line "envoyée chez toi."
	done
else
	text "Wii"
	line "was sent home."
	done
endc

CeladonDeptStore3FYoungsterText:
if DEF(_LOCALE_FR)
	text "Je n'arrive pas à"
	line "choisir sur quel"

	para "#mon utiliser"
	line "cette CT…"

	para "Heureusement, elle"
	line "ne s'épuise pas."
	done
else
	text "I can't decide"
	line "which #mon I"

	para "should use this"
	line "TM on…"

	para "Good thing it"
	line "doesn't run out."
	done
endc

CeladonDeptStore3FSuperNerdText:
if DEF(_LOCALE_FR)
	text "Le Salon Tech"
	line "a de super"
	cont "consoles."
	done
else
	text "The Tech Shop"
	line "sells some cool"
	cont "game systems."
	done
endc

CeladonDeptStore3FDirectoryText:
if DEF(_LOCALE_FR)
	text "Renforcez vos"
	line "#mon!"

	para "3F: Salon Tech"
	done
else
	text "Make Your #mon"
	line "Stronger!"

	para "3F: Tech Shop"
	done
endc

CeladonDeptStore3FSnesText:
if DEF(_LOCALE_FR)
	text "Une Super NES!"

	para "J'en ai une comme"
	line "ca chez moi!"
	done
else
	text "It's a Super NES!"

	para "I have one of"
	line "those at home!"
	done
endc

CeladonDeptStore3FN64Text:
if DEF(_LOCALE_FR)
	text "Une N64!"

	para "J'en ai une comme"
	line "ca chez moi!"
	done
else
	text "It's an N64!"

	para "I have one of"
	line "those at home!"
	done
endc

CeladonDeptStore3FGameCubeText:
if DEF(_LOCALE_FR)
	text "Une GameCube!"

	para "J'en ai une comme"
	line "ca chez moi!"
	done
else
	text "It's a GameCube!"

	para "I have one of"
	line "those at home!"
	done
endc

CeladonDeptStore3FWiiText:
if DEF(_LOCALE_FR)
	text "Une Wii!"

	para "J'en ai une comme"
	line "ca chez moi!"
	done
else
	text "It's a Wii!"

	para "I have one of"
	line "those at home!"
	done
endc

CeladonDeptStore3FRPGText:
if DEF(_LOCALE_FR)
	text "Un RPG! Pas le"
	line "temps pour ca!"
	done
else
	text "An RPG! There's"
	line "no time for that!"
	done
endc

CeladonDeptStore3FSportsGameText:
if DEF(_LOCALE_FR)
	text "Un jeu de sport!"
	line "Papa va adorer!"
	done
else
	text "A sports game!"
	line "Dad'll like that!"
	done
endc

CeladonDeptStore3FPuzzleGameText:
if DEF(_LOCALE_FR)
	text "Un jeu de puzzle!"
	line "Ca a l'air top!"
	done
else
	text "A puzzle game!"
	line "Looks addictive!"
	done
endc

CeladonDeptStore3FFightingGameText:
if DEF(_LOCALE_FR)
	text "Un jeu de combat!"
	line "Ca a l'air dur!"
	done
else
	text "A fighting game!"
	line "Looks tough!"
	done
endc
