ScaryCave1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 33, 31, URAGA_CHANNEL_EAST, 1
	warp_event 11, 31, URAGA_CHANNEL_WEST, 1
	warp_event 20, 30, SCARY_CAVE_B1F, 1
	warp_event 34, 10, SCARY_CAVE_B1F, 2
	warp_event  9,  1, SCARY_CAVE_SHIPWRECK, 1

	def_coord_events

	def_bg_events
	bg_event 34,  3, BGEVENT_ITEM + MAX_ELIXIR, EVENT_SCARY_CAVE_1F_HIDDEN_MAX_ELIXIR
	bg_event 18, 28, BGEVENT_ITEM + PEARL_STRING, EVENT_SCARY_CAVE_1F_HIDDEN_PEARL_STRING
	bg_event 30, 29, BGEVENT_ITEM + PEARL, EVENT_SCARY_CAVE_1F_HIDDEN_PEARL

	def_object_events
	object_event 15,  5, SPRITE_MIRA, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_SCRIPT, 0, ScaryCave1FMiraScript, EVENT_SCARY_CAVE_MIRA
	object_event  8, 24, SPRITE_BURGLAR, SPRITEMOVEDATA_WANDER, 1, 2, -1, 0, OBJECTTYPE_SCRIPT, 0, ScaryCave1FPharmacistScript, -1
	object_event 36,  2, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerRuin_maniacSmilte, -1
	object_event  8, 18, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSuper_nerdKouta, -1
	object_event 22, 20, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerCoupleJoeandjo1, -1
	object_event 23, 20, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerCoupleJoeandjo2, -1
	object_event 37, 16, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerHex_maniacBethany, -1
	object_event 36, 29, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerScientistPiotr, -1
	itemball_event 27,  7, X_SP_DEF, 1, EVENT_SCARY_CAVE_1F_X_SP_DEF
	itemball_event  4,  9, DUSK_STONE, 1, EVENT_SCARY_CAVE_1F_DUSK_STONE
	itemball_event 33, 19, HYPER_POTION, 1, EVENT_SCARY_CAVE_1F_HYPER_POTION
	itemball_event 28, 23, MAX_REPEL, 1, EVENT_SCARY_CAVE_1F_MAX_REPEL
	itemball_event  3, 29, REVIVE, 1, EVENT_SCARY_CAVE_1F_REVIVE

	object_const_def
	const SCARYCAVE1F_MIRA

ScaryCave1FMiraScript:
	faceplayer
	checkevent EVENT_BEAT_MIRA
	iftruefwd .Beaten
	opentext
	writetext .ChallengeText
	yesorno
	iffalse_jumpopenedtext .NoText
	writetext .YesText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked SCARYCAVE1F_MIRA
	loadtrainer MIRA, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MIRA
.Beaten
	opentext
	writetext .ItemText
	promptbutton
	verbosegiveitem POWER_LENS
	iffalse_endtext
	writetext .GoodbyeText
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear SCARYCAVE1F_MIRA
	pause 15
	special Special_FadeInQuickly
	clearevent EVENT_BATTLE_TOWER_MIRA
	end

.ChallengeText:
if DEF(_LOCALE_FR)
	text "Je suis MIRA…"
	line "Je cherchais des"

	para "#MON, mais cette"
	line "grotte fait peur…"

	para "Je veux devenir"
	line "plus courageuse."

	para "S'il te plaît!"
	line "Bats-toi avec moi!"
	done
else
	text "I'm Mira…"
	line "I was catching"

	para "#mon, but this"
	line "cave is too scary…"

	para "I want to get"
	line "tougher so I won't"
	cont "be such a scaredy-"
	cont "cat."

	para "Please! Please"
	line "battle with me!"
	done
endc

.YesText:
if DEF(_LOCALE_FR)
	text "Oui! MIRA va"
	line "te montrer ses"
	cont "#MON!"
	done
else
	text "Yes! Mira will"
	line "show you her #-"
	cont "mon!"
	done
endc

.NoText:
if DEF(_LOCALE_FR)
	text "MIRA est triste…"
	done
else
	text "Mira is sad…"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "MIRA veut devenir"
	line "très forte,"
	cont "comme <PLAYER>!"
	done
else
	text "Mira wants to get"
	line "a lot, lot strong-"
	cont "er, like <PLAYER>!"
	done
endc

.ItemText:
if DEF(_LOCALE_FR)
	text "<PLAYER>, tu es"
	line "si fort parce que"

	para "tu es toujours"
	line "avec tes #MON?"

	para "Oui! Ca doit être"
	line "ça!"

	para "MIRA comprend!"

	para "Merci, <PLAYER>!"

	para "Tiens, prends ça!"
	done
else
	text "<PLAYER>, did you"
	line "get to be so good"

	para "because you're al-"
	line "ways with your"
	cont "#mon?"

	para "Yes! That has to"
	line "be it!"

	para "Mira is beginning"
	line "to understand!"

	para "Thank you,"
	line "<PLAYER>!"

	para "Mira wants you to"
	line "have this!"
	done
endc

.GoodbyeText:
if DEF(_LOCALE_FR)
	text "TOUR DE COMBAT"
	done
else
	text "Mira will try like"
	line "you, <PLAYER>!"

	para "I'll get stronger"
	line "at the Battle"
	cont "Tower!"

	para "<PLAYER>,"
	line "bye-bye!"
	done
endc

ScaryCave1FPharmacistScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_SUCKER_PUNCH_INTRO
	iftruefwd .HeardIntro
	writetext .IntroText
	waitbutton
	setevent EVENT_LISTENED_TO_SUCKER_PUNCH_INTRO
.HeardIntro:
	writetext .QuestionText
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	yesorno
	iffalsefwd .TutorRefused
	setval SUCKER_PUNCH
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "C'est ton enter-"
	line "rement."
	done
else
	text "It's your funeral."
	done
endc

.IntroText:
if DEF(_LOCALE_FR)
	text "Les fantômes sont"
	line "fourbes."

	para "Frappe d'abord!"

	para "COUP BAS!"
	done
else
	text "Ghosts are masters"
	line "of the cheap shot."

	para "The way to deal"
	line "with them is to"
	cont "hit them first!"

	para "Give 'em a good"
	line "surprise Sucker"
	cont "Punch!"
	done
endc

.QuestionText:
if DEF(_LOCALE_FR)
	text "Je t'enseigne"
	line "COUP BAS"

	para "pour 1 Feuille Arg."
	done
else
	text "I'll teach you to"
	line "Sucker Punch, but"

	para "I want a Silver"
	line "Leaf."
	done
endc

.NoSilverLeaf
	waitbutton
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Pas de Feuille"
	line "Arg? Tant pis."
	done
else
	text "No Silver Leaf?"
	line "Forget it then."
	done
endc

.TeachMove
	takeitem SILVER_LEAF
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Tu peux utiliser"
	line "COUP BAS!"

	para "Frappe avant lui!"
	done
else
	text "Now you can use"
	line "Sucker Punch!"

	para "If a foe is about"
	line "to hit you, you"
	cont "hit them first!"
	done
endc

GenericTrainerRuin_maniacSmilte:
	generictrainer RUIN_MANIAC, SMILTE, EVENT_BEAT_RUIN_MANIAC_SMILTE, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "J'entends un écho."
	line "Une grotte plus"
	cont "profonde…"

	para "Ma découverte?"
	line "Peut-être!"
	done
else
	text "I hear an echo."
	line "There's a deeper"
	cont "cave nearby!"

	para "I wonder if that"
	line "is where I'll find"
	cont "my big discovery…"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Je sens une"
	line "découverte!"
	done
else
	text "I'm on the edge of"
	line "a big discovery!"

	para "I can just feel"
	line "it!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Tu veux ma"
	line "découverte?!"
	done
else
	text "Are you after my"
	line "discovery?!"
	done
endc

GenericTrainerSuper_nerdKouta:
	generictrainer SUPER_NERD, KOUTA, EVENT_BEAT_SUPER_NERD_KOUTA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Même un bon plan"
	line "peut échouer."
	done
else
	text "I guess even the"
	line "best-laid plans"
	cont "can be ruined."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Plan parfait!"
	done
else
	text "You can't beat me!"
	line "I've got the per-"
	cont "fect plan!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Mon plan a"
	line "échoué?!"
	done
else
	text "My plan failed?!"

	para "Back to the draw-"
	line "ing board…"
	done
endc

GenericTrainerCoupleJoeandjo1:
	generictrainer COUPLE, JOEANDJO1, EVENT_BEAT_COUPLE_JOE_AND_JO, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Joe: Tant que Jo"
	line "est là, ça va!"
	done
else
	text "Joe: We're on a"
	line "ghost hunt, but"

	para "I'm not scared as"
	line "long as I have my"
	cont "Jo beside me!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Joe: Un fantôme!"
	line "Jo, viens!"
	done
else
	text "Joe: A ghost!"
	line "Stay close, my"
	cont "dear Jo!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Joe: Juste un"
	line "dresseur…"
	done
else
	text "Joe: Oh. It was"
	line "just a trainer."
	done
endc

GenericTrainerCoupleJoeandjo2:
	generictrainer COUPLE, JOEANDJO2, EVENT_BEAT_COUPLE_JOE_AND_JO, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Jo: Joe me"
	line "protège des"
	cont "fantômes."
	done
else
	text "Jo: I'm so lucky"
	line "to have my wonder-"
	cont "ful Joe to ward"

	para "off any creepy"
	line "ghosts."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Jo: Aah! Aide-moi!"
	line "Joe!"
	done
else
	text "Jo: Eek! Hold me"
	line "tight, Joe!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Jo: Tu n'as pas"
	line "peur?"
	done
else
	text "Jo: Aren't you"
	line "scared?"
	done
endc

GenericTrainerHex_maniacBethany:
	generictrainer HEX_MANIAC, BETHANY, EVENT_BEAT_HEX_MANIAC_BETHANY, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Gnihihihihi!"
	line "Forces occultes!"
	line "Ténèbres… Pâté de"
	line "foie!"
	done
else
	text "The aura of fear"
	line "in this cave is"
	cont "delightful…"
	cont "Fufufufu…"
	done
endc

.SeenText: ; text > text
if DEF(_LOCALE_FR)
	text "BOUH!"
	done
else
	text "BOO!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Je t'ai fait peur?"
	done
else
	text "Did I scare you?"
	done
endc

GenericTrainerScientistPiotr:
	generictrainer SCIENTIST, PIOTR, EVENT_BEAT_SCIENTIST_PIOTR, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Des algues"
	line "poussent, et"
	cont "teintent"

	para "l'eau en rouge."

	para "C'est pas du sang!"
	line "…Hein?"
	done
else
	text "Algae grow here"
	line "and release a red"

	para "pigment in the"
	line "water."

	para "It's not blood!"
	line "…Right?"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Tu sais pourquoi"
	line "l'eau est rouge"
	cont "sang?"
	done
else
	text "Do you know why"
	line "the water here is"
	cont "blood-red?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Ok, j'dis!"
	done
else
	text "Fine, I'll tell"
	line "you!"
	done
endc

