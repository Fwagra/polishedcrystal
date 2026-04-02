EcruteakItemfinderHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 11
	warp_event  4,  7, ECRUTEAK_CITY, 11

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_JUMPSTD, radio2

	def_object_events
	object_event  2,  3, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakItemfinderGuy, -1
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakHistoryBook, -1

EcruteakItemfinderGuy:
	checkevent EVENT_GOT_ITEMFINDER
	iftrue_jumptextfaceplayer ItemfinderExplanationText
	faceplayer
	opentext
	writetext EcruteakItemfinderAdventureText
	yesorno
	iffalse_jumpopenedtext EcruteakItemfinderToEachHisOwnText
	writetext EcruteakItemfinderTrueSpiritText
	promptbutton
	verbosegivekeyitem ITEMFINDER
	setevent EVENT_GOT_ITEMFINDER
	jumpthisopenedtext

ItemfinderExplanationText:
if DEF(_LOCALE_FR)
	text "Il y a beaucoup"
	line "d'objets cachés"
	cont "par terre."

	para "Utilise CHERCH'"
	line "OBJET pour voir"

	para "s'il y a un objet"
	line "par terre près de"
	cont "toi."

	para "Ca ne te montre"
	line "pas l'endroit"

	para "exact mais c'est"
	line "sûrement dans les"
	cont "environs."

	para "Ah oui, j'ai en-"
	line "tendu dire qu'il y"

	para "a des objets dans"
	line "la TOUR CENDREE"
	cont "de ROSALIA."
	done
else
	text "There are many"
	line "items lying about"

	para "that aren't ob-"
	line "vious."

	para "Use Itemfinder to"
	line "check if there is"

	para "an item on the"
	line "ground near you."

	para "It doesn't show"
	line "the exact spot,"

	para "so you'll have to"
	line "look yourself."

	para "Oh yeah--I heard"
	line "there are items"

	para "in Ecruteak's"
	line "Burned Tower."
	done
endc

EcruteakHistoryBook:
	opentext
	writetext EcruteakHistoryBookText
	yesorno
	iffalse_endtext
	writetext EcruteakTwoTowersText
	yesorno
	iffalse_endtext
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "ROSALIA était"
	line "aussi la demeure"

	para "de trois #mon"
	line "qui couraient"
	cont "autour de la"
	cont "ville."

	para "Ils étaient soi-"
	line "disant nés de"

	para "l'eau, de la"
	line "foudre et du feu."

	para "Mais ils ne"
	line "pouvaient pas"
	cont "contenir toute"
	cont "leur puissance."

	para "C'est la raison"
	line "pour laquelle ils"

	para "couraient sans"
	line "cesse."
	done
else
	text "Ecruteak was also"
	line "home to three"

	para "#mon that raced"
	line "around the town."

	para "They were said to"
	line "have been born of"

	para "water, lightning"
	line "and fire."

	para "But they could not"
	line "contain their"
	cont "excessive power."

	para "So they say the"
	line "three ran like the"

	para "wind off into the"
	line "grassland."
	done
endc

EcruteakItemfinderAdventureText:
if DEF(_LOCALE_FR)
	text "Ah! Tu fais les"
	line "400 coups avec tes"
	cont "#mon?"

	para "Mais qu'est-ce"
	line "qu'une aventure"
	cont "sans une chasse au"
	cont "trésor?"

	para "J'ai bon ou j'ai"
	line "bon?"
	done
else
	text "Ah. You're on an"
	line "adventure with"
	cont "your #mon?"

	para "Well, what's an"
	line "adventure without"
	cont "treasure hunting?"

	para "Am I right, or am"
	line "I right?"
	done
endc

EcruteakItemfinderTrueSpiritText:
if DEF(_LOCALE_FR)
	text "C'est cool, tu"
	line "comprends le vrai"

	para "esprit de l'aven-"
	line "ture."

	para "Et moi, j'aime ça!"
	line "Prends ça avec"
	cont "toi."
	done
else
	text "Good! You under-"
	line "stand the true"

	para "spirit of adven-"
	line "ture."

	para "I like that! Take"
	line "this with you."
	done
endc

EcruteakItemfinderToEachHisOwnText:
if DEF(_LOCALE_FR)
	text "Oh... Chacun pour"
	line "soi je parie."
	done
else
	text "Oh… To each his"
	line "own, I suppose…"
	done
endc

EcruteakHistoryBookText:
if DEF(_LOCALE_FR)
	text "HISTOIRE de"
	line "ROSALIA"

	para "Désirez-vous lire?"
	done
else
	text "History of"
	line "Ecruteak"

	para "Want to read it?"
	done
endc

EcruteakTwoTowersText:
if DEF(_LOCALE_FR)
	text "Il existait deux"
	line "tours à ROSALIA."

	para "Chacune d'elle"
	line "était le perchoir"
	cont "d'un puissant"
	cont "#mon volant."

	para "Mais l'une des"
	line "tours a complète-"
	cont "ment brûlé."

	para "Les deux #mon"
	line "n'ont jamais été"
	cont "revus depuis..."

	para "Continuer à lire?"
	done
else
	text "In Ecruteak, there"
	line "were two towers."

	para "Each tower was the"
	line "roost of powerful"
	cont "flying #mon."

	para "But one of the"
	line "towers burned to"
	cont "the ground."

	para "The two #mon"
	line "haven't been seen"
	cont "since…"

	para "Keep reading?"
	done
endc
