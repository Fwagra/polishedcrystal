UnionCaveB2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, UnionCaveB2FLapras

	def_warp_events
	warp_event  5,  3, UNION_CAVE_B1F_SOUTH, 2

	def_coord_events

	def_bg_events
	bg_event  9,  4, BGEVENT_ITEM + CALCIUM, EVENT_UNION_CAVE_B2F_HIDDEN_CALCIUM
	bg_event  2, 25, BGEVENT_ITEM + ULTRA_BALL, EVENT_UNION_CAVE_B2F_HIDDEN_ULTRA_BALL

	def_object_events
	object_event 11, 31, SPRITE_LAPRAS, SPRITEMOVEDATA_SWIM_AROUND, 1, 1, -1, 0, OBJECTTYPE_SCRIPT, 0, UnionCaveLapras, EVENT_UNION_CAVE_B2F_LAPRAS
	object_event 15, 19, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerCooltrainermNick, -1
	object_event  5, 13, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerCooltrainerfGwen, -1
	object_event  3, 30, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerCooltrainerfEmma, -1
	itemball_event  4, 11, ELIXIR, 1, EVENT_UNION_CAVE_B2F_ELIXIR
	itemball_event 12, 19, HYPER_POTION, 1, EVENT_UNION_CAVE_B2F_HYPER_POTION
	itemball_event 16,  2, LINKING_CORD, 1, EVENT_UNION_CAVE_B2F_LINKING_CORD

	object_const_def
	const UNIONCAVEB2F_LAPRAS

UnionCaveB2FLapras:
	checkflag ENGINE_UNION_CAVE_LAPRAS
	iftruefwd .NoAppear
	readvar VAR_WEEKDAY
	ifequalfwd FRIDAY, .Appear
.NoAppear:
	disappear UNIONCAVEB2F_LAPRAS
	endcallback

.Appear:
	appear UNIONCAVEB2F_LAPRAS
	endcallback

UnionCaveLapras:
	faceplayer
	cry LAPRAS
	loadwildmon LAPRAS, 25
	startbattle
	disappear UNIONCAVEB2F_LAPRAS
	setflag ENGINE_UNION_CAVE_LAPRAS
	reloadmapafterbattle
	end

GenericTrainerCooltrainermNick:
	generictrainer COOLTRAINERM, NICK, EVENT_BEAT_COOLTRAINERM_NICK, CooltrainermNickSeenText, CooltrainermNickBeatenText

if DEF(_LOCALE_FR)
	text "Tes #mon ont"
	line "la super classe!"
	cont "Et c'est bien."

	para "Et tu vas encore"
	line "t'améliorer!"
	done
else
	text "Your #mon style"
	line "is stunning and"
	cont "colorful, I admit."

	para "You'll just keep"
	line "getting better!"
	done
endc

GenericTrainerCooltrainerfGwen:
	generictrainer COOLTRAINERF, GWEN, EVENT_BEAT_COOLTRAINERF_GWEN, CooltrainerfGwenSeenText, CooltrainerfGwenBeatenText

if DEF(_LOCALE_FR)
	text "Je vais continuer"
	line "à m'entraîner en-"
	cont "core un peu."
	done
else
	text "I'm going to train"
	line "by myself until I"
	cont "improve."
	done
endc

GenericTrainerCooltrainerfEmma:
	generictrainer COOLTRAINERF, EMMA, EVENT_BEAT_COOLTRAINERF_EMMA, CooltrainerfEmmaSeenText, CooltrainerfEmmaBeatenText

if DEF(_LOCALE_FR)
	text "Une fois par se-"
	line "maine, un #mon"
	cont "vient au bord de"
	cont "l'eau."

	para "Je veux le voir"
	line "ce #mon!!!"
	done
else
	text "Just once a week,"
	line "a #mon comes to"
	cont "the water's edge."

	para "I wanted to see"
	line "that #mon…"
	done
endc

CooltrainermNickSeenText:
if DEF(_LOCALE_FR)
	text "Il existe 2 types"
	line "de personnes."

	para "Ceux qui ont la"
	line "classe, et ceux"
	cont "qui l'ont pas."

	para "Toi... T'as la"
	line "classe?"
	done
else
	text "There are two"
	line "kinds of people."

	para "Those who have"
	line "style, and those"
	cont "who don't."

	para "What kind of"
	line "person are you?"
	done
endc

CooltrainermNickBeatenText:
if DEF(_LOCALE_FR)
	text "Purée..."
	line "Quelle classe!"
	done
else
	text "You've got"
	line "dazzling style!"
	done
endc

CooltrainerfGwenSeenText:
if DEF(_LOCALE_FR)
	text "Je m'entraîne."
	line "Ca te tente?"
	done
else
	text "I'm in training."
	line "Care for a round?"
	done
endc

CooltrainerfGwenBeatenText:
if DEF(_LOCALE_FR)
	text "Hmmm! T'es trop"
	line "balèze pour moi."
	done
else
	text "Aww, no! You're"
	line "too good for me."
	done
endc

CooltrainerfEmmaSeenText:
if DEF(_LOCALE_FR)
	text "J'irais n'importe"
	line "où avec le #mon"
	cont "de mes rêves."

	para "C'est ça la beauté"
	line "d'être dresseur."
	done
else
	text "If the #mon I"
	line "liked were there,"
	cont "I'd go anywhere."

	para "That's what a real"
	line "trainer does."
	done
endc

CooltrainerfEmmaBeatenText:
if DEF(_LOCALE_FR)
	text "Vive l'amour!"
	line "Vive les fleurs!"
	done
else
	text "I'd rather pet my"
	line "babies than this!"
	done
endc

