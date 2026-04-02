CeladonUniversity2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 23,  8, CELADON_UNIVERSITY_1F, 3
	warp_event  7,  0, CELADON_UNIVERSITY_CAFETERIA, 1
	warp_event  3,  8, CELADON_UNIVERSITY_WILLOWS_OFFICE, 1
	warp_event 13,  0, CELADON_UNIVERSITY_HYPER_TEST_ROOM, 1
	warp_event 19,  8, CELADON_UNIVERSITY_WESTWOODS_OFFICE, 1
	warp_event 21,  0, CELADON_UNIVERSITY_POOL, 1
	warp_event  7,  8, CELADON_UNIVERSITY_NURSES_OFFICE, 1

	def_coord_events

	def_bg_events
	bg_event  6,  0, BGEVENT_JUMPTEXT, CeladonUniversity2FCafeteriaSignText
	bg_event 12,  0, BGEVENT_JUMPTEXT, CeladonUniversity2FHyperTestSignText
	bg_event 20,  0, BGEVENT_JUMPTEXT, CeladonUniversity2FPoolSignText
	bg_event  2,  8, BGEVENT_JUMPTEXT, CeladonUniversity2FWillowsOfficeSignText
	bg_event  6,  8, BGEVENT_JUMPTEXT, CeladonUniversity2FNursesOfficeSignText
	bg_event 18,  8, BGEVENT_JUMPTEXT, CeladonUniversity2FWestwoodsOfficeSignText
	bg_event 16,  1, BGEVENT_READ, CeladonUniversity2FMagikarpSign
	bg_event 24,  1, BGEVENT_READ, CeladonUniversity2FCuboneSign

	def_object_events
	object_event  2,  3, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, CeladonUniversity2FCooltrainerfScript, -1
	object_event  5,  3, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversity2FCooltrainermText, -1
	object_event 17,  2, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversity2FYoungster1Text, -1
	object_event 11,  7, SPRITE_COWGIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversity2FCowgirlText, -1
	object_event  4,  9, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversity2FBug_catcherText, -1
	object_event 13, 13, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversity2FLassText, -1
	object_event 21, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversity2FYoungster2Text, -1

CeladonUniversity2FCooltrainerfScript:
	checkevent EVENT_GOT_ANTIDOTE_IN_UNIVERSITY
	iftrue_jumptextfaceplayer .Text5
	faceplayer
	opentext
	writetext .Text1
	waitbutton
	writetext .Text2
	yesorno
	iffalse_jumpopenedtext .Text6
	takeitem FRESH_WATER
	iffalse_jumpopenedtext .Text6
	writetext .Text3
	waitbutton
	writetext .Text4
	waitbutton
	verbosegiveitem ANTIDOTE
	iffalsefwd .NoRoomForAntidote
	setevent EVENT_GOT_ANTIDOTE_IN_UNIVERSITY
	jumpthisopenedtext

.Text5:
if DEF(_LOCALE_FR)
	text "L'Antidote soigne"
	line "le poison des"

	para "#mon, pas les"
	line "humains: à boire,"

	para "tu tomberais"
	line "malade."
	done
else
	text "Antidotes cure"
	line "poison in #-"
	cont "mon, but a person"

	para "would get sick"
	line "by drinking one."
	done
endc

.NoRoomForAntidote:
	giveitem FRESH_WATER
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Oh… Garde ton"
	line "Eau Fraîche…"
	done
else
	text "Oh… Keep your"
	line "Fresh Water then…"
	done
endc

.Text1:
if DEF(_LOCALE_FR)
	text "J'ai soif!"

	para "Pas de monnaie"
	line "pour les distrib'…"

	para "Tu as de l'Eau"
	line "Fraîche?"
	done
else
	text "Wow, I'm thirsty!"

	para "But I don't have"
	line "change for the"
	cont "vending machines…"

	para "Do you have any"
	line "Fresh Water?"
	done
endc

.Text2:
if DEF(_LOCALE_FR)
	text "Donner une Eau"
	line "Fraîche?"
	done
else
	text "Give away a"
	line "Fresh Water?"
	done
endc

.Text3:
if DEF(_LOCALE_FR)
	text "<PLAYER> donne"
	line "l'Eau Fraîche."
	done
else
	text "<PLAYER> gave away"
	line "the Fresh Water."
	done
endc

.Text4:
if DEF(_LOCALE_FR)
	text "Merci beaucoup!"
	line "Tiens, prends ça!"
	done
else
	text "Thank you so much!"
	line "Here, take this!"
	done
endc

.Text6:
if DEF(_LOCALE_FR)
	text "Oh… J'ai encore"
	line "très soif…"
	done
else
	text "Oh… But I'm so"
	line "thirsty…"
	done
endc

CeladonUniversity2FCooltrainermText:
if DEF(_LOCALE_FR)
	text "La cafet' est"
	line "bondee,"

	para "je mange dans"
	line "le couloir."
	done
else
	text "The cafeteria gets"
	line "pretty crowded,"

	para "so I prefer to eat"
	line "in the hall."
	done
endc

CeladonUniversity2FYoungster1Text:
if DEF(_LOCALE_FR)
	text "J'ai encore raté"
	line "le Hyper Test…"

	para "Mais j'abandonne"
	line "pas!"
	done
else
	text "I failed the"
	line "Hyper Test again…"

	para "But I won't"
	line "give up!"
	done
endc

CeladonUniversity2FCowgirlText:
if DEF(_LOCALE_FR)
	text "Ma classe part"
	line "en voyage dans la"

	para "Zone Safari!"
	done
else
	text "My class is going"
	line "on a field trip to"
	cont "the Safari Zone!"
	done
endc

CeladonUniversity2FBug_catcherText:
if DEF(_LOCALE_FR)
	text "Prof. Willow"
	line "envoie ses aides"

	para "arpenter la ville"
	line "et étudier les"

	para "#mon du coin."
	done
else
	text "Prof.Willow sends"
	line "his assistants to"

	para "wander all over"
	line "the city and study"

	para "the #mon that"
	line "live here."
	done
endc

CeladonUniversity2FLassText:
if DEF(_LOCALE_FR)
	text "Chef d'Arène de"
	line "Céladopole, Erika"

	para "était première de"
	line "sa promo ici."

	para "J'aimerais être"
	line "aussi cool qu'"
	cont "elle!"
	done
else
	text "In addition to"
	line "being the Celadon"
	cont "Gym Leader,"

	para "Erika was top of"
	line "her class here at"
	cont "the university."

	para "I wish I was as"
	line "cool as her."
	done
endc

CeladonUniversity2FYoungster2Text:
if DEF(_LOCALE_FR)
	text "Prof. Westwood"
	line "est excentrique."

	para "Parfois, il"
	line "s'excuse devant"

	para "les portraits"
	line "de ses ancêtres."
	done
else
	text "Prof.Westwood is a"
	line "little eccentric."

	para "Sometimes he apol-"
	line "ogizes to his"

	para "ancestors' por-"
	line "traits."
	done
endc

CeladonUniversity2FCafeteriaSignText:
if DEF(_LOCALE_FR)
	text "Cafétéria"
	done
else
	text "Cafeteria"
	done
endc

CeladonUniversity2FHyperTestSignText:
if DEF(_LOCALE_FR)
	text "Salle Hyper Test"
	done
else
	text "Hyper Test Room"
	done
endc

CeladonUniversity2FPoolSignText:
if DEF(_LOCALE_FR)
	text "Piscine"
	done
else
	text "Swimming Pool"
	done
endc

CeladonUniversity2FWillowsOfficeSignText:
if DEF(_LOCALE_FR)
	text "Bureau Prof."
	line "Willow"
	done
else
	text "Prof.Willow's"
	line "Office"
	done
endc

CeladonUniversity2FNursesOfficeSignText:
if DEF(_LOCALE_FR)
	text "Infirmerie"
	done
else
	text "Nurse's"
	line "Office"
	done
endc

CeladonUniversity2FWestwoodsOfficeSignText:
if DEF(_LOCALE_FR)
	text "Bureau Prof."
	line "Westwood"
	done
else
	text "Prof.Westwood's"
	line "Office"
	done
endc

CeladonUniversity2FMagikarpSign:
	reanchormap
	pokepic MAGIKARP, MAGIKARP_ORCA_FORM
	cry MAGIKARP
	waitbutton
	closepokepic
	jumpthistext

if DEF(_LOCALE_FR)
	text "Un Magicarpe"
	line "nage en rond."
	done
else
	text "A Magikarp is"
	line "swimming around."
	done
endc

CeladonUniversity2FCuboneSign:
	reanchormap
	trainerpic CUBONE_ARMOR
	waitbutton
	closepokepic
	jumpthistext

if DEF(_LOCALE_FR)
	text "Masse Os et casque"
	line "crane de Cubone."
	done
else
	text "It's the Thick Club"
	line "and skull helmet"
	cont "of a Cubone."
	done
endc
