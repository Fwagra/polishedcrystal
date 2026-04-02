DiglettsCave_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 37, 15, VERMILION_CITY, 10
	warp_event 39, 13, DIGLETTS_CAVE, 5
	warp_event 37,  5, ROUTE_2_NORTH, 4
	warp_event 39,  3, DIGLETTS_CAVE, 6
	warp_event 37, 31, DIGLETTS_CAVE, 2
	warp_event  5,  5, DIGLETTS_CAVE, 4

	def_coord_events

	def_bg_events
	bg_event  8, 15, BGEVENT_ITEM + MAX_REVIVE, EVENT_DIGLETTS_CAVE_HIDDEN_MAX_REVIVE
	bg_event 34, 33, BGEVENT_ITEM + MAX_REPEL, EVENT_DIGLETTS_CAVE_HIDDEN_MAX_REPEL

	def_object_events
	object_event 11, 15, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DiglettsCaveFossilManiacScript, -1
	object_event  5, 13, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerHikerGerard, -1
	object_event 25, 31, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerHikerDent, -1
	object_event 16, 21, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBlackbeltInigo, -1
	object_event  9, 20, SPRITE_ENGINEER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerEngineerSmith, -1
	object_event 37, 13, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, DiglettsCavePokefanMText, -1
	object_event 20, 27, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, DiglettsCaveCooltrainerfText, -1
	itemball_event 13, 28, RARE_BONE, 1, EVENT_DIGLETTS_CAVE_RARE_BONE

DiglettsCaveFossilManiacScript:
	faceplayer
	opentext
	writetext .GreetingText
	promptbutton
	special Special_ChooseItem
	iffalse_jumpopenedtext .NoItemText
	special GetFossilManiacPrice
	iffalse_jumpopenedtext .WrongItemText
	special ItemManiac_SelectQuantity
	iffalse_jumpopenedtext .NoItemText
	special MultiplyMoneyByQuantity
	writetext .OfferText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .NoItemText
	special TakeItemFromMemWithQuantity
	waitsfx
	playsound SFX_TRANSACTION
	special Give_hMoneyTemp
	special PlaceMoneyTopRight
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Merci!"

	para "Je revendrai ca"
	line "bien plus cher que"

	para "ce que je t'ai"
	line "donne. Ha!"

	para "Les affaires!"
	done
else
	text "Hey, thanks!"

	para "I bet I can sell"
	line "this for way more"
	cont "than I just gave"
	cont "you. Ha!"

	para "That's business"
	line "for ya!"
	done
endc

.GreetingText:
if DEF(_LOCALE_FR)
	text "Ecoute, j'ai une"
	line "super affaire!"

	para "Tu sais qu'on"
	line "trouve des"

	para "fossiles #mon"
	line "dans les rochers?"

	para "Si tu en trouves"
	line "un, amene-le moi."

	para "Je te ferai une"
	line "bonne offre."
else
	text "Hey, check it out."
	line "I've got a sweet"
	cont "deal for ya!"

	para "You know how #-"
	line "mon fossils turn"
	cont "up in rocks?"

	para "If you find one,"
	line "bring it to me."

	para "I'll make it worth"
	line "your while."
endc
	done

.OfferText:
if DEF(_LOCALE_FR)
	text "Sympa! Laisse-moi"
	line "voir ça."

	para "Je te donne"
	line "¥"
	text_decimal hMoneyTemp, 3, 7
	text " pour ça."
	cont "Ca te va?"
else
	text "Hey, nice! Let me"
	line "check that out."

	para "I'll give you"
	line "¥"
	text_decimal hMoneyTemp, 3, 7
	text " for it."
	cont "Whaddaya say?"
endc
	done

.WrongItemText:
if DEF(_LOCALE_FR)
	text "Non, ca ne va pas."
	line "Pas interessant"
	cont "pour moi."
else
	text "Nope, this is no"
	line "good. Not worth"
	cont "my while."
endc
	done

.NoItemText:
if DEF(_LOCALE_FR)
	text "…Rien d'utile"
	line "dans ton Sac."

	para "Tant pis. Une"
	line "autre fois!"
else
	text "…Nope, nothing"
	line "cool in your Bag."

	para "Oh well. Maybe"
	line "next time!"
endc
	done

GenericTrainerHikerGerard:
	generictrainer HIKER, GERARD, EVENT_BEAT_HIKER_GERARD, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "J'ai la trouille"
	line "ici."

	para "Si un Taupiqueur"
	line "me sautait dessus"

	para "sans prevenir?"
else
	text "This place makes"
	line "me so nervous."

	para "What if a Diglett"
	line "attacks me out of"
	cont "nowhere?"
endc
	done

.SeenText:
if DEF(_LOCALE_FR)
	text "Aah! Ce rocher"
	line "a bougé, non?"
else
	text "Aah! I think that"
	line "rock just moved!"
endc
	done

.BeatenText:
if DEF(_LOCALE_FR)
	text "C'était mon"
	line "imagination."
else
	text "Must have been"
	line "my imagination."
endc
	done

GenericTrainerHikerDent:
	generictrainer HIKER, DENT, EVENT_BEAT_HIKER_DENT, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Je serai à ma"
	line "place avec les"

	para "costauds d'Arène"
	line "d'Argenta. Hohoh!"
else
	text "I'll fit right in"
	line "with Pewter Gym's"
	cont "buff crew. Hohoh!"
endc
	done

.SeenText:
if DEF(_LOCALE_FR)
	text "Je vais à Argenta."

	para "Son Arène Roche"
	line "est parfaite pour"

	para "un baraqué comme"
	line "moi!"
else
	text "I'm headed to"
	line "Pewter."

	para "Its Rock-type Gym"
	line "is perfect for a"
	cont "buff guy like me!"
endc
	done

.BeatenText:
if DEF(_LOCALE_FR)
	text "Hohoh!"
	line "Plus baraqué"
	cont "que moi!"
else
	text "Hohoh!"
	line "Someone more buff"
	cont "than me!"
endc
	done

GenericTrainerBlackbeltInigo:
	generictrainer BLACKBELT_T, INIGO, EVENT_BEAT_BLACKBELT_INIGO, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Crier ne fait pas"
	line "de toi un meilleur"

	para "combattant, mais"
	line "ca peut effrayer"

	para "l'adversaire."
else
	text "Making noises won't"
	line "make you a better"
	cont "fighter, but it"

	para "can intimidate"
	line "your foes."
endc
	done

.SeenText:
if DEF(_LOCALE_FR)
	text "Prepare-toi au"
	line "combat! HOO-HAH!"
else
	text "Prepare for"
	line "battle!"
	cont "HOO-HAH!"
endc
	done

.BeatenText:
if DEF(_LOCALE_FR)
	text "HIIYAAAH!"
else
	text "HIIYAAAH!"
endc
	done

GenericTrainerEngineerSmith:
	generictrainer ENGINEER, SMITH, EVENT_BEAT_ENGINEER_SMITH, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Ces Taupiqueur"
	line "sont de vrais"

	para "ingenieurs, tout"
	line "simplement."
else
	text "Those Diglett are"
	line "just natural"
	cont "engineers."
endc
	done

.SeenText:
if DEF(_LOCALE_FR)
	text "Comment des"
	line "Taupiqueur ont-ils"

	para "creuse un aussi"
	line "long tunnel?"
else
	text "How did Diglett"
	line "create such a long"
	cont "tunnel?"
endc
	done

.BeatenText:
if DEF(_LOCALE_FR)
	text "Incroyable!"
else
	text "Amazing!"
endc
	done

DiglettsCaveCooltrainerfText:
if DEF(_LOCALE_FR)
	text "Adorables petits"
	line "Taupiqueur!"

	para "J'ai jure en voir"
	line "un au nez bleu!"
else
	text "Look at all these"
	line "cute Diglett!"

	para "I swear I saw one"
	line "with a blue nose!"
endc
	done

DiglettsCavePokefanMText:
if DEF(_LOCALE_FR)
	text "Des tas de"
	line "Taupiqueur ont"

	para "surgi du sol!"
	line "Choquant!"

	para "J'ai entendu dire"
	line "que sur"

	para "Cramois'Ile ils"
	line "ont l'air"
	cont "differents."
else
	text "A bunch of Diglett"
	line "popped out of the"

	para "ground! That was"
	line "shocking."

	para "I heard Diglett"
	line "on Cinnabar Island"
	cont "look different."
endc
	done
