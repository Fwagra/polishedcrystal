ViridianForest_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  5, VIRIDIAN_FOREST_PEWTER_GATE, 1
	warp_event 18, 47, VIRIDIAN_FOREST_VIRIDIAN_GATE, 1
	warp_event 19, 47, VIRIDIAN_FOREST_VIRIDIAN_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  4,  7, BGEVENT_JUMPTEXT, ViridianForestSignText1
	bg_event  6, 26, BGEVENT_JUMPTEXT, ViridianForestSignText2
	bg_event 28, 19, BGEVENT_JUMPTEXT, ViridianForestSignText3
	bg_event 18, 34, BGEVENT_JUMPTEXT, ViridianForestSignText4
	bg_event 26, 42, BGEVENT_JUMPTEXT, ViridianForestSignText5
	bg_event 20, 44, BGEVENT_JUMPTEXT, ViridianForestSignText6
	bg_event 32, 44, BGEVENT_ITEM + MAX_ETHER, EVENT_VIRIDIAN_FOREST_HIDDEN_MAX_ETHER
	bg_event 18, 43, BGEVENT_ITEM + FULL_HEAL, EVENT_VIRIDIAN_FOREST_HIDDEN_FULL_HEAL
	bg_event  4, 43, BGEVENT_ITEM + MULCH, EVENT_VIRIDIAN_FOREST_HIDDEN_MULCH
	bg_event 30,  9, BGEVENT_ITEM + BIG_MUSHROOM, EVENT_VIRIDIAN_FOREST_HIDDEN_BIG_MUSHROOM
	bg_event  3, 14, BGEVENT_ITEM + LEAF_STONE, EVENT_VIRIDIAN_FOREST_HIDDEN_LEAF_STONE

	def_object_events
	object_event 29, 42, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBug_maniacDane, -1
	object_event 33, 35, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerBug_maniacDion, -1
	object_event 32, 21, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerBug_maniacStacey, -1
	object_event 31,  4, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBug_maniacEllis, -1
	object_event  5, 24, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerBug_maniacAbner, -1
	itemball_event 14, 31, DIRE_HIT, 1, EVENT_ROUTE_2_DIRE_HIT
	itemball_event  3, 33, MAX_POTION, 1, EVENT_ROUTE_2_MAX_POTION

GenericTrainerBug_maniacDane:
	generictrainer BUG_MANIAC, DANE, EVENT_BEAT_BUG_MANIAC_DANE, BugManiacDaneSeenText, BugManiacDaneBeatenText

if DEF(_LOCALE_FR)
	text "Pas mal du tout!"

	para "Avec ce talent,"
	line "tu peux aller"
	cont "partout!"
	done
else
	text "Pretty impressive!"

	para "I'm sure you can"
	line "go anywhere with"
	cont "that skill!"
	done
endc

GenericTrainerBug_maniacDion:
	generictrainer BUG_MANIAC, DION, EVENT_BEAT_BUG_MANIAC_DION, BugManiacDionSeenText, BugManiacDionBeatenText

if DEF(_LOCALE_FR)
	text "Les #mon"
	line "Insecte"
	line "font toutes sortes"
	cont "de bruits."

	para "Pour les fans,"
	line "savoir les"
	cont "distinguer,"

	para "c'est la clé!"
	done
else
	text "Bug-type #mon"
	line "make all kinds of"
	cont "sounds."

	para "For bug #mon"
	line "fans, knowing how"
	cont "to distinguish"
	cont "them is key!"
	done
endc

GenericTrainerBug_maniacStacey:
	generictrainer BUG_MANIAC, STACEY, EVENT_BEAT_BUG_MANIAC_STACEY, BugManiacStaceySeenText, BugManiacStaceyBeatenText

if DEF(_LOCALE_FR)
	text "On t'a déjà dit"
	line "que de dos, tu"
	cont "ressemblais à"

	para "un Mimitoss?"
	done
else
	text "Has anyone ever"
	line "told you that from"
	cont "behind you look"
	cont "like a Venonat?"
	done
endc

GenericTrainerBug_maniacEllis:
	generictrainer BUG_MANIAC, ELLIS, EVENT_BEAT_BUG_MANIAC_ELLIS, BugManiacEllisSeenText, BugManiacEllisBeatenText

if DEF(_LOCALE_FR)
	text "Si c'est tout,"
	line "perdre ne me gêne"
	cont "pas!"
	done
else
	text "If this is it,"
	line "then I don't mind"
	cont "losing!"
	done
endc

GenericTrainerBug_maniacAbner:
	generictrainer BUG_MANIAC, ABNER, EVENT_BEAT_BUG_MANIAC_ABNER, BugManiacAbnerSeenText, BugManiacAbnerBeatenText

if DEF(_LOCALE_FR)
	text "Peu importe le"
	line "type de #mon…"

	para "Si tu les aimes,"
	line "ils sont tous"
	cont "mignons."
	done
else
	text "Doesn't matter"
	line "what kind of"
	line "kind of #mon--"

	para "as long as you"
	line "like them, they"
	cont "all look cute."
	done
endc

BugManiacDaneSeenText:
if DEF(_LOCALE_FR)
	text "Bienvenue dans la"
	line "Forêt de Jadielle."
	cont "Admire mes #mon"
	cont "Insecte."
	done
else
	text "Welcome to"
	line "Viridian Forest."
	cont "Enjoy my Bug-type"
	cont "#mon."
	done
endc

BugManiacDaneBeatenText:
if DEF(_LOCALE_FR)
	text "C'est merveilleux…"
	done
else
	text "That's wonderful…"
	done
endc

BugManiacDionSeenText:
if DEF(_LOCALE_FR)
	text "Chut! Silence!"
	line "Les #mon"
	cont "Insecte"
	cont "vont fuir!"
	done
else
	text "Shh! Be quiet! The"
	line "bug #mon will"
	cont "run away!"
	done
endc

BugManiacDionBeatenText:
if DEF(_LOCALE_FR)
	text "Ouf…"
	done
else
	text "Phew…"
	done
endc

BugManiacStaceySeenText:
if DEF(_LOCALE_FR)
	text "Wouah, quel ENORME"
	line "#mon!"

	para "…"
	line "…Quel genre de"
	cont "dresseur?!"
	done
else
	text "Wow, that's a HUGE"
	line "#mon!"

	para "…"
	line "…What kind of"
	cont "trainer?!"
	done
endc

BugManiacStaceyBeatenText:
if DEF(_LOCALE_FR)
	text "J'ai pas pu"
	line "l'attraper!"
	done
else
	text "I couldn't catch"
	line "it!"
	done
endc

BugManiacEllisSeenText:
if DEF(_LOCALE_FR)
	text "Rien n'est plus"
	line "efficace et beau"
	cont "qu'un #mon"
	cont "Insecte."
	done
else
	text "There's nothing"
	line "more efficient and"
	cont "beautiful than a"
	cont "Bug-type #mon."
	done
endc

BugManiacEllisBeatenText:
if DEF(_LOCALE_FR)
	text "J'ai perdu"
	line "avec classe!"
	done
else
	text "I lost"
	line "beautifully!"
	done
endc

BugManiacAbnerSeenText:
if DEF(_LOCALE_FR)
	text "Beaucoup préfèrent"
	line "les #mon"
	cont "Insecte"
	cont "solides aux"
	cont "mous."
	done
else
	text "Many people prefer"
	line "solid bug #mon"
	cont "over squishy bug"
	cont "#mon."
	done
endc

BugManiacAbnerBeatenText:
if DEF(_LOCALE_FR)
	text "Merci pour tes"
	line "efforts, mes"
	cont "jolis #mon…"
	done
else
	text "Thanks for your"
	line "hard work, my"
	cont "lovely #mon…"
	done
endc

ViridianForestSignText1:
if DEF(_LOCALE_FR)
	text "Sortie"
	line "Forêt de"
	cont "Jadielle"
	cont "Vers Argenta"
	done
else
	text "Leaving"
	line "Viridian Forest"
	cont "Pewter City Ahead"
	done
endc

ViridianForestSignText2:
if DEF(_LOCALE_FR)
	text "ASTUCE"

	para "Garde ce Gros"
	line "Champignon!"

	para "Des maniaques"
	line "paieront cher"
	cont "des trucs nuls!"
	done
else
	text "Trainer Tips"

	para "Hold on to that"
	line "Big Mushroom!"

	para "Some maniacs will"
	line "pay lots of money"
	cont "for useless items!"
	done
endc

ViridianForestSignText3:
if DEF(_LOCALE_FR)
	text "ASTUCE"

	para "Les #mon Plante"
	line "ignorent poudre"

	para "et spores!"
	done
else
	text "Trainer Tips"

	para "Grass-type #mon"
	line "are unaffected by"

	para "powder and spore"
	line "moves!"
	done
endc

ViridianForestSignText4:
if DEF(_LOCALE_FR)
	text "Poison? Prends"
	line "un Antidote!"

	para "En vente au"
	line "#mon Mart!"
	done
else
	text "For poison, use"
	line "Antidote! Get it"
	cont "at #mon Marts!"
	done
endc

ViridianForestSignText5:
if DEF(_LOCALE_FR)
	text "ASTUCE"

	para "Les #mon Poison"
	line "ne peuvent pas"
	cont "s'empoisonner!"
	done
else
	text "Trainer Tips"

	para "Poison-type #-"
	line "mon can't be poi-"
	cont "soned themselves!"
	done
endc

ViridianForestSignText6:
if DEF(_LOCALE_FR)
	text "ASTUCE"

	para "Affaiblis un"
	line "#mon avant"
	cont "de capturer!"

	para "Sinon, en forme,"
	line "il peut fuir!"
	done
else
	text "Trainer Tips"

	para "Weaken #mon"
	line "before attempting"
	cont "capture!"

	para "When healthy,"
	line "they may escape!"
	done
endc
