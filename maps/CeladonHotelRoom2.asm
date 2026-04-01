CeladonHotelRoom2_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  5, CELADON_HOTEL_2F, 3
	warp_event  4,  5, CELADON_HOTEL_2F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, MrHyperScript, -1

MrHyperScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_MR_HYPER
	iftruefwd .IntroDone
	writetext .TextIntro
	waitbutton
	setevent EVENT_TALKED_TO_MR_HYPER
	; fallthrough
.IntroDone:
	writetext .TextAskTrain
	yesorno
	iffalse_jumpopenedtext .TextComeBackAnytime
.CheckBottleCaps:
	checkitem BOTTLE_CAP
	iffalse_jumpopenedtext .TextNoBottleCaps
	writetext .TextTrainWho
	waitbutton
	special Special_HyperTrain
	iffalse_jumpopenedtext .TextComeBackAnytime
	takeitem BOTTLE_CAP
	writetext .TextGotStronger
	waitbutton
	writetext .TextTrainSomeMore
	yesorno
	iftrue .CheckBottleCaps
	jumpthisopenedtext

.TextComeBackAnytime:
if DEF(_LOCALE_FR)
	text "Reviens quand tu"
	line "veux! M. Hyper"

	para "sera toujours"
	line "chaud pour toi!"
	done
else
	text "Come back anytime!"
	line "Mr. Hyper will"
	cont "always be hyped up"
	cont "to see you!"
	done
endc

.TextIntro:
if DEF(_LOCALE_FR)
	text "Moi, c'est M."
	line "Hyper! Pourquoi?"

	para "Parce que j'aide"
	line "les #mon en"

	para "Hyper-Training!"
	line "Ca booste un"

	para "#mon qui a deja"
	line "max EV pour aller"

	para "encore plus loin!"
	line "Ca monte leurs"

	para "stats. Apporte des"
	line "Capsules Arg. pour"

	para "que j'entraine ton"
	line "#mon!"
	done
else
	text "I'm Mr. Hyper!"
	line "Want to know why?"

	para "Because I can help"
	line "#mon perform"
	cont "Hyper Training!"

	para "It lets a #mon"
	line "that has maxed out"
	cont "its effort become"
	cont "even stronger!"

	para "This training will"
	line "help them increase"
	cont "their stats."

	para "If you want me to"
	line "train up your"
	cont "#mon, bring me"
	cont "some Bottle Caps."
	done
endc

.TextAskTrain:
if DEF(_LOCALE_FR)
	text "Alors? Tu veux"
	line "essayer mon"

	para "Hyper-Training?"
	done
else
	text "What do you say?"
	line "Want to try my"
	cont "Hyper Training?"
	done
endc

.TextNoBottleCaps:
if DEF(_LOCALE_FR)
	text "Pas de Capsule"
	line "Arg.?"

	para "Les Pecheurs en"
	line "trouvent parfois…"
	done
else
	text "You don't have any"
	line "Bottle Caps?"

	para "I know Fishermen"
	line "snag them some-"
	cont "times…"
	done
endc

.TextTrainWho:
if DEF(_LOCALE_FR)
	text "Hyper-Train quel"
	line "#mon?"
	done
else
	text "Hyper Train which"
	line "#mon?"
	done
endc

.TextGotStronger:
if DEF(_LOCALE_FR)
	text "Voila! J'ai"
	line "booste les stats"

	cont "de "
	text_ram wStringBuffer1
	text "!"
	done
else
	text "All done! My Hyper"
	line "training improved"
	cont ""
	text_ram wStringBuffer1
	text "'s stats!"
	done
endc

.TextTrainSomeMore:
if DEF(_LOCALE_FR)
	text "Hyper-Train un"
	line "autre #mon?"
	done
else
	text "Hyper Train more"
	line "#mon?"
	done
endc
