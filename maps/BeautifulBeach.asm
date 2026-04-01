BeautifulBeach_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 11, 23, SEAGALLOP_FERRY_SHAMOUTI_GATE, 1
	warp_event 12, 23, SEAGALLOP_FERRY_SHAMOUTI_GATE, 1
	warp_event 27, 18, BEAUTIFUL_BEACH_VILLA, 1

	def_coord_events

	def_bg_events
	bg_event 14, 21, BGEVENT_JUMPTEXT, BeautifulBeachWelcomeSignText
	bg_event 29, 19, BGEVENT_JUMPTEXT, BeautifulBeachVillaSignText

	def_object_events
	object_event 11, 18, SPRITE_AROMA_LADY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerAromaLadyBryony, -1
	object_event 26, 26, SPRITE_SIGHTSEER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSightseermJaska, -1
	object_event 33, 23, SPRITE_TAMER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerTamerVince, -1
	object_event  5, 22, SPRITE_LADY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSightseerfRosie, -1
	object_event 12, 13, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSwimmerfRachel, -1
	object_event 27, 13, SPRITE_ARTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerArtistMarlene, -1
	itemball_event  6, 19, LUXURY_BALL, 1, EVENT_BEAUTIFUL_BEACH_LUXURY_BALL
	itemball_event 36, 20, FULL_RESTORE, 1, EVENT_BEAUTIFUL_BEACH_FULL_RESTORE
	fruittree_event -2, 13, FRUITTREE_SHAMOUTI_ISLAND, FIGY_BERRY, PAL_NPC_BROWN

BeautifulBeachWelcomeSignText:
if DEF(_LOCALE_FR)
	text "Bienvenue sur"
	line "l'île Shamouti!"

	para "L'île principale"
	line "est à l'est."
	done
else
	text "Welcome to"
	line "Shamouti Island!"

	para "The main island"
	line "is just east."
	done
endc

BeautifulBeachVillaSignText:
if DEF(_LOCALE_FR)
	text "Villa"
	done
else
	text "Island Villa"
	done
endc

GenericTrainerAromaLadyBryony:
	generictrainer AROMA_LADY, BRYONY, EVENT_BEAT_AROMA_LADY_BRYONY, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Les parfums d'ici"
	line "me revigorent."
	done
else
	text "I am always in-"
	line "vigorated by the"
	cont "scents here."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Fleurs tropicales,"
	line "brise marine…"

	para "L'île Shamouti"
	line "sent trop bon!"
	done
else
	text "Tropical flowers,"
	line "a sea breeze…"

	para "Shamouti Island"
	line "is full of del-"
	cont "icious scents!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "L'odeur de l'île"
	line "t'a inspiré"
	cont "la victoire?"
	done
else
	text "Did the island's"
	line "scent inspire you"
	cont "to win?"
	done
endc

GenericTrainerSightseermJaska:
	generictrainer SIGHTSEERM, JASKA, EVENT_BEAT_SIGHTSEERM_JASKA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "C'est bête, mais"
	line "je me sens plus"

	para "en sécurité avec"
	line "un gri-gri."
	done
else
	text "I know it's silly,"
	line "but I feel safer"

	para "traveling with a"
	line "good-luck charm."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Mes chaussettes"
	line "porte-bonheur"

	para "me protègent"
	line "en voyage."
	done
else
	text "My lucky socks"
	line "keep me safe dur-"
	cont "ing my travels."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Elles n'aident"
	line "pas à gagner…"
	done
else
	text "They don't help"
	line "me win battles…"
	done
endc

GenericTrainerTamerVince:
	generictrainer TAMER, VINCE, EVENT_BEAT_TAMER_VINCE, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Mes #mon sont"
	line "bien dressés,"

	para "mais moi, je"
	line "reste sauvage!"
	done
else
	text "My #mon are"
	line "expertly tamed,"

	para "but I remain as"
	line "wild as ever!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Mon esprit rugit!"
	line "Personne"
	cont "ne me dompte!"
	done
else
	text "My roaring spirit"
	line "shall never be"
	cont "tamed!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Gnyeh?! ROAR!"
	done
else
	text "Nyuh?! ROAR!"
	done
endc

GenericTrainerSightseerfRosie:
	generictrainer SIGHTSEERF, ROSIE, EVENT_BEAT_SIGHTSEERF_ROSIE, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "L'île Shamouti"
	line "a tant"
	cont "d'histoire!"

	para "J'ai hâte"
	line "de la"
	cont "photographier."
	done
else
	text "Shamouti Island"
	line "has so much"
	cont "history!"

	para "I can't wait to"
	line "photograph it."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Le sanctuaire,"
	line "les 3 temples,"

	para "les ruines…"
	line "On va où?"
	done
else
	text "The shrine, the"
	line "three temples,"
	cont "the old ruins…"
	cont "Where to first?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Je commence"
	line "par le"
	cont "Centre #mon."
	done
else
	text "I guess the #-"
	line "mon Center is"
	cont "first."
	done
endc

GenericTrainerSwimmerfRachel:
	generictrainer SWIMMERF, RACHEL, EVENT_BEAT_SWIMMERF_RACHEL, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Je pourrais passer"
	line "la journée"
	cont "dans l'eau."
	done
else
	text "I could spend all"
	line "day in this water."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Sable blanc,"
	line "eau bleue…"

	para "Jolie Plage"
	line "porte bien"
	cont "son nom!"
	done
else
	text "White sand and"
	line "blue water…"

	para "Beautiful Beach"
	line "lives up to its"
	cont "nickname!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Tu te bats"
	line "magnifiquement!"
	done
else
	text "You fight"
	line "beautifully!"
	done
endc

GenericTrainerArtistMarlene:
	generictrainer ARTIST, MARLENE, EVENT_BEAT_ARTIST_MARLENE, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Les 3 couleurs"
	line "primaires"

	para "sont rouge, bleu,"
	line "et jaune."

	para "Mais pour la"
	line "lumière, c'est"
	cont "rouge, bleu,"
	cont "et vert."
	done
else
	text "The three primary"
	line "colors of paint"

	para "are red, blue,"
	line "and yellow."

	para "But for light"
	line "they're red, blue,"
	cont "and green."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Mon trio de"
	line "Queulorior"

	para "peint n'importe"
	line "quel décor!"
	done
else
	text "My Smeargle trio"
	line "can paint any"
	cont "scene!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Ils ne gagnent"
	line "pas en combat…"
	done
else
	text "They couldn't win"
	line "a battle…"
	done
endc
