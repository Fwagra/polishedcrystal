FastShipB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  1,  9, FAST_SHIP_1F, 11
	warp_event 27, 11, FAST_SHIP_1F, 12

	def_coord_events
	coord_event 26,  5, 0, FastShipB1FSailorBlocksLeft
	coord_event 27,  5, 0, FastShipB1FSailorBlocksRight

	def_bg_events

	def_object_events
	object_event 26,  4, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShipB1FSailorScript, EVENT_FAST_SHIP_B1F_SAILOR_LEFT
	object_event 27,  4, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShipB1FSailorScript, EVENT_FAST_SHIP_B1F_SAILOR_RIGHT
	object_event  5,  9, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSailorJeff, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event  2,  2, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerPicnickerDebra, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event 22,  7, SPRITE_JUGGLER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerJugglerFritz, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event 10, 11, SPRITE_BAKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBakerSharyn, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event 13,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerSailorGarrett, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event 21,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerFisherJonah, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event 11,  9, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBlackbeltWai, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event 19,  2, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerSailorKenneth, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event  5,  9, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerTeacherShirley, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event 10,  7, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSchoolboyNate, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event 10,  9, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSchoolboyRicky, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND

	object_const_def
	const FASTSHIPB1F_SAILOR1
	const FASTSHIPB1F_SAILOR2

FastShipB1FSailorBlocksLeft:
	checkevent EVENT_FAST_SHIP_B1F_SAILOR_RIGHT
	iftruefwd FastShipB1FAlreadyBlocked
	applymovement FASTSHIPB1F_SAILOR2, FastShipB1FSailorBlocksLeftMovement
	moveobject FASTSHIPB1F_SAILOR1, 26, 4
	appear FASTSHIPB1F_SAILOR1
	pause 5
	disappear FASTSHIPB1F_SAILOR2
	end

FastShipB1FSailorBlocksRight:
	checkevent EVENT_FAST_SHIP_B1F_SAILOR_LEFT
	iftruefwd FastShipB1FAlreadyBlocked
	applymovement FASTSHIPB1F_SAILOR1, FastShipB1FSailorBlocksRightMovement
	moveobject FASTSHIPB1F_SAILOR2, 27, 4
	appear FASTSHIPB1F_SAILOR2
	pause 5
	disappear FASTSHIPB1F_SAILOR1
FastShipB1FAlreadyBlocked:
	end

FastShipB1FSailorScript:
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftrue_jumptextfaceplayer FastShipB1FOnDutySailorDirectionsText
	faceplayer
	opentext
	checkevent EVENT_FAST_SHIP_LAZY_SAILOR
	iftruefwd .LazySailor
	checkevent EVENT_FAST_SHIP_INFORMED_ABOUT_LAZY_SAILOR
	iftrue_jumpopenedtext FastShipB1FOnDutySailorRefusedText
	setevent EVENT_FAST_SHIP_INFORMED_ABOUT_LAZY_SAILOR
	clearevent EVENT_FAST_SHIP_CABINS_NNW_NNE_NE_SAILOR
	jumpopenedtext FastShipB1FOnDutySailorText

.LazySailor:
	writetext FastShipB1FOnDutySailorThanksText
	checkevent EVENT_FAST_SHIP_FOUND_GIRL
	iffalsefwd .NotFoundGirl
	waitendtext

.NotFoundGirl:
	promptbutton
	jumpopenedtext FastShipB1FOnDutySailorSawLittleGirlText

GenericTrainerSailorJeff:
	generictrainer SAILOR, JEFF, EVENT_BEAT_SAILOR_JEFF, SailorJeffSeenText, SailorJeffBeatenText

if DEF(_LOCALE_FR)
	text "Faut que je m'en-"
	line "traîne sérieux"
	line "pour progresser."
	done
else
	text "I guess I can't"
	line "win if I don't get"
	cont "serious."
	done
endc

GenericTrainerPicnickerDebra:
	generictrainer PICNICKER, DEBRA, EVENT_BEAT_PICNICKER_DEBRA, PicnickerDebraSeenText, PicnickerDebraBeatenText

if DEF(_LOCALE_FR)
	text "SAFRANIA, CELADO-"
	line "POLE… On dit qu'il"
	line "y a plein de"
	line "grandes villes à"
	line "KANTO."
	done
else
	text "Saffron, Celadon…"
	line "I hear there are"

	para "many big cities"
	line "in Kanto."
	done
endc

GenericTrainerJugglerFritz:
	generictrainer JUGGLER, FRITZ, EVENT_BEAT_JUGGLER_FRITZ, JugglerFritzSeenText, JugglerFritzBeatenText

if DEF(_LOCALE_FR)
	text "La mer c'est fini"
	line "pour moi. Je vais"
	line "prendre le TRAIN"
	line "MAGNET la prochai-"
	line "ne fois."
	done
else
	text "No more ships for"
	line "me. Next time,"

	para "I'm taking the"
	line "Magnet Train."
	done
endc

GenericTrainerBakerSharyn:
	generictrainer BAKER, SHARYN, EVENT_BEAT_BAKER_SHARYN, BakerSharynSeenText, BakerSharynBeatenText

	text "I may not be the"
	line "best at battles,"

	para "but people love"
	line "my baking."
	done

GenericTrainerSailorGarrett:
	generictrainer SAILOR, GARRETT, EVENT_BEAT_SAILOR_GARRETT, SailorGarrettSeenText, SailorGarrettBeatenText

if DEF(_LOCALE_FR)
	text "Les passagers sont"
	line "de CARMIN SUR MER"
	line "et aussi"
	line "d'OLIVILLE."
	done
else
	text "We get different"
	line "passengers from"

	para "Vermilion City to"
	line "Olivine City."
	done
endc

GenericTrainerFisherJonah:
	generictrainer FISHER, JONAH, EVENT_BEAT_FISHER_JONAH, FisherJonahSeenText, FisherJonahBeatenText

if DEF(_LOCALE_FR)
	text "Je vais pêcher au"
	line "port de CARMIN."
	done
else
	text "I plan to fish off"
	line "Vermilion's pier."
	done
endc

GenericTrainerBlackbeltWai:
	generictrainer BLACKBELT_T, WAI, EVENT_BEAT_BLACKBELT_WAI, BlackbeltWaiSeenText, BlackbeltWaiBeatenText

if DEF(_LOCALE_FR)
	text "Je n'ai pas trouvé"
	line "le ROI KARATE à"
	line "JOHTO. On dit"
	line "qu'il s'en- traîne"
	line "dans une caverne."
	done
else
	text "I couldn't find"
	line "the Karate King in"
	cont "Johto."

	para "He's supposed to"
	line "be training in a"
	cont "cave somewhere."
	done
endc

GenericTrainerSailorKenneth:
	generictrainer SAILOR, KENNETH, EVENT_BEAT_SAILOR_KENNETH, SailorKennethSeenText, SailorKennethBeatenText

if DEF(_LOCALE_FR)
	text "Huit BADGES! Tu as"
	line "alors battu les"
	line "CHAMPIONS des"
	line "ARENES… Normal que"
	line "tu sois balèze!"
	done
else
	text "Eight Badges!"
	line "They must prove"

	para "that you've beaten"
	line "Gym Leaders."

	para "No wonder you're"
	line "so good!"
	done
endc

GenericTrainerTeacherShirley:
	generictrainer TEACHER_F, SHIRLEY, EVENT_BEAT_TEACHER_SHIRLEY, TeacherShirleySeenText, TeacherShirleyBeatenText

if DEF(_LOCALE_FR)
	text "On va tous aux"
	line "RUINES près de"
	line "MAUVILLE."
	done
else
	text "We're on a field"
	line "trip to the ruins"
	cont "outside Violet."
	done
endc

GenericTrainerSchoolboyNate:
	generictrainer SCHOOLBOY, NATE, EVENT_BEAT_SCHOOLBOY_NATE, SchoolboyNateSeenText, SchoolboyNateBeatenText

if DEF(_LOCALE_FR)
	text "Les radios captent"
	line "d'étranges signaux"
	line "dans les RUINES."
	done
else
	text "Radios pick up"
	line "strange signals"
	cont "inside the ruins."
	done
endc

GenericTrainerSchoolboyRicky:
	generictrainer SCHOOLBOY, RICKY, EVENT_BEAT_SCHOOLBOY_RICKY, SchoolboyRickySeenText, SchoolboyRickyBeatenText

	text "I read in a #-"
	line "mon Journal that"

	para "there are four of"
	line "those stone panels"
	cont "in the ruins."
	done

FastShipB1FSailorBlocksRightMovement:
	fix_facing
	run_step_right
	remove_fixed_facing
	turn_head_down
	step_end

FastShipB1FSailorBlocksLeftMovement:
	fix_facing
	run_step_left
	remove_fixed_facing
	turn_head_down
	step_end

FastShipB1FOnDutySailorText:
if DEF(_LOCALE_FR)
	text "Hé toi. Tu peux"
	line "chercher mon pote"
	line "pour moi? Il se"
	line "balade dans le"
	line "coin. Toujours à"
	line "rien faire!"
	line "J'aimerais le"
	line "trouver mais moi"
	line "j'ai du taf."
	done
else
	text "Hey, kid. Could I"
	line "get you to look"
	cont "for my buddy?"

	para "He's goofing off"
	line "somewhere, that"
	cont "lazy bum!"

	para "I want to go find"
	line "him, but I'm on"
	cont "duty right now."
	done
endc

FastShipB1FOnDutySailorRefusedText:
if DEF(_LOCALE_FR)
	text "Oh, ben… Le"
	line "CAPITAINE va être"
	line "furax…"
	done
else
	text "Oh, gee…"

	para "The Captain will"
	line "be furious…"
	done
endc

FastShipB1FOnDutySailorThanksText:
if DEF(_LOCALE_FR)
	text "Merci toi! J'lui"
	line "ai passé un savon"
	line "des familles et il"
	line "va bosser"
	line "maintenant."
	done
else
	text "Thanks, kid!"
	line "I chewed him out"

	para "good so he'll quit"
	line "slacking off!"
	done
endc

FastShipB1FOnDutySailorSawLittleGirlText:
if DEF(_LOCALE_FR)
	text "Une fillette? Je"
	line "crois l'avoir vue"
	line "passer."
	done
else
	text "A little girl?"

	para "I may have seen"
	line "her go by here."
	done
endc

FastShipB1FOnDutySailorDirectionsText:
if DEF(_LOCALE_FR)
	text "La salle à manger"
	line "est tout droit."
	line "Les escaliers au"
	line "bout mènent à la"
	line "cabine du"
	line "CAPITAINE."
	done
else
	text "The dining room is"
	line "up ahead."

	para "The stairs at the"
	line "end lead to the"
	cont "Captain's cabin."
	done
endc

SailorJeffSeenText:
if DEF(_LOCALE_FR)
	text "Y'a rien de tel"
	line "qu'un combat pen-"
	line "dant la pause."
	done
else
	text "Nothing beats a"
	line "battle when I'm"
	cont "on my break."
	done
endc

SailorJeffBeatenText:
if DEF(_LOCALE_FR)
	text "Fini la pause!"
	done
else
	text "Win or lose, my"
	line "break's over!"
	done
endc

PicnickerDebraSeenText:
if DEF(_LOCALE_FR)
	text "J'm'ennuie."
	line "…Combat?"
	done
else
	text "I'm so bored."
	line "Want to battle?"
	done
endc

PicnickerDebraBeatenText:
if DEF(_LOCALE_FR)
	text "Woah. T'es fort."
	done
else
	text "Yow! You're too"
	line "strong!"
	done
endc

JugglerFritzSeenText:
if DEF(_LOCALE_FR)
	text "Beuh….. J'ai le"
	line "mal de mer!"
	done
else
	text "Urrf…"
	line "I'm seasick!"
	done
endc

JugglerFritzBeatenText:
if DEF(_LOCALE_FR)
	text "J'peux plus"
	line "bouger…"
	done
else
	text "I can't move any-"
	line "more…"
	done
endc

BakerSharynSeenText:
if DEF(_LOCALE_FR)
	text "Je fais du pain,"
	line "et je cuis tes"
	cont "#MON aussi!"
	done
else
	text "As I bake bread,"
	line "I will bake your"
	cont "#mon, too!"
	done
endc

BakerSharynBeatenText:
	text "At least my bread"
	line "is a winner."
	done

SailorGarrettSeenText:
if DEF(_LOCALE_FR)
	text "Nous les marins,"
	line "on rigole pas!"
	done
else
	text "This is where we"
	line "sailors work!"
	done
endc

SailorGarrettBeatenText:
if DEF(_LOCALE_FR)
	text "Ha ha ha ha ha."
	line "Perdu."
	done
else
	text "I lost on my home"
	line "field…"
	done
endc

FisherJonahSeenText:
if DEF(_LOCALE_FR)
	text "On est en mer mais"
	line "on peut pas"
	line "pêcher! C'est"
	line "naze!"
	line "Allez…COMBAT!"
	done
else
	text "Even though we're"
	line "out on the sea, I"
	cont "can't fish!"

	para "This is boring!"
	line "Let's battle!"
	done
endc

FisherJonahBeatenText:
if DEF(_LOCALE_FR)
	text "T'es naze…"
	line "J't'aime pas."
	done
else
	text "I… I'm not bored"
	line "anymore…"
	done
endc

BlackbeltWaiSeenText:
if DEF(_LOCALE_FR)
	text "Je me muscle les"
	line "jambes avec le"
	line "tangage du bateau!"
	done
else
	text "I'm building up my"
	line "legs by bracing"

	para "against the ship's"
	line "rocking!"
	done
endc

BlackbeltWaiBeatenText:
if DEF(_LOCALE_FR)
	text "Je me suis tout"
	line "planté!"
	done
else
	text "Rocked and rolled"
	line "over!"
	done
endc

SailorKennethSeenText:
if DEF(_LOCALE_FR)
	text "J'suis un marin!"
	line "J'entraîne aussi"
	line "des #MON pour"
	line "devenir un boss!"
	done
else
	text "I'm a sailor man!"

	para "But I'm training"
	line "#mon, so I can"
	cont "become the Champ!"
	done
endc

SailorKennethBeatenText:
if DEF(_LOCALE_FR)
	text "J'suis un nul…"
	done
else
	text "My lack of train-"
	line "ing is obvious…"
	done
endc

TeacherShirleySeenText:
if DEF(_LOCALE_FR)
	text "Touche pas à mes"
	line "élèves!"
	done
else
	text "Don't lay a finger"
	line "on my students!"
	done
endc

TeacherShirleyBeatenText:
if DEF(_LOCALE_FR)
	text "Aaack!"
	done
else
	text "Aaack!"
	done
endc

SchoolboyNateSeenText:
if DEF(_LOCALE_FR)
	text "Tu connais les"
	line "RUINES d'ALPHA?"
	done
else
	text "Do you know the"
	line "Ruins of Alph?"
	done
endc

SchoolboyNateBeatenText:
if DEF(_LOCALE_FR)
	text "Yaargh!"
	done
else
	text "Yaargh!"
	done
endc

SchoolboyRickySeenText:
if DEF(_LOCALE_FR)
	text "Il y a d'étranges"
	line "panneaux dans les"
	line "RUINES d'ALPHA."
	done
else
	text "There are some odd"
	line "stone panels in"
	cont "the Ruins of Alph."
	done
endc

SchoolboyRickyBeatenText:
if DEF(_LOCALE_FR)
	text "Yaaaaaah!"
	done
else
	text "I was done in!"
	done
endc

