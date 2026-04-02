UnionCave1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  3, UNION_CAVE_B1F_NORTH, 3
	warp_event  3, 45, UNION_CAVE_B1F_SOUTH, 1
	warp_event 17, 43, ROUTE_33, 1
	warp_event 17, 15, ROUTE_32, 4

	def_coord_events

	def_bg_events
	bg_event  7, 19, BGEVENT_ITEM + GREAT_BALL, EVENT_UNION_CAVE_1F_HIDDEN_GREAT_BALL
	bg_event  2, 33, BGEVENT_ITEM + BIG_PEARL, EVENT_UNION_CAVE_1F_HIDDEN_BIG_PEARL
	bg_event  8, 33, BGEVENT_ITEM + PARALYZEHEAL, EVENT_UNION_CAVE_1F_HIDDEN_PARALYZEHEAL

	def_object_events
	object_event  3, 18, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerHikerDaniel, -1
	object_event  7, 37, SPRITE_POKEMANIAC, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerPokemaniacLarry, -1
	object_event 11, 20, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerHikerRussell, -1
	object_event 15, 39, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerFirebreatherRay, -1
	object_event 11, 32, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerFirebreatherBill, -1
	object_event  5,  3, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerRuin_maniacJones, -1
	itemball_event 15, 33, GREAT_BALL, 1, EVENT_UNION_CAVE_1F_GREAT_BALL
	itemball_event  2,  8, X_ATTACK, 1, EVENT_UNION_CAVE_1F_X_ATTACK
	itemball_event  3, 28, POTION, 1, EVENT_UNION_CAVE_1F_POTION
	itemball_event 12, 45, AWAKENING, 1, EVENT_UNION_CAVE_1F_AWAKENING

GenericTrainerPokemaniacLarry:
	generictrainer POKEMANIAC, LARRY, EVENT_BEAT_POKEMANIAC_LARRY, PokemaniacLarrySeenText, PokemaniacLarryBeatenText

if DEF(_LOCALE_FR)
	text "Chaque vendredi on"
	line "peut entendre des"

	para "cris de #mon"
	line "venant de l'antre."
	done
else
	text "Every Friday, you"
	line "can hear #mon"

	para "roars from deep"
	line "inside the cave."
	done
endc

GenericTrainerHikerRussell:
	generictrainer HIKER, RUSSELL, EVENT_BEAT_HIKER_RUSSELL, HikerRussellSeenText, HikerRussellBeatenText

if DEF(_LOCALE_FR)
	text "Parfait! C'est"
	line "décidé..."

	para "Je vais entraîner"
	line "ici mes #mon à"
	cont "fond!"
	done
else
	text "All right, then!"
	line "I've decided."

	para "I'm not leaving"
	line "until my #mon"
	cont "get tougher!"
	done
endc

GenericTrainerHikerDaniel:
	generictrainer HIKER, DANIEL, EVENT_BEAT_HIKER_DANIEL, HikerDanielSeenText, HikerDanielBeatenText

if DEF(_LOCALE_FR)
	text "On m'a persuadé"
	line "d'acheter une"
	cont "QUEUE de RAMOLOSS."

	para "Mais j'ai des"
	line "remords..."
	cont "Pauvre #mon."
	done
else
	text "I was conned into"
	line "buying a Slowpoke-"
	cont "Tail."

	para "I feel sorry for"
	line "the poor #mon."
	done
endc

GenericTrainerFirebreatherBill:
	generictrainer FIREBREATHER, BILL, EVENT_BEAT_FIREBREATHER_BILL, FirebreatherBillSeenText, FirebreatherBillBeatenText

if DEF(_LOCALE_FR)
	text "Le week-end on"
	line "peut entendre des"

	para "cris de #mon"
	line "venant de l'antre."
	done
else
	text "On weekends, you"
	line "can hear strange"

	para "roars from deep in"
	line "the cave."
	done
endc

GenericTrainerFirebreatherRay:
	generictrainer FIREBREATHER, RAY, EVENT_BEAT_FIREBREATHER_RAY, FirebreatherRaySeenText, FirebreatherRayBeatenText

if DEF(_LOCALE_FR)
	text "C'est le feu de"
	line "mon #mon qui"
	cont "éclaire la grotte."
	done
else
	text "It's my #mon's"
	line "fire that lights"
	cont "up this cave."
	done
endc

GenericTrainerRuin_maniacJones:
	generictrainer RUIN_MANIAC, JONES, EVENT_BEAT_RUIN_MANIAC_JONES, Ruin_maniacJonesSeenText, Ruin_maniacJonesBeatenText

	text "The Ruins are hid-"
	line "ing something…"
	cont "I just know it!"
	done

HikerRussellSeenText:
	text "You're headed to"
	line "Azalea, are you?"

	para "Let my #mon see"
	line "if you are good"
	cont "enough to battle."
	done

HikerRussellBeatenText:
	text "Oh, oh, oh!"
	done

PokemaniacLarrySeenText:
if DEF(_LOCALE_FR)
	text "Je parcours la"
	line "terre à la recher-"
	cont "che de #mon."

	para "Quoi? Toi aussi tu"
	line "les collectionnes?"

	para "Bah alors..."
	line "COMBAT!"
	done
else
	text "I roam far and"
	line "wide in search of"
	cont "#mon."

	para "Are you looking"
	line "for #mon too?"

	para "Then you're my"
	line "collecting rival!"
	done
endc

PokemaniacLarryBeatenText:
if DEF(_LOCALE_FR)
	text "Non!!! Mes pauvres"
	line "#mon..."
	done
else
	text "Ugh. My poor #-"
	line "mon…"
	done
endc

HikerDanielSeenText:
if DEF(_LOCALE_FR)
	text "Whoa! Tu m'as"
	line "fait peur!"

	para "Je me croyais seul"
	line "dans le coin!"
	done
else
	text "Whoa! What a"
	line "surprise!"

	para "I didn't expect to"
	line "see anyone here!"
	done
endc

HikerDanielBeatenText:
if DEF(_LOCALE_FR)
	text "Whoa! J'me suis"
	line "fait détruire!"
	done
else
	text "Whoa! I'm beaten"
	line "big time!"
	done
endc

FirebreatherBillSeenText:
if DEF(_LOCALE_FR)
	text "L'ULTRASON de"
	line "NOSFERAPTI rend"
	cont "mes #mon"
	cont "complètement fous."

	para "Et ça..."
	line "C'est super lourd!"
	done
else
	text "Zubat's Supersonic"
	line "keeps confusing"
	cont "my #mon."

	para "I'm seriously"
	line "upset about that!"
	done
endc

FirebreatherBillBeatenText:
if DEF(_LOCALE_FR)
	text "Tout perdu!"
	done
else
	text "I flamed out!"
	done
endc

FirebreatherRaySeenText:
if DEF(_LOCALE_FR)
	text "Une caverne éclai-"
	line "rée, ça fait pas"
	cont "peur."

	para "Avec du courage,"
	line "les méchants, ça"
	cont "fait pas peur."
	done
else
	text "If it's light, a"
	line "cave isn't scary."

	para "If you're strong,"
	line "#mon aren't"
	cont "scary."
	done
endc

FirebreatherRayBeatenText:
if DEF(_LOCALE_FR)
	text "FLASH!"
	done
else
	text "Flash!"
	done
endc

Ruin_maniacJonesSeenText:
	text "Have you explored"
	line "the Ruins of Alph?"
	done

Ruin_maniacJonesBeatenText:
	text "Gahahah!"
	done

