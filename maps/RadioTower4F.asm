RadioTower4F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_5F, 1
	warp_event  9,  0, RADIO_TOWER_3F, 2
	warp_event 12,  0, RADIO_TOWER_5F, 2
	warp_event 17,  0, RADIO_TOWER_3F, 3

	def_coord_events

	def_bg_events
	bg_event  7,  0, BGEVENT_JUMPTEXT, RadioTower4FProductionSignText
	bg_event 15,  0, BGEVENT_JUMPTEXT, RadioTower4FStudio2SignText

	def_object_events
	object_event  5,  6, SPRITE_ROCKET, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntM10, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  6,  4, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, RadioTower4FFisherText, EVENT_RADIO_TOWER_CIVILIANS_AFTER
	object_event 14,  6, SPRITE_MARY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower4FDJMaryScript, -1
	pokemon_event 12,  7, MEOWTH, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_BROWN, RadioTowerMeowthText, -1
	object_event 14,  1, SPRITE_PROTON, SPRITEMOVEDATA_STANDING_LEFT, 0, 2, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerProton1, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 12,  4, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerGruntF4, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  4,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerRocketScientistRich, EVENT_RADIO_TOWER_ROCKET_TAKEOVER

	object_const_def
	const RADIOTOWER4F_ROCKET

RadioTower4FDJMaryScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_PINK_BOW_FROM_MARY
	iftrue_jumpopenedtext RadioTower4FDJMaryText_After
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftruefwd .ClearedRockets
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "LULA: Pourquoi?"
	line "Pourquoi tant de"
	cont "haine?"

	para "MIAOUSS, à l'aide!"
	done
else
	text "Mary: Why? Why do"
	line "I have to suffer"
	cont "through this?"

	para "Meowth, help me!"
	done
endc

.ClearedRockets:
	writetext RadioTower4FDJMaryText_ClearedRockets
	promptbutton
	verbosegiveitem PINK_BOW
	iffalse_endtext
	setevent EVENT_GOT_PINK_BOW_FROM_MARY
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "LULA: C'est pour"
	line "les #mon qui"

	para "connaissent des"
	line "techniques du type"
	cont "NORMAL."
	done
else
	text "Mary: It's just"
	line "right for #mon"

	para "that know Fairy-"
	line "type moves."
	done
endc

GenericTrainerGruntM10:
	generictrainer GRUNTM, 10, EVENT_BEAT_ROCKET_GRUNTM_10, GruntM10SeenText, GruntM10BeatenText

if DEF(_LOCALE_FR)
	text "Je..."
	line "J'le crois pas!"
	done
else
	text "I don't believe"
	line "it! I was beaten!"
	done
endc

GenericTrainerProton1:
	generictrainer PROTON, PROTON1, EVENT_BEAT_PROTON_1, Proton1SeenText, Proton1BeatenText

if DEF(_LOCALE_FR)
	text "Tu as mérité mon"
	line "respect, alors"
	cont "voici un conseil."

	para "Laisse tomber ta"
	line "quête pendant qu'"
	cont "il en est temps."
	done
else
	text "You've earned my"
	line "respect, so here's"
	cont "some advice."

	para "It's not too late."
	line "You can still turn"
	cont "back."
	done
endc

GenericTrainerGruntF4:
	generictrainer GRUNTF, 4, EVENT_BEAT_ROCKET_GRUNTF_4, GruntF4SeenText, GruntF4BeatenText

if DEF(_LOCALE_FR)
	text "Je m'aime!"
	line "Je m'aime!"

	para "Les #mon"
	line "ça sert à rien!"
	done
else
	text "I love my"
	line "beautiful self!"

	para "Who cares about"
	line "#mon?"
	done
endc

GenericTrainerRocketScientistRich:
	generictrainer ROCKET_SCIENTIST, RICH, EVENT_BEAT_ROCKET_SCIENTIST_RICH, RocketScientistRichSeenText, RocketScientistRichBeatenText

if DEF(_LOCALE_FR)
	text "Penses-tu vraiment"
	line "pouvoir stopper"
	cont "la TEAM ROCKET?"
	done
else
	text "Do you honestly"
	line "believe you can"
	cont "stop Team Rocket?"
	done
endc

RadioTower4FFisherText:
if DEF(_LOCALE_FR)
	text "J'écoutais la ra-"
	line "dio tout en visi-"
	cont "tant les RUINES."

	para "J'y ai entendu une"
	line "émission étrange."
	done
else
	text "I listened to the"
	line "radio while I was"
	cont "at the ruins."

	para "I heard a strange"
	line "broadcast there."
	done
endc

RadioTower4FDJMaryText_ClearedRockets:
if DEF(_LOCALE_FR)
	text "LULA: Oh! Tu es"
	line "formidable!"

	para "Veux-tu de ceci"
	line "en remerciement?"
	done
else
	text "Mary: Oh! You're"
	line "my little savior!"

	para "Will you take this"
	line "as my thanks?"
	done
endc

RadioTower4FDJMaryText_After:
if DEF(_LOCALE_FR)
	text "LULA: Ecoute mon"
	line "émission avec le"

	para "PROF.CHEN: la"
	line "CHRONIQUE #MON."
	done
else
	text "Mary: Please tune"
	line "into me on Prof."

	para "Oak's #mon Talk"
	line "show."
	done
endc

RadioTowerMeowthText:
	text "Meowth: Meowth…"
	done

GruntM10SeenText:
if DEF(_LOCALE_FR)
	text "Tu comptes sauver"
	line "le DIRECTEUR?"

	para "Je crois que ça va"
	line "pas être possible."
	cont "J'vais t'écraser!"
	done
else
	text "You plan to rescue"
	line "the Director?"

	para "That won't be pos-"
	line "sible because I'm"
	cont "going to beat you!"
	done
endc

GruntM10BeatenText:
if DEF(_LOCALE_FR)
	text "Incroyable!"
	done
else
	text "No! Unbelievable!"
	done
endc

Proton1SeenText:
if DEF(_LOCALE_FR)
	text "Stop! On m'appelle"
	line "la forteresse de"
	cont "la TEAM ROCKET!"

	para "Pas un pas de"
	line "plus, poussin!"
	done
else
	text "Stop! I'm known as"
	line "the Team Rocket"
	cont "fortress!"

	para "You're not taking"
	line "another step!"
	done
endc

Proton1BeatenText:
if DEF(_LOCALE_FR)
	text "Tout cassé ma"
	line "forteresse!"
	done
else
	text "The fortress came"
	line "down!"
	done
endc

GruntF4SeenText:
if DEF(_LOCALE_FR)
	text "Quoi? Est-ce que"
	line "les #mon sont"
	cont "mignons?"

	para "Les miens seront"
	line "mignons après"

	para "t'avoir fichu une"
	line "raclée, ouais!"
	done
else
	text "Don't I think"
	line "#mon are cute?"

	para "I'll think my"
	line "#mon are cute--"

	para "after they beat"
	line "yours!"
	done
endc

GruntF4BeatenText:
if DEF(_LOCALE_FR)
	text "Oh, non! Ils sont"
	line "nuls!"
	done
else
	text "Oh, no! They're so"
	line "useless!"
	done
endc

RocketScientistRichSeenText:
if DEF(_LOCALE_FR)
	text "Parfait."

	para "Cette TOUR RADIO"
	line "sera parfaite pour"
	cont "nos plans."
	done
else
	text "Most excellent."

	para "This Radio Tower"
	line "will fulfill our"
	cont "grand design."
	done
endc

RocketScientistRichBeatenText:
if DEF(_LOCALE_FR)
	text "Hmmm..."

	para "Tout plan comprend"
	line "certains accrocs."
	done
else
	text "Hmmm…"

	para "All grand plans"
	line "come with snags."
	done
endc

RadioTower4FProductionSignText:
if DEF(_LOCALE_FR)
	text "4E PRODUCTION"
	done
else
	text "4F Production"
	done
endc

RadioTower4FStudio2SignText:
if DEF(_LOCALE_FR)
	text "4E STUDIO 2"
	done
else
	text "4F Studio 2"
	done
endc
