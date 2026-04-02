TrainerHouse1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 11, VIRIDIAN_CITY, 3
	warp_event  5, 11, VIRIDIAN_CITY, 3
	warp_event  8,  2, TRAINER_HOUSE_B1F, 1

	def_coord_events

	def_bg_events
	bg_event  7,  0, BGEVENT_JUMPTEXT, TrainerHouseSign1Text
	bg_event  9,  0, BGEVENT_JUMPTEXT, TrainerHouseSign2Text
	bg_event  4,  6, BGEVENT_JUMPTEXT, TrainerHouseIllegibleText

	def_object_events
	object_event  0, 10, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, TrainerHouse1FReceptionistText, -1
	object_event  8, 10, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, TrainerHouse1FCooltrainerMText, -1
	object_event  6,  2, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 2, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, TrainerHouse1FCooltrainerFText, -1
	object_event  7,  7, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, TrainerHouse1FYoungsterText, -1
	object_event  2,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, TrainerHouse1FGentlemanText, -1

TrainerHouse1FReceptionistText:
if DEF(_LOCALE_FR)
	text "Bienvenue au CLUB"
	line "des DRESSEURS,"

	para "l'attraction de"
	line "JADIELLE."

	para "Nous accueillons"
	line "les dresseurs."

	para "Vous pouvez com-"
	line "battre les meil-"

	para "leurs à l'étage"
	line "inférieur."
	done
else
	text "Welcome to Trainer"
	line "House, the newest"

	para "and most happening"
	line "place in Viridian."

	para "We're open to"
	line "trainers only."

	para "You can battle"
	line "against the best"

	para "of the best right"
	line "downstairs."
	done
endc

TrainerHouse1FCooltrainerMText:
if DEF(_LOCALE_FR)
	text "JADIELLE est la"
	line "ville voisine du"
	cont "PLATEAU INDIGO."

	para "Elle a été cons-"
	line "truite à cet en-"

	para "droit à cause du"
	line "passage important"

	para "des dresseurs vers"
	line "le PLATEAU."
	done
else
	text "Viridian is the"
	line "town closest to"
	cont "Indigo Plateau."

	para "It's known as the"
	line "gateway to Indigo"
	cont "Plateau!"

	para "They built this"
	line "place because so"

	para "many trainers pass"
	line "through on their"

	para "way up to the"
	line "#mon League."
	done
endc

TrainerHouse1FCooltrainerFText:
if DEF(_LOCALE_FR)
	text "Des combats d'en-"
	line "traînement se dé-"
	cont "roulent en bas."

	para "J'aimerais bien"
	line "voir comment se"

	para "débrouille un"
	line "dresseur de JOHTO."
	done
else
	text "They hold practice"
	line "battles downstairs"
	cont "here."

	para "I would love to"
	line "see how well a"

	para "trainer from Johto"
	line "battles."
	done
endc

TrainerHouse1FYoungsterText:
if DEF(_LOCALE_FR)
	text "A mon avis, on ne"
	line "peut pas devenir"

	para "un MAITRE sans"
	line "avoir tout vu et"

	para "combattu tout le"
	line "monde."

	para "Le MAITRE de"
	line "PALETTE a voyagé"

	para "dans tous les"
	line "coins de KANTO."
	done
else
	text "I guess you can't"
	line "become the Champ"

	para "unless you go all"
	line "over the place and"

	para "battle all kinds"
	line "of people."

	para "The Champion from"
	line "Pallet traveled to"

	para "all the cities and"
	line "towns in Kanto."
	done
endc

TrainerHouse1FGentlemanText:
if DEF(_LOCALE_FR)
	text "Fouiii...j'ai trop"
	line "combattu. Je me"
	cont "repose un peu."
	done
else
	text "Whew… I'm taking a"
	line "rest from #mon"
	cont "battles."
	done
endc

TrainerHouseSign1Text:
if DEF(_LOCALE_FR)
	text "Des combats d'en-"
	line "traînement se dé-"

	para "roulent en bas,"
	line "dans le HALL d'EN-"
	cont "TRAINEMENT."

	para "Les bons dresseurs"
	line "y sont invités."
	done
else
	text "Practice battles"
	line "are held in the"

	para "Training Hall"
	line "downstairs."

	para "Skilled trainers"
	line "are invited to"
	cont "participate."
	done
endc

TrainerHouseSign2Text:
if DEF(_LOCALE_FR)
	text "Comme pour les"
	line "combats en exté-"

	para "rieur, il n'y a"
	line "pas de règles spé-"

	para "ciales pour les"
	line "combats d'entraî-"
	cont "nement!"
	done
else
	text "There are no rules"
	line "or regulations for"

	para "practice matches."
	line "Just like in field"

	para "battles, anything"
	line "goes!"
	done
endc

TrainerHouseIllegibleText:
if DEF(_LOCALE_FR)
	text "...C'est quoi ça?"
	line "Une note sur la"
	cont "stratégie?"

	para "On dirait des tra-"
	line "cés faits par un"

	para "ONIX..."
	line "C'est illisible..."
	done
else
	text "…What's this?"
	line "A strategy memo?"

	para "This writing looks"
	line "like Onix tracks…"

	para "It's completely"
	line "illegible…"
	done
endc
