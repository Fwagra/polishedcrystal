FastShipCabins_NNW_NNE_NE_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  0, FAST_SHIP_1F, 2
	warp_event  2, 12, FAST_SHIP_1F, 3
	warp_event  2, 24, FAST_SHIP_1F, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4, 26, SPRITE_SAILOR, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShipLazySailorScript, EVENT_FAST_SHIP_CABINS_NNW_NNE_NE_SAILOR
	object_event  4,  5, SPRITE_PI, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerPILooker, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event  4,  3, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerCooltrainermSean, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event  1,  5, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerCooltrainerfCarol, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event  1,  5, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerPokemaniacEthan, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event  4, 17, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerHikerNoland, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event  7, 30, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerGentlemanEdward, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event  2, 30, SPRITE_BURGLAR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerBurglarCorey, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND

	object_const_def
	const FASTSHIPCABINS_NNW_NNE_NE_SAILOR

GenericTrainerPILooker:
	generictrainer PI, LOOKER, EVENT_BEAT_PI_LOOKER, PILookerSeenText, PILookerBeatenText

	text "My code name,"
	line "it is Looker."

	para "It is what they"
	line "all call me."

	para "I am on the look-"
	line "out for members"
	cont "of Team Rocket."

	para "What?! You defeat-"
	line "ed them?"

	para "Bravo!"
	done

GenericTrainerCooltrainermSean:
	generictrainer COOLTRAINERM, SEAN, EVENT_BEAT_COOLTRAINERM_SEAN, CooltrainermSeanSeenText, CooltrainermSeanBeatenText

if DEF(_LOCALE_FR)
	text "Les dresseurs de"
	line "JOHTO peuvent af-"
	line "fronter les CHAM-"
	line "PIONS de KANTO."
	done
else
	text "Trainers from"
	line "Johto can battle"

	para "with Kanto Gym"
	line "Leaders."
	done
endc

GenericTrainerCooltrainerfCarol:
	generictrainer COOLTRAINERF, CAROL, EVENT_BEAT_COOLTRAINERF_CAROL, CooltrainerfCarolSeenText, CooltrainerfCarolBeatenText

if DEF(_LOCALE_FR)
	text "J'te battrai un"
	line "jour! Oh oui!"
	done
else
	text "I'm going to beat"
	line "you someday!"
	done
endc

GenericTrainerPokemaniacEthan:
	generictrainer POKEMANIAC, ETHAN, EVENT_BEAT_POKEMANIAC_ETHAN, PokemaniacEthanSeenText, PokemaniacEthanBeatenText

if DEF(_LOCALE_FR)
	text "PETRA est cool"
	line "mais LULA est top!"
	line "J'veux connaître"
	line "les stations de"
	line "radio de JOHTO!"
	done
else
	text "Lily's nice, but"
	line "Mary's the best!"

	para "I want to check"
	line "out Johto's radio"
	cont "programs!"
	done
endc

GenericTrainerHikerNoland:
	generictrainer HIKER, NOLAND, EVENT_BEAT_HIKER_NOLAND, HikerNolandSeenText, HikerNolandBeatenText

if DEF(_LOCALE_FR)
	text "Tu crois qu'il y a"
	line "de belles monta-"
	line "gnes à KANTO?"
	done
else
	text "I wonder if there"
	line "are any mountains"

	para "worth climbing in"
	line "Kanto?"
	done
endc

GenericTrainerGentlemanEdward:
	generictrainer GENTLEMAN, EDWARD, EVENT_BEAT_GENTLEMAN_EDWARD, GentlemanEdwardSeenText, GentlemanEdwardBeatenText

if DEF(_LOCALE_FR)
	text "Je laisse tomber."
	line "Ce n'est pas la"
	line "peine de chercher."
	line "Oublie!"
	done
else
	text "I give up."
	line "You don't have to"

	para "look. Just forget"
	line "about it!"
	done
endc

GenericTrainerBurglarCorey:
	generictrainer BURGLAR, COREY, EVENT_BEAT_BURGLAR_COREY, BurglarCoreySeenText, BurglarCoreyBeatenText

if DEF(_LOCALE_FR)
	text "J'ai trouvé une"
	line "belle pièce."
	line "Quelqu'un a dû la"
	line "perdre…"
	done
else
	text "I found a pretty"
	line "coin here."

	para "Someone must have"
	line "lost it…"
	done
endc

FastShipLazySailorScript:
	special SaveMusic
	playmusic MUSIC_HIKER_ENCOUNTER
	showtextfaceplayer SailorStanlySeenText
	winlosstext SailorStanlyBeatenText, SailorStanlyBeatenText
	loadtrainer SAILOR, STANLY
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	special HealParty
	setevent EVENT_BEAT_SAILOR_STANLY
	showtext SailorStanlyAfterBattleText
	setevent EVENT_FAST_SHIP_LAZY_SAILOR
	setmapscene FAST_SHIP_B1F, $1
	readvar VAR_FACING
	ifequalfwd $3, .Movement2
	applymovement FASTSHIPCABINS_NNW_NNE_NE_SAILOR, FastShipLazySailorLeavesMovement1
	playsound SFX_EXIT_BUILDING
	disappear FASTSHIPCABINS_NNW_NNE_NE_SAILOR
	waitsfx
	end

.Movement2:
	applymovement FASTSHIPCABINS_NNW_NNE_NE_SAILOR, FastShipLazySailorLeavesMovement2
	playsound SFX_EXIT_BUILDING
	disappear FASTSHIPCABINS_NNW_NNE_NE_SAILOR
	waitsfx
	end

FastShipLazySailorLeavesMovement1:
	step_left
	step_left
	step_up
	step_up
	step_end

FastShipLazySailorLeavesMovement2:
	step_down
	step_left
	step_left
	step_up
	step_up
	step_up
	step_end

PILookerSeenText:
	text "WHAAAT?!"

	para "…How did you know?"
	line "How did you unmask"

	para "me as a member of"
	line "the International"
	cont "Police?!"
	done

PILookerBeatenText:
	text "Quite admirable,"
	line "you are!"
	done

CooltrainermSeanSeenText:
if DEF(_LOCALE_FR)
	text "Je vais à KANTO"
	line "pour m'entraîner."
	done
else
	text "I'm going to Kanto"
	line "to test my skills."
	done
endc

CooltrainermSeanBeatenText:
if DEF(_LOCALE_FR)
	text "J'voulais gagner!"
	done
else
	text "I wanted to win!"
	done
endc

CooltrainerfCarolSeenText:
if DEF(_LOCALE_FR)
	text "J'm'entraîne pour"
	line "être la meilleure!"
	done
else
	text "I'm training to"
	line "become the Champ!"
	done
endc

CooltrainerfCarolBeatenText:
if DEF(_LOCALE_FR)
	text "Pourquoi t'es"
	line "meilleur?"
	done
else
	text "What's so differ-"
	line "ent between us?"
	done
endc

PokemaniacEthanSeenText:
if DEF(_LOCALE_FR)
	text "Tu connais PETRA?"
	line "C'est un super DJ"
	line "de KANTO."
	done
else
	text "Do you know Lily?"
	line "She's a hot DJ in"
	cont "Kanto."
	done
endc

PokemaniacEthanBeatenText:
if DEF(_LOCALE_FR)
	text "Gyaaaah!"
	done
else
	text "Gyaaaah!"
	done
endc

HikerNolandSeenText:
if DEF(_LOCALE_FR)
	text "T'es tout seul?"
	line "Alors…COMBAT!"
	done
else
	text "Are you alone?"
	line "Then let's battle!"
	done
endc

HikerNolandBeatenText:
if DEF(_LOCALE_FR)
	text "T'es trop, toi!"
	line "Pfouiii!"
	done
else
	text "That's too much to"
	line "handle!"
	done
endc

SailorStanlySeenText:
if DEF(_LOCALE_FR)
	text "Ouaip. Moi j'suis"
	line "un marin. Un vrai"
	line "de vrai. Pur"
	line "boeuf! J'suis"
	line "grand. J'suis"
	line "beau. Je sens le"
	line "sable chaud. Oh!"
	line "Tu m'écoutes?"
	line "…COMBAT!"
	done
else
	text "Yeah, I'm a sail-"
	line "or, all right."

	para "I wasn't goofing"
	line "off!"

	para "This cabin was"
	line "vacant, so I just"
	cont "took a quick nap!"

	para "Ah, forget it!"
	line "Let's battle!"
	done
endc

SailorStanlyBeatenText:
if DEF(_LOCALE_FR)
	text "Heu… Comment? De"
	line "quoi?"
	done
else
	text "Sorry! It's all my"
	line "fault!"
	done
endc

SailorStanlyAfterBattleText:
if DEF(_LOCALE_FR)
	text "Dans la mariiine,"
	line "on n'est pas des"
	line "p'tites filles!"
	line "Dans la mariiine!"
	done
else
	text "Being a sailor, I"
	line "have to do phys-"
	cont "ical labor. It's"
	cont "exhausting!"
	done
endc

GentlemanEdwardSeenText:
if DEF(_LOCALE_FR)
	text "J'ai perdu un truc"
	line "super important…"
	done
else
	text "Oh, no. I've lost"
	line "something that's"
	cont "very important."
	done
endc

GentlemanEdwardBeatenText:
if DEF(_LOCALE_FR)
	text "J'le…trouve…"
	line "…pas!!!"
	done
else
	text "I… I can't find"
	line "it…"
	done
endc

BurglarCoreySeenText:
if DEF(_LOCALE_FR)
	text "Ouaiiis! Le bol!"
	done
else
	text "Yeehaw!"
	line "Lucky!"
	done
endc

BurglarCoreyBeatenText:
if DEF(_LOCALE_FR)
	text "Ooooh! Pas d'bol!"
	done
else
	text "How unlucky!"
	line "I lost!"
	done
endc

