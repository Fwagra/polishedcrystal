SlowpokeWellB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 17, 15, SLOWPOKE_WELL_ENTRANCE, 2
	warp_event  7, 11, SLOWPOKE_WELL_B2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_PROTON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerProton2, EVENT_SLOWPOKE_WELL_ROCKETS
	object_event 15,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntM29, EVENT_SLOWPOKE_WELL_ROCKETS
	object_event  5,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerGruntM2, EVENT_SLOWPOKE_WELL_ROCKETS
	object_event 10,  4, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerGruntF1, EVENT_SLOWPOKE_WELL_ROCKETS
	object_event  0, 17, SPRITE_KURT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, end, NULL, EVENT_SLOWPOKE_WELL_KURT
	object_event  7,  4, SPRITE_SLOWPOKETAIL, SPRITEMOVEDATA_POKEMON, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, SlowpokeWellB1FSlowpokeWithMailScript, EVENT_SLOWPOKE_WELL_SLOWPOKES
	object_event  6,  2, SPRITE_SLOWPOKETAIL, SPRITEMOVEDATA_POKEMON, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, SlowpokeWellB1FTaillessSlowpokeScript, EVENT_SLOWPOKE_WELL_SLOWPOKES
	strengthboulder_event  3, 2
	itemball_event 10,  3, SUPER_POTION, 1, EVENT_SLOWPOKE_WELL_B1F_SUPER_POTION

	object_const_def
	const SLOWPOKEWELLB1F_PROTON
	const SLOWPOKEWELLB1F_ROCKET1
	const SLOWPOKEWELLB1F_ROCKET2
	const SLOWPOKEWELLB1F_ROCKET_GIRL
	const SLOWPOKEWELLB1F_KURT

GenericTrainerGruntM29:
	generictrainer GRUNTM, 29, EVENT_BEAT_ROCKET_GRUNTM_29, GruntM29SeenText, GruntM29BeatenText

if DEF(_LOCALE_FR)
	text "Bah... Bien sûr"
	line "qu'on vend des"

	para "queues de RAMOLOSS"
	line "volées."

	para "On ferait n'impor-"
	line "te quoi pour le"
	cont "pognon."

	para "Et oui! La TEAM"
	line "ROCKET c'est pas"

	para "d'la rigolade! On"
	line "est des méchants!"
	done
else
	text "Sure, we've been"
	line "hacking the tails"

	para "off Slowpoke and"
	line "selling them."

	para "Everything we do"
	line "is for profit."

	para "That's right!"
	line "We're Team Rocket,"

	para "and we'll do any-"
	line "thing for money!"
	done
endc

TrainerProton2:
	trainer PROTON, PROTON2, EVENT_BEAT_PROTON_2, Proton2SeenText, Proton2BeatenText, 0, Proton2Script

Proton2Script:
	showtext TrainerProton2WhenTalkText
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear SLOWPOKEWELLB1F_PROTON
	disappear SLOWPOKEWELLB1F_ROCKET1
	disappear SLOWPOKEWELLB1F_ROCKET2
	disappear SLOWPOKEWELLB1F_ROCKET_GIRL
	pause 15
	special Special_FadeInQuickly
	disappear SLOWPOKEWELLB1F_KURT
	moveobject SLOWPOKEWELLB1F_KURT, 11, 6
	appear SLOWPOKEWELLB1F_KURT
	applymovement SLOWPOKEWELLB1F_KURT, KurtSlowpokeWellVictoryMovementData
	turnobject PLAYER, RIGHT
	showtext KurtLeaveSlowpokeWellText
	setevent EVENT_CLEARED_SLOWPOKE_WELL
	setmapscene ILEX_FOREST, $2
	clearevent EVENT_ILEX_FOREST_APPRENTICE
	clearevent EVENT_ILEX_FOREST_FARFETCHD
	setevent EVENT_CHARCOAL_KILN_FARFETCH_D
	setevent EVENT_CHARCOAL_KILN_APPRENTICE
	setevent EVENT_SLOWPOKE_WELL_SLOWPOKES
	setevent EVENT_SLOWPOKE_WELL_KURT
	clearevent EVENT_AZALEA_TOWN_SLOWPOKES
	clearevent EVENT_KURTS_HOUSE_SLOWPOKE
	clearevent EVENT_KURTS_HOUSE_KURT_1
	special FadeOutPalettes
	special HealParty
	pause 15
	warp KURTS_HOUSE, 3, 3
	end

GenericTrainerGruntM2:
	generictrainer GRUNTM, 2, EVENT_BEAT_ROCKET_GRUNTM_2, GruntM2SeenText, GruntM2BeatenText

if DEF(_LOCALE_FR)
	text "On a besoin de"
	line "sous à la TEAM"
	cont "ROCKET..."

	para "C'est pas facile"
	line "d'être un SBIRE!"
	done
else
	text "We need the money,"
	line "but selling Slow-"
	cont "pokeTails?"

	para "It's tough being a"
	line "Rocket Grunt!"
	done
endc

GenericTrainerGruntF1:
	generictrainer GRUNTF, 1, EVENT_BEAT_ROCKET_GRUNTF_1, GruntF1SeenText, GruntF1BeatenText

if DEF(_LOCALE_FR)
	text "Les QUEUES de"
	line "RAMOLOSS?"
	cont "Ca repousse vite!"

	para "Alors on peut les"
	line "vendre, non?"
	done
else
	text "SlowpokeTails"
	line "grow back fast!"

	para "What's wrong with"
	line "selling them?"
	done
endc

SlowpokeWellB1FSlowpokeWithMailScript:
	faceplayer
	opentext
	cry SLOWPOKE
	writetext SlowpokeWellB1FSlowpokeWithMailText
	yesorno
	iftrue_jumpopenedtext SlowpokeWellB1FSlowpokeMailText
	endtext

SlowpokeWellB1FTaillessSlowpokeScript:
	showcrytext SlowpokeWellB1FTaillessSlowpokeText, SLOWPOKE
	end

KurtSlowpokeWellVictoryMovementData:
	step_left
	step_left
	step_left
	step_left
	step_up
	step_sleep_8
	step_sleep_8
	step_sleep_8
	step_left
	step_up
	step_up
	step_sleep_8
	step_sleep_8
	step_sleep_8
	turn_head_left
	step_end

KurtLeaveSlowpokeWellText:
if DEF(_LOCALE_FR)
	text "FARGAS: Bravo,"
	line "<PLAYER>!"

	para "La TEAM ROCKET a"
	line "décampé."

	para "Mon dos va mieux."
	line "Allez..."
	cont "On se casse."
	done
else
	text "Kurt: Way to go,"
	line "<PLAYER>!"

	para "Team Rocket has"
	line "taken off."

	para "My back's better"
	line "too. Let's get out"
	cont "of here."
	done
endc

GruntM29SeenText:
if DEF(_LOCALE_FR)
	text "Grrah! Je montais"
	line "la garde quand un"

	para "vieux dingue est"
	line "venu me crier"
	cont "dessus."

	para "Il m'a fichu une"
	line "telle trouille que"
	cont "je suis tombé ici."

	para "... Tu sais quoi?"
	line "Je vais calmer mes"
	cont "nerfs sur ta face!"
	done
else
	text "Darn! I was stand-"
	line "ing guard up top"

	para "when some old coot"
	line "yelled at me."

	para "He startled me so"
	line "much that I fell"
	cont "down here."

	para "I think I'll vent"
	line "my anger by taking"
	cont "it out on you!"
	done
endc

GruntM29BeatenText:
if DEF(_LOCALE_FR)
	text "Grrah! C'est pas"
	line "mon jour!"
	done
else
	text "Arrgh! This is NOT"
	line "my day!"
	done
endc

Proton2SeenText:
if DEF(_LOCALE_FR)
	text "Kesstu veux?"

	para "Si tu viens nous"
	line "embêter, ça va"
	cont "barder!"
	done
else
	text "What do you want?"

	para "I'm known as the"
	line "scariest and"

	para "cruelest guy in"
	line "Team Rocket…"

	para "If you interrupt"
	line "our work, don't"
	cont "expect any mercy!"
	done
endc

Proton2BeatenText:
if DEF(_LOCALE_FR)
	text "Attends voir la"
	line "prochaine fois!"
	done
else
	text "You did OK today,"
	line "but wait till next"
	cont "time!"
	done
endc

TrainerProton2WhenTalkText:
if DEF(_LOCALE_FR)
	text "La TEAM ROCKET a"
	line "été dissoute il y"
	cont "a trois ans..."

	para "Mais on a continué"
	line "nos p'tites affai-"
	cont "res dans l'ombre."

	para "Et à partir d'au-"
	line "jourd'hui... On va"
	cont "tout faire sauter!"
	done
else
	text "Yeah, Team Rocket"
	line "was broken up"
	cont "three years ago."

	para "But we continued"
	line "our activities"
	cont "underground."

	para "Now you can have"
	line "fun watching us"
	cont "stir up trouble!"
	done
endc

GruntM2SeenText:
if DEF(_LOCALE_FR)
	text "Arrêter de voler"
	line "les QUEUES de"
	cont "RAMOLOSS?"

	para "Et notre réputa-"
	line "tion, tu y as"
	cont "pensé?"
	done
else
	text "Quit taking Slow-"
	line "pokeTails?"

	para "If we obeyed you,"
	line "Team Rocket's rep"
	cont "would be ruined!"
	done
endc

GruntM2BeatenText:
if DEF(_LOCALE_FR)
	text "Heu..."
	line "Trop fort..."
	done
else
	text "Just…"
	line "Too strong…"
	done
endc

GruntF1SeenText:
if DEF(_LOCALE_FR)
	text "Arrêter de voler"
	line "les QUEUES?"

	para "C'est ça, oui..."
	line "T'as raison..."
	done
else
	text "Stop taking Tails?"

	para "Yeah, just try to"
	line "defeat all of us!"
	done
endc

GruntF1BeatenText:
if DEF(_LOCALE_FR)
	text "Sale môme!"
	done
else
	text "You rotten brat!"
	done
endc

SlowpokeWellB1FSlowpokeWithMailText:
if DEF(_LOCALE_FR)
	text "Un RAMOLOSS sans"
	line "QUEUE..."

	para "Hein? Il a une"
	line "LETTRE. On la lit?"
	done
else
	text "A Slowpoke with"
	line "its tail cut off…"

	para "Huh? It has Mail."
	line "Read it?"
	done
endc

SlowpokeWellB1FSlowpokeMailText:
if DEF(_LOCALE_FR)
	text "<PLAYER> lit la"
	line "LETTRE."

	para "Sois sage et occu-"
	line "pe-toi bien de la"

	para "maison avec pépé"
	line "et RAMOLOSS."

	para "Bisous. Papa."
	done
else
	text "<PLAYER> read the"
	line "Mail."

	para "Be good and look"
	line "after the house"

	para "with Grandpa and"
	line "Slowpoke."

	para "Love, Dad"
	done
endc

SlowpokeWellB1FTaillessSlowpokeText:
if DEF(_LOCALE_FR)
	text "Un RAMOLOSS à la"
	line "queue coupée..."
	done
else
	text "A Slowpoke with"
	line "its tail cut off…"
	done
endc
