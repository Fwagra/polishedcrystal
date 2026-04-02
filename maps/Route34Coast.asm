Route34Coast_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7, 47, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSwimmermFrank, -1
	object_event 10, 21, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerSwimmermNadar, -1
	object_event  7, 61, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerSwimmermConrad, -1
	object_event  8, 43, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSwimmerfCaroline, -1
	object_event  8,  6, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSwimmerfNatalia, -1
	object_event 12, 14, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerFisherFrancis, -1
	object_event  7, 32, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBird_keeperTony, -1
	itemball_event  4, 34, PEARL_STRING, 1, EVENT_ROUTE_34_COAST_PEARL_STRING

GenericTrainerSwimmermFrank:
	generictrainer SWIMMERM, FRANK, EVENT_BEAT_SWIMMERM_FRANK, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Mer, sable, soleil"
	line "et #mon!"

	para "Que demander de"
	line "plus?"
	done
else
	text "Sea, sand, sun,"
	line "and #mon!"

	para "What more could a"
	line "guy need?"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Je suis en"
	line "vacances avec"
	cont "ma femme, mais"
	cont "OK... Combattons!"
	done
else
	text "I'm vacationing"
	line "with my wife, but"
	cont "OK--I'll battle"
	cont "you."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Je m'en fiche,"
	line "je suis en congé"
	done
else
	text "I don't care,"
	line "I'm on vacation!"
	done
endc

GenericTrainerSwimmermNadar:
	generictrainer SWIMMERM, NADAR, EVENT_BEAT_SWIMMERM_NADAR, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Nager..."
	line "ou entraîner mes"
	cont "#mon?"

	para "Quel dilemme."
	done
else
	text "Practice swimming,"
	line "or train with my"
	cont "#mon?"

	para "What a dilemma."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "La natation, c'est"
	line "ma spécialité!"

	para "Les combats aussi!"
	done
else
	text "Swimming is my"
	line "speciality!"

	para "#mon battles"
	line "are too!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Perdu à ma propre"
	line "spécialité?"
	done
else
	text "I lost at my own"
	line "speciality?"
	done
endc

GenericTrainerSwimmermConrad:
	generictrainer SWIMMERM, CONRAD, EVENT_BEAT_SWIMMERM_CONRAD, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Les UV se reflè-"
	line "tent sur les"
	cont "vagues."

	para "Pense toujours à"
	line "la crème solaire."
	done
else
	text "UV rays are refle-"
	line "cted by the waves."

	para "Always remember"
	line "sun lotion."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Crème, lunettes..."
	line "Je suis prêt à"

	para "affronter les"
	line "vagues!"
	done
else
	text "Lotion on, goggles"
	line "down… I'm all"

	para "fired up to hit"
	line "the waves!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Ouf! Les vagues"
	line "m'ont eu..."
	done
else
	text "Oof! The waves"
	line "hit me this time."
	done
endc

GenericTrainerSwimmerfCaroline:
	generictrainer SWIMMERF, CAROLINE, EVENT_BEAT_SWIMMERF_CAROLINE, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "On loge à"
	line "DOUBLONVILLE, mais"

	para "cette route est"
	line "une belle"
	cont "excursion!"
	done
else
	text "We're staying in"
	line "Goldenrod, but"

	para "this Route makes"
	line "for a lovely"
	cont "excursion!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Mon mari et moi"
	line "sommes en"
	cont "vacances."
	done
else
	text "My husband and I"
	line "are here on a"
	cont "vacation."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Oh! Quel dommage."
	done
else
	text "Oh! What a shame."
	done
endc

GenericTrainerSwimmerfNatalia:
	generictrainer SWIMMERF, NATALIA, EVENT_BEAT_SWIMMERF_NATALIA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Je crois que j'ai"
	line "pris le mauvais"
	cont "bikini."

	para "C'est pas ma"
	line "couleur."
	done
else
	text "I think I bought"
	line "the wrong bikini."

	para "This really isn't"
	line "my color."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "J'ai acheté un"
	line "nouveau bikini."

	para "C'est la dernière"
	line "mode."
	done
else
	text "I bought a new"
	line "bikini."

	para "It's the latest"
	line "fashion."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Bah!"
	done
else
	text "Bah!"
	done
endc

GenericTrainerFisherFrancis:
	generictrainer FISHER, FRANCIS, EVENT_BEAT_FISHER_FRANCIS, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Gagner ou perdre,"
	line "ça m'importe peu."

	para "Je veux m'amuser"
	line "et pêcher."
	done
else
	text "It doesn't matter"
	line "if I win or lose."

	para "I just want to"
	line "have fun and keep"
	cont "fishing."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "J'aime pêcher des"
	line "#mon dans des"
	cont "coins exotiques."
	done
else
	text "I like fishing for"
	line "#mon in exotic"
	cont "places."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Oh! Beau coup!"
	done
else
	text "Oh! What a great"
	line "hit!"
	done
endc

GenericTrainerBird_keeperTony:
	generictrainer BIRD_KEEPER, BIRD_KEEPER_TONY, EVENT_BEAT_BIRD_KEEPER_TONY, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Tout le monde sait"
	line "que l'oiseau"
	cont "c'est le mot!"
	done
else
	text "Everybody's heard"
	line "that the bird is"
	cont "the word."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Tu connais"
	line "l'oiseau?"
	done
else
	text "Have you heard"
	line "about the bird?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Tu connais pas"
	line "l'oiseau?"
	done
else
	text "Don't you know"
	line "about the bird?"
	done
endc

