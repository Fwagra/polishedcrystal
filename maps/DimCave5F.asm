DimCave5F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_STONETABLE, DimCave5FSetUpStoneTable

	def_warp_events
	warp_event 13, 31, ROUTE_10_NORTH, 5
	warp_event  2, 16, DIM_CAVE_4F, 1
	warp_event 27, 29, DIM_CAVE_4F, 2
	warp_event 28, 25, DIM_CAVE_4F, 3

	def_coord_events

	def_bg_events
	bg_event 12, 28, BGEVENT_ITEM + X_SP_ATK, EVENT_DIM_CAVE_5F_HIDDEN_X_SP_ATK

	def_object_events
	strengthboulder_event 25,  5, EVENT_BOULDER_IN_DIM_CAVE_5F
	object_event 13,  4, SPRITE_RILEY, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_SCRIPT, 0, DimCave5FRileyScript, EVENT_DIM_CAVE_RILEY
	object_event 24, 17, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSuper_nerdFoote, -1
	object_event 13, 25, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerEngineerHoward, -1
	object_event 21, 28, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerSuper_nerdDave, -1
	itemball_event 13, 13, RARE_CANDY, 1, EVENT_DIM_CAVE_5F_RARE_CANDY
	itemball_event  9, 27, DUSK_STONE, 1, EVENT_DIM_CAVE_5F_DUSK_STONE
	itemball_event 31, 14, HYPER_POTION, 1, EVENT_DIM_CAVE_5F_HYPER_POTION

	object_const_def
	const DIMCAVE5F_BOULDER
	const DIMCAVE5F_RILEY

DimCave5FSetUpStoneTable:
	usestonetable .StoneTable
	endcallback

.StoneTable:
	stonetable 4, DIMCAVE5F_BOULDER, .Boulder
	db -1 ; end

.Boulder:
	disappear DIMCAVE5F_BOULDER
	clearevent EVENT_BOULDER_FELL_IN_DIM_CAVE_4F
	pause 30
	playsound SFX_STRENGTH
	earthquake 80
	jumpthistext

if DEF(_LOCALE_FR)
	text "Le rocher a"
	line "traversé."
	done
else
	text "The boulder fell"
	line "through."
	done
endc

DimCave5FRileyScript:
	faceplayer
	checkevent EVENT_BEAT_RILEY
	iftruefwd .Beaten
	opentext
	writetext .ChallengeText
	yesorno
	iffalse_jumpopenedtext .NoText
	writetext .YesText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked DIMCAVE5F_RILEY
	loadtrainer RILEY, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_RILEY
.Beaten
	opentext
	writetext .ItemText
	promptbutton
	verbosegiveitem POWER_BRACER
	iffalse_endtext
	writetext .GoodbyeText
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear DIMCAVE5F_RILEY
	pause 15
	special Special_FadeInQuickly
	clearevent EVENT_BATTLE_TOWER_RILEY
	end

.ChallengeText:
	text "…You are?"

	para "OK, you're"
	line "<PLAYER>."

	para "I'm Riley. I'm a"
	line "trainer, yes."

	para "I own a mine like"
	line "this one, so it's"
	cont "a good training"
	cont "spot for me."

	para "If you'd like, we"
	line "could have a"
	cont "battle."
	done

.YesText:
if DEF(_LOCALE_FR)
	text "On va se donner"
	line "à fond pour"

	para "écraser tes #MON."
	done
else
	text "We're pulling out"
	line "all the stops to"

	para "put your #mon"
	line "down."
	done
endc

.NoText:
	text "Oh, all right."
	line "Then we'll continue"
	cont "training here."
	done

.BeatenText:
if DEF(_LOCALE_FR)
	text "Parfois, on"
	line "combat, parfois en"
	line "équipe. C'est fou"
	line "comme les"
	line "dresseurs se"
	line "croisent."
	done
else
	text "At times we bat-"
	line "tle, and sometimes"
	cont "we team up."

	para "It's great how"
	line "trainers can"
	cont "interact."
	done
endc

.ItemText:
if DEF(_LOCALE_FR)
	text "Connais ton"
	line "ennemi."

	para "Si tu connais les"
	line "#MON et attaques"

	para "de ton adversaire,"
	line "tu gagnes mieux."

	para "Mais renforcer ton"
	line "équipe compte"
	cont "aussi."

	para "Tiens."
	done
else
	text "Know your enemy."

	para "If you know your"
	line "opponent's #mon"
	cont "and moves, your"

	para "chances of winning"
	line "are much improved."

	para "But strengthening"
	line "your own team is"
	cont "also important."

	para "This will help you"
	line "to do so."
	done
endc

.GoodbyeText:
if DEF(_LOCALE_FR)
	text "TOUR DE COMBAT"
	done
else
	text "Battling with you"
	line "was very enjoy-"
	cont "able."

	para "I intend to test"
	line "my skills in the"
	cont "Battle Tower now."

	para "Let's meet again!"

	para "Take care on the"
	line "way out."
	done
endc

GenericTrainerSuper_nerdFoote:
	generictrainer SUPER_NERD, FOOTE, EVENT_BEAT_SUPER_NERD_FOOTE, .SeenText, .BeatenText

	text "Save one life or"
	line "save five?"

	para "As a #mon"
	line "trainer, you may"

	para "have the power to"
	line "save all six!"
	done

.SeenText:
if DEF(_LOCALE_FR)
	text "J'ai un dilemme"
	line "pour toi!"

	para "Pousser un #MON"
	line "devant un wagon"

	para "pour en sauver"
	line "cinq?"
	done
else
	text "I have a conundrum"
	line "for you!"

	para "Would you push one"
	line "#mon in front"

	para "of a mine cart to"
	line "save five?"
	done
endc

.BeatenText:
	text "You answered"
	line "without words…"
	cont "How Zen!"
	done

GenericTrainerEngineerHoward:
	generictrainer ENGINEER, HOWARD, EVENT_BEAT_ENGINEER_HOWARD, .SeenText, .BeatenText

	text "Water flows south"
	line "from Cerulean Cape"

	para "and follows a"
	line "steady course to"
	cont "the Power Plant."
	done

.SeenText:
	text "This waterfall"
	line "provides energy"
	cont "throughout Kanto!"
	done

.BeatenText:
	text "No! A blackout…"
	done

GenericTrainerSuper_nerdDave:
	generictrainer SUPER_NERD, DAVE, EVENT_BEAT_SUPER_NERD_DAVE, .SeenText, .BeatenText

	text "You need a mining"
	line "pick to mine."

	para "But you can't get"
	line "them around here."
	done

.SeenText:
	text "I've maxed out my"
	line "mining, jeweling,"

	para "smelting, and"
	line "crafting skills!"
	done

.BeatenText:
	text "But not"
	line "battling…"
	done

