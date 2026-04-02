MountMoonB2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 10, 24, MOUNT_MOON_B1F, 4
	warp_event 21,  7, MOUNT_MOON_B1F, 5
	warp_event 17, 15, MOUNT_MOON_B1F, 6
	warp_event  3,  9, MOUNT_MOON_B1F, 7

	def_coord_events

	def_bg_events
	bg_event 28,  7, BGEVENT_ITEM + ETHER, EVENT_MOUNT_MOON_B2F_HIDDEN_ETHER
	bg_event  7,  9, BGEVENT_ITEM + STARDUST, EVENT_MOUNT_MOON_B2F_HIDDEN_STARDUST
	bg_event 10, 30, BGEVENT_ITEM + PP_UP, EVENT_MOUNT_MOON_B2F_HIDDEN_PP_UP

	def_object_events
	object_event 24,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterJosh, -1
	object_event 12, 21, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBird_keeperMick, -1
	object_event 29, 18, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerHexManiacEsther, -1
	object_event  4, 15, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerCooltrainermConnor, -1
	object_event  9,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSuperNerdMiguel, -1
	object_event 10,  6, SPRITE_BOULDER_ROCK_FOSSIL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_ITEMBALL, PLAYEREVENT_ITEMBALL, HELIX_FOSSIL, 1, EVENT_MOUNT_MOON_B2F_HELIX_FOSSIL
	object_event 11,  6, SPRITE_BOULDER_ROCK_FOSSIL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_ITEMBALL, PLAYEREVENT_ITEMBALL, DOME_FOSSIL, 1, EVENT_MOUNT_MOON_B2F_DOME_FOSSIL
	itemball_event 11, 14, MOON_STONE, 1, EVENT_MOUNT_MOON_B2F_MOON_STONE
	itemball_event 18, 21, DUSK_STONE, 1, EVENT_MOUNT_MOON_B2F_DUSK_STONE
	itemball_event 22,  3, SHINY_STONE, 1, EVENT_MOUNT_MOON_B2F_SHINY_STONE
	itemball_event 26, 11, BIG_MUSHROOM, 1, EVENT_MOUNT_MOON_B2F_BIG_MUSHROOM

GenericTrainerYoungsterJosh:
	generictrainer YOUNGSTER, YOUNGSTER_JOSH, EVENT_BEAT_YOUNGSTER_JOSH, YoungsterJoshSeenText, YoungsterJoshBeatenText

if DEF(_LOCALE_FR)
	text "Avec cette équipe,"
	line "tu as dû"

	para "explorer plein"
	line "d'endroits."

	para "Te perdre, c'est"
	line "ton quotidien,"
	cont "hein?"
	done
else
	text "With that team of"
	line "#mon, you must"

	para "have explored a"
	line "lot of places."

	para "Getting lost is"
	line "your everyday"
	cont "fare, huh?"
	done
endc

GenericTrainerBird_keeperMick:
	generictrainer BIRD_KEEPER, MICK, EVENT_BEAT_BIRD_KEEPER_MICK, Bird_keeperMickSeenText, Bird_keeperMickBeatenText

if DEF(_LOCALE_FR)
	text "Qui se ressemble,"
	line "s'assemble."

	para "Je devrais traîner"
	line "avec d'autres"

	para "ornithos... loin."
	done
else
	text "Birds of a feather"
	line "flock together."

	para "I should go hang"
	line "out with other"

	para "Bird Keepers some-"
	line "where sensible."
	done
endc

GenericTrainerHexManiacEsther:
	generictrainer HEX_MANIAC, ESTHER, EVENT_BEAT_HEX_MANIAC_ESTHER, HexManiacEstherSeenText, HexManiacEstherBeatenText

if DEF(_LOCALE_FR)
	text "Miroir magique,"
	line "grand et sage,"

	para "n'a pas vu ma"
	line "mort rapide."
	done
else
	text "Magic mirror,"
	line "great and wise,"

	para "failed to see my"
	line "swift demise."
	done
endc

GenericTrainerCooltrainermConnor:
	generictrainer COOLTRAINERM, CONNOR, EVENT_BEAT_COOLTRAINERM_CONNOR, CooltrainermConnorSeenText, CooltrainermConnorBeatenText

if DEF(_LOCALE_FR)
	text "Le style et le"
	line "charme vont"
	cont "ensemble."

	para "C'est le combo"
	line "le plus cool."
	done
else
	text "Style and charm"
	line "go hand in hand."

	para "They're the cool-"
	line "est combination."
	done
endc

GenericTrainerSuperNerdMiguel:
	generictrainer SUPER_NERD, MIGUEL, EVENT_BEAT_SUPER_NERD_MIGUEL, SuperNerdMiguelSeenText, SuperNerdMiguelBeatenText

if DEF(_LOCALE_FR)
	text "Si seulement"
	line "j'avais un"
	cont "PTERA..."
	done
else
	text "Maybe if I had"
	line "an Aerodactyl…"
	done
endc

YoungsterJoshSeenText:
if DEF(_LOCALE_FR)
	text "Tu viens explorer"
	line "la grotte, non?"

	para "Fais gaffe, tu"
	line "peux te perdre."
	done
else
	text "You came to ex-"
	line "plore the cave,"
	cont "right?"

	para "Be careful, you"
	line "may get lost."
	done
endc

YoungsterJoshBeatenText:
if DEF(_LOCALE_FR)
	text "T'es pas perdu du"
	line "tout."
	done
else
	text "You're not lost"
	line "at all."
	done
endc

Bird_keeperMickSeenText:
if DEF(_LOCALE_FR)
	text "Je sais pas"
	line "pourquoi je suis"
	cont "venu ici."

	para "Mes oiseaux ne"
	line "volent pas"
	cont "dans cette grotte!"
	done
else
	text "I'm not sure why"
	line "I came here."

	para "My birds can't fly"
	line "in this cave!"
	done
endc

Bird_keeperMickBeatenText:
if DEF(_LOCALE_FR)
	text "Ouais, mauvaise"
	line "idée."
	done
else
	text "Yeah, this was a"
	line "bad idea."
	done
endc

HexManiacEstherSeenText:
if DEF(_LOCALE_FR)
	text "Miroir, miroir,"
	line "au mur..."

	para "Qui lancera sa"
	line "# Ball?"
	done
else
	text "Mirror, mirror,"
	line "on the wall,"

	para "who will throw"
	line "their # Ball?"
	done
endc

HexManiacEstherBeatenText:
if DEF(_LOCALE_FR)
	text "Toi!"
	done
else
	text "You will!"
	done
endc

CooltrainermConnorSeenText:
if DEF(_LOCALE_FR)
	text "Tu l'as..."
	line "ou pas."
	done
else
	text "You've either got"
	line "it or you don't."
	done
endc

CooltrainermConnorBeatenText:
if DEF(_LOCALE_FR)
	text "Whoa!"
	line "Tu l'as!"
	done
else
	text "Whoa!"
	line "You've got it!"
	done
endc

SuperNerdMiguelSeenText:
if DEF(_LOCALE_FR)
	text "J'ai trouvé ces"
	line "fossiles et je les"
	cont "ai ressuscités!"

	para "Maintenant ils"
	line "sont à moi!"
	done
else
	text "I found these"
	line "fossils and re-"
	cont "vived them!"

	para "Now they're both"
	line "mine!"
	done
endc

SuperNerdMiguelBeatenText:
if DEF(_LOCALE_FR)
	text "Mes fossiles"
	line "écrasés!"
	done
else
	text "My fossils were"
	line "crushed!"
	done
endc

