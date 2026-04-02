Route16West_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 37,  1, PSYCHIC_INVERS_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 22,  7, BGEVENT_ITEM + RARE_CANDY, EVENT_ROUTE_16_WEST_HIDDEN_RARE_CANDY

	def_object_events
	object_event 56,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerLassGina, -1
	object_event 17,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerLassAlice, -1
	object_event  9, 10, SPRITE_COSPLAYER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerCosplayerKuroko, -1
	object_event 40, 13, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerCooltrainerfSera, -1
	object_event  6,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBeautyNicole, -1
	itemball_event 42, 16, METRONOME_I, 1, EVENT_ROUTE_16_WEST_METRONOME
	itemball_event 50,  3, PP_UP, 1, EVENT_ROUTE_16_WEST_PP_UP
	itemball_event 21,  4, MAX_REVIVE, 1, EVENT_ROUTE_16_WEST_MAX_REVIVE
	cuttree_event 57,  4, EVENT_ROUTE_16_WEST_CUT_TREE

GenericTrainerLassGina:
	generictrainer LASS, GINA, EVENT_BEAT_LASS_GINA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Mes sandales à"
	line "lanières sont"
	cont "trop mignonnes! ♥"
	done
else
	text "My strappy sandals"
	line "look sooo cute,"
	cont "though! ♥"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Mate ma nouvelle"
	line "tenue!"
	done
else
	text "Check out my new"
	line "outfit!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Si j'avais acheté"
	line "des Potions au"
	cont "lieu de vêtements…"
	done
else
	text "If I'd spent money"
	line "on Potions instead"
	cont "of clothes…"
	done
endc

GenericTrainerLassAlice:
	generictrainer LASS, ALICE, EVENT_BEAT_LASS_ALICE, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "En vrai, je suis"
	line "un garçon..."
	cont "Le dis à personne!"
	done
else
	text "I'm really a guy…"
	line "Don't tell anyone!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Nos regards se"
	line "sont croisés!"

	para "Alors sors avec"
	line "moi! ♥"

	para "Non, je veux dire,"
	line "combattons!"
	done
else
	text "Our eyes met!"

	para "Now you must date"
	line "me! ♥"

	para "No wait, I mean,"
	line "we must battle!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Pourquoi être"
	line "si cruel?"
	done
else
	text "How could you be"
	line "so cruel?"
	done
endc

GenericTrainerCosplayerKuroko:
	generictrainer COSPLAYER, KUROKO, EVENT_BEAT_COSPLAYER_KUROKO, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Un jour, un"
	line "dresseur m'a"
	cont "lancé une # Ball!"
	done
else
	text "One time a trainer"
	line "threw a # Ball"
	cont "at me!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Mon cosplay est"
	line "réaliste, hein?"
	done
else
	text "See how lifelike"
	line "my cosplay is?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Tu n'aimes pas"
	line "l'art!"
	done
else
	text "You just don't"
	line "appreciate art!"
	done
endc

GenericTrainerCooltrainerfSera:
	generictrainer COOLTRAINERF, SERA, EVENT_BEAT_COOLTRAINERF_SERA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "J'ai déjà fait"
	line "Cosplay, mais"

	para "la tenue d'un"
	line "Topdresseur"
	cont "fait plus peur."
	done
else
	text "I've gone out as"
	line "a Cosplayer, but"

	para "an Ace Trainer's"
	line "outfit is more"
	cont "intimidating."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Tu crois pouvoir"
	line "me gérer?"
	done
else
	text "Do you think you"
	line "can handle me?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Bravo! ♥"
	done
else
	text "Congrats! ♥"
	done
endc

GenericTrainerBeautyNicole:
	generictrainer BEAUTY, BEAUTY_NICOLE, EVENT_BEAT_BEAUTY_NICOLE, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Un #mon mignon"
	line "peut être fort"
	cont "aussi!"
	done
else
	text "Cute #mon can"
	line "be strong too,"
	cont "you know!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Mes #mon ne"
	line "sont-ils pas"
	cont "trop mignons?"
	done
else
	text "Aren't my #mon"
	line "the cutest?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Ils sont mignons"
	line "même K.O..."
	done
else
	text "They're even cute"
	line "while fainted…"
	done
endc
