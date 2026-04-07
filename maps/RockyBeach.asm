RockyBeach_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 25, 20, ROCKY_BEACH_HOUSE, 1
	warp_event 29, 10, NOISY_FOREST, 1
	warp_event 29, 11, NOISY_FOREST, 2

	def_coord_events

	def_bg_events
	bg_event 22, 24, BGEVENT_JUMPTEXT, RockyBeachSign1Text
	bg_event 24, 10, BGEVENT_JUMPTEXT, RockyBeachSign2Text

	def_object_events
	object_event 21, 21, SPRITE_SIGHTSEER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSightseermBlaise, -1
	object_event 11, 22, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBeautyIoana, -1
	object_event  2, 21, SPRITE_LADY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerSightseerfKamila, -1
	object_event 15, 18, SPRITE_AROMA_LADY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerAromaLadyHeather, -1
	object_event 15, 13, SPRITE_BREEDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerBreederBrenda, -1
	object_event 14,  7, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSwimmermEzra, -1
	object_event 23, 10, SPRITE_AROMA_LADY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_GENERICTRAINER, 1, RockyBeachWilhomenaScript, EVENT_NOISY_FOREST_PIKABLU
	itemball_event 21,  5, FULL_HEAL, 1, EVENT_ROCKY_BEACH_FULL_HEAL
	itemball_event 32,  3, PEARL_STRING, 1, EVENT_ROCKY_BEACH_PEARL_STRING
	object_event 20, 32, SPRITE_FAT_GUY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, (1 << DAY), PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, ShamoutiIslandFisherText, -1
	object_event 23, 32, SPRITE_FAT_GUY, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, (1 << DAY), PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, ShamoutiIslandFisherText, -1

RockyBeachSign1Text:
	text "Rocky Beach"
	done

RockyBeachSign2Text:
if DEF(_LOCALE_FR)
	text "Forêt Bruyante"
	done
else
	text "Noisy Forest"
	line "Ahead"

	para "Thru to"
	line "Shrine Ruins"
	done
endc

GenericTrainerSightseermBlaise:
	generictrainer SIGHTSEERM, BLAISE, EVENT_BEAT_SIGHTSEERM_BLAISE, .SeenText, .BeatenText

	text "Je fais le tour"
	line "du monde avec mon"
	cont "#mon."
	done

.SeenText:
	text "Allons-y!"
	done

.BeatenText:
	text "Sacre bleu!"
	done

GenericTrainerBeautyIoana:
	generictrainer BEAUTY, IOANA, EVENT_BEAT_BEAUTY_IOANA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "J'ai la peau très"
	line "claire, donc"

	para "je dois faire"
	line "attention au"
	cont "soleil."
	done
else
	text "I have a naturally"
	line "pale complexion,"

	para "so I have to be"
	line "careful in the"
	cont "sun."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Je viens chaque"
	line "année bronzer."
	done
else
	text "I come here every"
	line "year to work on"
	cont "my tan."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Je suis brûlée!"
	done
else
	text "I just got"
	line "burned!"
	done
endc

GenericTrainerSightseerfKamila:
	generictrainer SIGHTSEERF, KAMILA, EVENT_BEAT_SIGHTSEERF_KAMILA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Alola est un"
	line "archipel très"
	cont "loin d'ici."

	para "Tu devrais le"
	line "visiter un jour!"
	done
else
	text "Alola is an archi-"
	line "pelago located far"
	cont "away from here."

	para "You should visit"
	line "it someday!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Alola!"

	para "C'est comme ça"
	line "qu'on se salue"
	cont "chez moi."
	done
else
	text "Alola!"

	para "That's how we greet"
	line "each other in my"
	cont "region."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Cheehoo! T'es"
	line "plutôt fort!"
	done
else
	text "Cheehoo! You're"
	line "pretty good!"
	done
endc

GenericTrainerAromaLadyHeather:
	generictrainer AROMA_LADY, HEATHER, EVENT_BEAT_AROMA_LADY_HEATHER, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "J'ai étudié l'art"
	line "floral avec"

	para "Erika, de"
	line "Céladopole."

	para "Elle a adoré"
	line "la faune locale."
	done
else
	text "I studied flower"
	line "arranging with"

	para "Erika at Celadon"
	line "University."

	para "She praised this"
	line "island for its"
	cont "local fauna."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Une fleur rouge"
	line "pousse partout"
	cont "ici."

	para "Tu as vu?"
	done
else
	text "A deep red flower"
	line "grows all over"
	cont "this island."

	para "Have you noticed?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Beau combat,"
	line "mais les fleurs?"
	done
else
	text "A lovely battle,"
	line "but what about"
	cont "the flowers?"
	done
endc

GenericTrainerBreederBrenda:
	generictrainer BREEDER, BRENDA, EVENT_BEAT_BREEDER_BRENDA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Pour faire éclore"
	line "un OEUF,"
	cont "il faut"

	para "beaucoup marcher."

	para "Quoi de mieux que"
	line "Shamouti?"
	done
else
	text "To hatch an Egg,"
	line "you have to walk"
	cont "a lot."

	para "Where better than"
	line "sunny Shamouti?"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Pour bien élever"
	line "des #MON,"

	para "il faut un bon"
	line "environnement."

	para "Ici, c'est idéal!"
	done
else
	text "The key to good"
	line "#mon breeding"

	para "is a good enviro-"
	line "nment."

	para "There's no place"
	line "better than here!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Tes #MON sont"
	line "bien élevés."
	done
else
	text "Your #mon are"
	line "well-bred."
	done
endc

GenericTrainerSwimmermEzra:
	generictrainer SWIMMERM, EZRA, EVENT_BEAT_SWIMMERM_EZRA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "J'aime faire de la"
	line "plongée ici."

	para "C'est fou de"
	line "respirer sous"
	cont "l'eau!"
	done
else
	text "I like to go scuba"
	line "diving here."

	para "It's so amazing to"
	line "breathe while"
	cont "underwater!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Tu t'es déjà"
	line "demandé ce que ça"

	para "fait de respirer"
	line "sous l'eau?"
	done
else
	text "Have you ever won-"
	line "dered what it's"

	para "like to breathe"
	line "underwater?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Plus d'air!"
	done
else
	text "Ran out of air!"
	done
endc

RockyBeachWilhomenaScript:
	generictrainer 0, 0, EVENT_TOLD_ABOUT_PIKABLU, .Text1, 0

.Text1
if DEF(_LOCALE_FR)
	text "Oh, non… Oh, non…"

	para "Mon pauvre"
	line "PIKABLU a disparu."

	para "Non… Il n'est pas"
	line "allé dans la"
	cont "FORET BRUYANTE."

	para "Je le trouverai"
	line "jamais dans les"
	cont "arbres…"

	para "Oh… Je fais quoi…?"
	done
else
	text "Oh, no. Oh, no…"

	para "My poor Pikablu"
	line "is missing."

	para "No… It couldn't"
	line "have gone into"
	cont "Noisy Forest."

	para "I'll never find"
	line "it in the trees…"

	para "Oh, what should I"
	line "do…?"
	done
endc
