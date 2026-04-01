BattleTowerOutside_MapScriptHeader:
	def_scene_scripts
	scene_script BattleTowerOutsideStepDownTrigger

	def_callbacks

	def_warp_events
	warp_event  8, 21, ROUTE_40_BATTLE_TOWER_GATE, 3
	warp_event  9, 21, ROUTE_40_BATTLE_TOWER_GATE, 4
	warp_event  8,  9, BATTLE_TOWER_1F, 1 ; hole
	warp_event  9,  9, BATTLE_TOWER_1F, 2 ; hole

	def_coord_events
	coord_event  8,  9, 1, BattleTowerOutsidePanUpTrigger1
	coord_event  9,  9, 1, BattleTowerOutsidePanUpTrigger2

	def_bg_events
	bg_event 10, 10, BGEVENT_JUMPTEXT, BattleTowerOutsideSignText

	def_object_events
	object_event 15,  7, SPRITE_ANABEL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTowerOutsideAnabelScript, EVENT_BATTLE_TOWER_OUTSIDE_ANABEL
	object_event  6, 12, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BattleTowerOutsideYoungsterScript, -1
	object_event 13, 11, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTowerOutsideBeautyScript, -1
	object_event 12, 18, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BattleTowerOutsideSailorText, EVENT_BATTLE_TOWER_CLOSED
	object_event 12, 24, SPRITE_PICNICKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8,  9, SPRITE_BLANK_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptext, BattleTowerOutsideDoorsClosedText, EVENT_BATTLE_TOWER_OPEN
	object_event  9,  9, SPRITE_BLANK_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptext, BattleTowerOutsideDoorsClosedText, EVENT_BATTLE_TOWER_OPEN

	object_const_def
	const BATTLETOWEROUTSIDE_ANABEL

BattleTowerOutsideStepDownTrigger:
	sdefer .Script
	end

.Script:
	readvar VAR_YCOORD
	ifnotequal $9, .Done
	readvar VAR_XCOORD
	ifequalfwd $8, .Down
	ifnotequal $9, .Done
.Down
	applyonemovement PLAYER, step_down
.Done
	setscene $1
	end

BattleTowerOutsidePanUpTrigger1:
	scall BattleTowerOutsidePanUpHelperScript
	warpfacing UP, BATTLE_TOWER_1F, 10, 15
	end

BattleTowerOutsidePanUpTrigger2:
	scall BattleTowerOutsidePanUpHelperScript
	warpfacing UP, BATTLE_TOWER_1F, 11, 15
	end

BattleTowerOutsidePanUpHelperScript:
	playsound SFX_EXIT_BUILDING
	applyonemovement PLAYER, hide_object
	waitsfx
	applymovement PLAYER, .PanUpMovement
	disappear PLAYER
	pause 10
	special Special_FadeOutMusic
	special FadeOutPalettes
	pause 15
	setscene $0
	end

.PanUpMovement:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

BattleTowerOutsideSignText:
if DEF(_LOCALE_FR)
	text "Tour de Combat"

	para "Enchaîne les"
	line "victoires!"
	done
else
	text "Battle Tower"

	para "Take the Ultimate"
	line "Trainer Challenge!"
	done
endc

BattleTowerOutsideAnabelScript:
	faceplayer
	checkevent EVENT_BEAT_ANABEL
	iftruefwd .Beaten
	opentext
	writetext .ChallengeText
	yesorno
	iffalse_jumpopenedtext .NoText
	writetext .YesText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked BATTLETOWEROUTSIDE_ANABEL
	loadtrainer ANABEL, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ANABEL
.Beaten
	opentext
	writetext .ItemText
	promptbutton
	verbosegiveitem POWER_BAND
	iffalse_endtext
	writetext .GoodbyeText
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear BATTLETOWEROUTSIDE_ANABEL
	pause 15
	special Special_FadeInQuickly
	clearevent EVENT_BATTLE_TOWER_ANABEL
	end

.ChallengeText:
if DEF(_LOCALE_FR)
	text "Salutations… Je"
	line "suis Anabel."

	para "…Tu es <PLAYER>?"
	line "J'ai entendu"
	cont "parler de toi…"

	para "Montre-moi"
	line "tout ton"
	cont "talent…"
	done
else
	text "Greetings… My name"
	line "is Anabel."

	para "…You are <PLAYER>?"
	line "I have heard sev-"
	cont "eral rumors about"
	cont "you…"

	para "Let me see your"
	line "talent in its"
	cont "entirety…"
	done
endc

.YesText:
if DEF(_LOCALE_FR)
	text "Commençons,"
	line "veux-tu?"
	done
else
	text "Let's begin,"
	line "shall we?"
	done
endc

.NoText:
if DEF(_LOCALE_FR)
	text "C'est très"
	line "décevant…"
	done
else
	text "It's very dis-"
	line "appointing…"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "D'accord, je"
	line "comprends…"
	done
else
	text "OK, I understand…"
	done
endc

.ItemText:
if DEF(_LOCALE_FR)
	text "Fufufu, bien"
	line "joué…"

	para "Prends ca…"
	done
else
	text "Fufufu, nicely"
	line "done…"

	para "Take this, please…"
	done
endc

.GoodbyeText:
if DEF(_LOCALE_FR)
	text "Je t'invite à"
	line "continuer à"
	cont "combattre."

	para "Je t'attendrai"
	line "dans cette"
	cont "Tour de Combat."

	para "Jusqu'à la"
	line "prochaine…"
	done
else
	text "I urge you to keep"
	line "battling and keep"
	cont "on winning."

	para "I will be waiting"
	line "for you in this"
	cont "Battle Tower."

	para "Until the next"
	line "time we meet…"
	done
endc

BattleTowerOutsideYoungsterScript:
	checkevent EVENT_BATTLE_TOWER_OPEN
	iftrue_jumptextfaceplayer .OpenText
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Wouah, la Tour de"
	line "Combat est énorme!"

	para "J'ai mal"
	line "à la nuque"
	cont "a force de lever"
	cont "la tête."
	done
else
	text "Wow, the Battle"
	line "Tower is huge! My"

	para "neck is tired from"
	line "looking up at it."
	done
endc

.OpenText:
if DEF(_LOCALE_FR)
	text "Wouah, la Tour de"
	line "Combat est énorme!"

	para "Il doit y avoir"
	line "plein de #mon"
	cont "dedans!"
	done
else
	text "Wow, the Battle"
	line "Tower is huge!"

	para "There must be many"
	line "kinds of #mon"
	cont "in there!"
	done
endc

BattleTowerOutsideBeautyScript:
	checkevent EVENT_BATTLE_TOWER_OPEN
	iftrue_jumptextfaceplayer .OpenText
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Mais qu'est-ce"
	line "qu'on fait ici?"

	para "D'après le nom,"
	line "c'est pour des"

	para "combats"
	line "de #mon."
	done
else
	text "What on earth do"
	line "they do here?"

	para "If the name says"
	line "anything, I guess"

	para "it must be for"
	line "#mon battles."
	done
endc

.OpenText:
if DEF(_LOCALE_FR)
	text "On n'utilise que"
	line "3 #mon."

	para "C'est trop dur"
	line "de choisir les"
	cont "3…"
	done
else
	text "You can use only"
	line "three #mon."

	para "It's so hard to"
	line "decide which three"

	para "should go into"
	line "battle…"
	done
endc

BattleTowerOutsideSailorText:
if DEF(_LOCALE_FR)
	text "Héhé, j'ai filé"
	line "du boulot."

	para "Je peux pas partir"
	line "sans gagner!"

	para "Je dois tout"
	line "gagner. C'est"
	cont "obligé!"
	done
else
	text "Hehehe, I snuck"
	line "out from work."

	para "I can't bail out"
	line "until I've won!"

	para "I have to win it"
	line "all. That I must!"
	done
endc

BattleTowerOutsideDoorsClosedText:
if DEF(_LOCALE_FR)
	text "Les portes de la"
	line "Tour de Combat"
	cont "sont fermées…"
	done
else
	text "The Battle Tower's"
	line "doors are closed…"
	done
endc
