CeladonCafe_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6,  7, CELADON_CITY, 9
	warp_event  7,  7, CELADON_CITY, 9

	def_coord_events

	def_bg_events
	bg_event  5,  0, BGEVENT_JUMPTEXT, EatathonContestPosterText
	bg_event  7,  1, BGEVENT_JUMPTEXT, EatathonContestTrashCanText

	def_object_events
	object_event  7,  4, SPRITE_MAYLENE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, MayleneScript, -1
	object_event  4,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonCafeTeacher, -1
	object_event  4,  6, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonCafeFisher1, -1
	object_event  1,  7, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCafeFisher2, -1
	object_event  1,  2, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeFisher3, -1
	object_event  9,  3, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, ChefText_Eatathon, -1
	object_event 11,  4, SPRITE_BAKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonCafeBakerText, -1

	object_const_def
	const CELADONCAFE_MAYLENE
	const CELADONCAFE_TEACHER

MayleneScript:
	showtext MayleneText1
	faceplayer
	opentext
	writetext MayleneText2
	waitbutton
	checkevent EVENT_BEAT_MAYLENE
	iftruefwd .Done
	writetext MayleneText3
	yesorno
	iffalsefwd .Refused
	writetext MayleneSeenText
	waitbutton
	closetext
	winlosstext MayleneBeatenText, 0
	setlasttalked CELADONCAFE_MAYLENE
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .Rematch
	loadtrainer MAYLENE, 1
	sjumpfwd .StartBattle
.Rematch
	loadtrainer MAYLENE, 2
.StartBattle
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MAYLENE
	opentext
	writetext MayleneAfterText
	waitbutton
.Done
	closetext
	turnobject CELADONCAFE_MAYLENE, RIGHT
	end

.Refused
	writetext MayleneRefusedText
	waitbutton
	closetext
	turnobject CELADONCAFE_MAYLENE, RIGHT
	end

CeladonCafeTeacher:
	checkkeyitem COIN_CASE
	iftruefwd .NoCoinCase
	showtext TeacherText_CrunchCrunch
	showtextfaceplayer TeacherText_NoCoinCase
	turnobject LAST_TALKED, LEFT
	end

.NoCoinCase:
	showtext TeacherText_KeepEating
	turnobject CELADONCAFE_TEACHER, RIGHT
	showtext TeacherText_MoreChef
	turnobject CELADONCAFE_TEACHER, LEFT
	end

CeladonCafeFisher1:
	showtext Fisher1Text_Snarfle
	showtextfaceplayer Fisher1Text_Concentration
	turnobject LAST_TALKED, LEFT
	end

CeladonCafeFisher2:
	showtext Fisher2Text_GulpChew
	showtextfaceplayer Fisher2Text_Quantity
	turnobject LAST_TALKED, RIGHT
	end

CeladonCafeFisher3:
	showtext Fisher3Text_MunchMunch
	showtextfaceplayer Fisher3Text_GoldenrodIsBest
	turnobject LAST_TALKED, RIGHT
	end

ChefText_Eatathon:
if DEF(_LOCALE_FR)
	text "Salut!"

	para "On est en plein"
	line "concours de"
	cont "gloutonnerie…"

	para "Si ca t'intéresse,"
	line "tu peux regarder."
	done
else
	text "Hi!"

	para "We're holding an"
	line "eatathon contest."

	para "We can't serve you"
	line "right now. Sorry."
	done
endc

Fisher1Text_Snarfle:
if DEF(_LOCALE_FR)
	text "…Goinfre…"
	done
else
	text "…Snarfle, chew…"
	done
endc

Fisher1Text_Concentration:
if DEF(_LOCALE_FR)
	text "Me parle pas!"

	para "J'vais perdre ma"
	line "concentration!"
	done
else
	text "Don't talk to me!"

	para "You'll break my"
	line "concentration!"
	done
endc

Fisher2Text_GulpChew:
if DEF(_LOCALE_FR)
	text "…Gloups…"
	done
else
	text "…Gulp… Chew…"
	done
endc

Fisher2Text_Quantity:
if DEF(_LOCALE_FR)
	text "Bouffer!"
	line "Bouuuuuffer!"

	para "J'vais m'faire"
	line "exploser l'ventre!"
	done
else
	text "I take quantity"
	line "over quality!"

	para "I'm happy when I'm"
	line "full!"
	done
endc

Fisher3Text_MunchMunch:
if DEF(_LOCALE_FR)
	text "Miam...(bouffe)..."
	done
else
	text "Munch, munch…"
	done
endc

Fisher3Text_GoldenrodIsBest:
if DEF(_LOCALE_FR)
	text "Ici la nourriture"
	line "est bonne mais"
	cont "celle de"
	cont "Doublonville"

	para "est la meilleure"
	line "de toutes."
	done
else
	text "The food is good"
	line "here, but Golden-"
	cont "rod has the best"
	cont "food anywhere."
	done
endc

TeacherText_CrunchCrunch:
if DEF(_LOCALE_FR)
	text "Crunch… Crunch…"
	done
else
	text "Crunch… Crunch…"
	done
endc

TeacherText_NoCoinCase:
if DEF(_LOCALE_FR)
	text "Personne ne te"
	line "donnera de Boite"

	para "Jeton, ici. Va"
	line "voir à Johto."
	done
else
	text "Nobody here will"
	line "give you a Coin"

	para "Case. You should"
	line "look in Johto."
	done
endc

TeacherText_KeepEating:
if DEF(_LOCALE_FR)
	text "Crunch… Crunch…"

	para "Je peux"
	line "toujours"
	cont "bouffer!"
	done
else
	text "Crunch… Crunch…"

	para "I can keep eating!"
	done
endc

TeacherText_MoreChef:
if DEF(_LOCALE_FR)
	text "Chef, encore!"
	done
else
	text "More, Chef!"
	done
endc

MayleneText1:
if DEF(_LOCALE_FR)
	text "Mélina:"
	line "(BAFFRE)"
	cont "(BAFFRE)"
	cont "(BAFFRE)"
	done
else
	text "Maylene: Munch"
	line "munch munch…"
	done
endc

MayleneText2:
if DEF(_LOCALE_FR)
	text "Les concours de"
	line "gloutonnerie!"

	para "Je ne savais pas"
	line "qu'une chose"
	cont "aussi"
	cont "formidable"

	para "existait!"

	para "J'avais suivi un"
	line "régime pour"
	cont "m'entraîner,"

	para "alors je peux"
	line "avaler autant"
	cont "qu'ils veulent!"

	para "Si je gagne,"
	line "c'est gratuit!!!"

	para "C'est le paradis!"
	done
else
	text "The eatathon"
	line "contest!"

	para "I never dreamed of"
	line "such a wonderful"
	cont "thing."

	para "After a strict"
	line "diet during train-"
	cont "ing, I can eat"
	cont "like a Snorlax."

	para "The winner eats"
	line "for free, too."

	para "That's just a"
	line "dream come true!"
	done
endc

MayleneText3:
if DEF(_LOCALE_FR)
	text "Je commence à"
	line "être pleine…"

	para "Tu veux faire"
	line "une pause"
	cont "et combattre?"
	done
else
	text "I'm starting to"
	line "feel full…"

	para "Um, as a break,"
	line "do you want to"
	cont "battle with me?"
	done
endc

MayleneRefusedText:
if DEF(_LOCALE_FR)
	text "Pfiou… OK."
	done
else
	text "Sigh… OK."
	done
endc

MayleneSeenText:
if DEF(_LOCALE_FR)
	text "OK! Rei!"

	para "Oh, c'est mon"
	line "salut d'avant"
	cont "match."

	para "Je vais tout"
	line "donner!"
	done
else
	text "OK! Rei!"

	para "Oh, that's my bow"
	line "before a match."

	para "I'm throwing"
	line "every-"
	line "thing I have at"
	cont "you!"
	done
endc

MayleneBeatenText:
if DEF(_LOCALE_FR)
	text "Je dois"
	line "admettre"
	cont "ma défaite…"

	para "Tu es bien"
	line "trop fort."
	done
else
	text "I'm forced"
	line "to admit"
	line "defeat…"

	para "You are much too"
	line "strong."
	done
endc

MayleneAfterText:
if DEF(_LOCALE_FR)
	text "Merci,"
	line "<PLAYER>!"

	para "Je suis prête"
	line "à continuer!"
	done
else
	text "Thank you,"
	line "<PLAYER>!"

	para "I'm ready to keep"
	line "on eating!"
	done
endc

CeladonCafeBakerText:
if DEF(_LOCALE_FR)
	text "Je bosse ici car"
	line "je peux manger"

	para "quand je veux."
	line "Simple."
	done
else
	text "I'm working here"
	line "'cause I get to"

	para "eat any time I"
	line "want. Simple."
	done
endc

EatathonContestPosterText:
if DEF(_LOCALE_FR)
	text "Concours de"
	line "Bouffe! Pas de"

	para "temps limite!"
	line "Une joie sans fin!"
	cont "Et c'est gratuit"
	cont "pour le vainqueur!"
	done
else
	text "Eatathon Contest!"
	line "No time limit!"

	para "A battle without"
	line "end! The biggest"

	para "muncher gets it"
	line "all for free!"
	done
endc

EatathonContestTrashCanText:
if DEF(_LOCALE_FR)
	text "La poubelle est"
	line "pleine de restes…"
	done
else
	text "The trash is full"
	line "of eatathon left-"
	cont "overs…"
	done
endc
