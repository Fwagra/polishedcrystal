FastShipCabins_SW_SSW_NW_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  0, FAST_SHIP_1F, 5
	warp_event  2, 19, FAST_SHIP_1F, 6
	warp_event  3, 19, FAST_SHIP_1F, 6
	warp_event  2, 31, FAST_SHIP_1F, 7
	warp_event  3, 31, FAST_SHIP_1F, 7

	def_coord_events

	def_bg_events
	bg_event  7,  1, BGEVENT_READ, FastShipBed
	bg_event  7,  2, BGEVENT_READ, FastShipBed

	def_object_events
	object_event  1, 15, SPRITE_FIREBREATHER, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerFirebreatherLyle, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event  6, 15, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBug_catcherKen, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event  5, 27, SPRITE_RICH_BOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerRichBoyWinston, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event  1, 26, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBeautyCassie, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event  3, 28, SPRITE_ROCKER, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGuitaristmClyde, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND

GenericTrainerFirebreatherLyle:
	generictrainer FIREBREATHER, LYLE, EVENT_BEAT_FIREBREATHER_LYLE, FirebreatherLyleSeenText, FirebreatherLyleBeatenText

if DEF(_LOCALE_FR)
	text "Le feu c'est nul"
	line "sur l'eau, non? Ca"
	line "change rien?"
	line "Vraiment?"
	done
else
	text "I guess fire is"
	line "weak on the sea."

	para "It doesn't matter?"
	line "Really?"
	done
endc

GenericTrainerBug_catcherKen:
	generictrainer BUG_CATCHER, KEN, EVENT_BEAT_BUG_CATCHER_KEN, Bug_catcherKenSeenText, Bug_catcherKenBeatenText

if DEF(_LOCALE_FR)
	text "Il y a plein de"
	line "#MON dans les"
	line "arbres de JOHTO!"
	done
else
	text "You can find lots"
	line "of #mon in the"
	cont "trees of Johto!"
	done
endc

GenericTrainerRichBoyWinston:
	generictrainer RICH_BOY, WINSTON, EVENT_BEAT_RICH_BOY_WINSTON, RichBoyWinstonSeenText, RichBoyWinstonBeatenText

	text "This boat is so"
	line "drab."
	done

GenericTrainerBeautyCassie:
	generictrainer BEAUTY, CASSIE, EVENT_BEAT_BEAUTY_CASSIE, BeautyCassieSeenText, BeautyCassieBeatenText

if DEF(_LOCALE_FR)
	text "Voyager fait ou-"
	line "blier les peines"
	line "de coeur. Mais un"
	line "BATEAU EXPRESS va"
	line "trop vite!!!"
	done
else
	text "A voyage is best"
	line "for getting over"
	cont "a broken heart."

	para "But a Fast Ship"
	line "trip is too short"
	cont "for grieving."
	done
endc

TrainerGuitaristmClyde:
	trainer GUITARISTM, CLYDE, EVENT_BEAT_GUITARISTM_CLYDE, GuitaristmClydeSeenText, GuitaristmClydeBeatenText, 0, GuitaristmClydeScript

GuitaristmClydeScript:
	endifjustbattled
	opentext
	checkbp 0
	iffalsefwd .BattleTower
	jumpopenedtext GuitaristClydeAfterBattleText

.BattleTower:
	jumpopenedtext GuitaristClydeAfterBattleMobileText

FastShipBed:
	showtext FastShipBedText1
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	turnobject PLAYER, LEFT
	special RestartMapMusic
	special Special_FadeInQuickly
	showtext FastShipBedText2
	checkevent EVENT_FAST_SHIP_HAS_ARRIVED
	iftruefwd .AlreadyArrived
	checkevent EVENT_FAST_SHIP_FOUND_GIRL
	iftruefwd .CanArrive
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftruefwd .CanArrive
.AlreadyArrived:
	end

.CanArrive:
	playsound SFX_ELEVATOR_END
	pause 30
	checkevent EVENT_FAST_SHIP_DESTINATION_OLIVINE
	iftruefwd .ArrivedOlivine
	showtext FastShipArrivedVermilionText
	setevent EVENT_FAST_SHIP_HAS_ARRIVED
	end

.ArrivedOlivine:
	showtext FastShipArrivedOlivineText
	setevent EVENT_FAST_SHIP_HAS_ARRIVED
	end

FirebreatherLyleSeenText:
if DEF(_LOCALE_FR)
	text "Je vais à KANTO me"
	line "donner en"
	line "spectacle!"
	done
else
	text "I'm going to Kanto"
	line "to put on fire-"
	cont "breathing shows!"
	done
endc

FirebreatherLyleBeatenText:
if DEF(_LOCALE_FR)
	text "Pfff… Ma flamme"
	line "est minuscule…"
	done
else
	text "Fizzle… The"
	line "flame's tiny…"
	done
endc

Bug_catcherKenSeenText:
if DEF(_LOCALE_FR)
	text "Je vais voir ma"
	line "grand-mère pour"
	line "attraper des"
	line "insectes!"
	done
else
	text "I'm visiting my"
	line "grandma to catch"
	cont "me some bugs!"
	done
endc

Bug_catcherKenBeatenText:
if DEF(_LOCALE_FR)
	text "Ooh! Fort de café!"
	done
else
	text "Ooh, wow."
	line "You're tough!"
	done
endc

RichBoyWinstonSeenText:
	text "There's no way you"
	line "could afford a"
	cont "ticket."

	para "It looks like we've"
	line "got a stowaway!"
	done

RichBoyWinstonBeatenText:
if DEF(_LOCALE_FR)
	text "Hé! Où t'as"
	line "acheté tes"
	cont "#MON?"
	done
else
	text "Wow! Who'd you buy"
	line "your #mon from?"
	done
endc

BeautyCassieSeenText:
if DEF(_LOCALE_FR)
	text "J'oublie mes"
	line "malheurs et…"
	line "COMBAT!"
	done
else
	text "I'm trying to"
	line "forget my woes."
	cont "Let's battle!"
	done
endc

BeautyCassieBeatenText:
if DEF(_LOCALE_FR)
	text "Mon coeur saigne."
	done
else
	text "My heart weeps…"
	done
endc

GuitaristmClydeSeenText:
if DEF(_LOCALE_FR)
	text "Je vais audition-"
	line "ner à la STATION"
	line "RADIO de DOUBLON-"
	line "VILLE."
	done
else
	text "I'm going to audi-"
	line "tion my songs at"

	para "Goldenrod's Radio"
	line "Station."
	done
endc

GuitaristmClydeBeatenText:
if DEF(_LOCALE_FR)
	text "Wouh! Un bide!"
	done
else
	text "Yowza!"
	line "Total distortion!"
	done
endc

GuitaristClydeAfterBattleText:
if DEF(_LOCALE_FR)
	text "A propos de la"
	line "STATION RADIO,"
	line "c'est quoi le bon"
	line "numéro d'aujourd'"
	line "hui?"
	done
else
	text "Speaking of the"
	line "Radio Station,"

	para "what's this week's"
	line "lucky number?"
	done
endc

GuitaristClydeAfterBattleMobileText:
if DEF(_LOCALE_FR)
	text "J'allais me lancer"
	line "dans le défi de la"
	line "TOUR DE COMBAT… Je"
	line "devrais retour-"
	line "ner à CARMIN et"
	line "m'entraîner…"
	done
else
	text "I was going to"
	line "make my debut at"
	cont "the Battle Tower…"

	para "I should go back"
	line "to Vermilion and"
	cont "redo my training…"
	done
endc

FastShipBedText1:
if DEF(_LOCALE_FR)
	text "Un lit douillet!"
	line "Hop! Au dodo…"
	done
else
	text "A comfy bed!"
	line "Time to sleep…"
	done
endc

FastShipBedText2:
if DEF(_LOCALE_FR)
	text "Ah… C'est la super"
	line "pêche!"
	done
else
	text "Ah, refreshed and"
	line "restored!"
	done
endc

FastShipArrivedOlivineText:
if DEF(_LOCALE_FR)
	text "Le BATEAU EXPRESS"
	line "AQUARIA est arrivé"
	line "à OLIVILLE."
	done
else
	text "Fast Ship S.S.Aqua"
	line "has arrived in"
	cont "Olivine City."
	done
endc

FastShipArrivedVermilionText:
if DEF(_LOCALE_FR)
	text "Le BATEAU EXPRESS"
	line "AQUARIA est arrivé"
	line "à CARMIN SUR MER."
	done
else
	text "Fast Ship S.S.Aqua"
	line "has arrived in"
	cont "Vermilion City."
	done
endc
