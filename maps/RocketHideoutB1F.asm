RocketHideoutB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, RocketHideoutB1FDoorScript

	def_warp_events
	warp_event 15,  2, ROCKET_HIDEOUT_B2F, 1
	warp_event 13,  2, CELADON_GAME_CORNER, 3
	warp_event 16, 19, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 13, 24, ROCKET_HIDEOUT_B2F, 4
	warp_event 17, 19, ROCKET_HIDEOUT_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 13, 15, BGEVENT_ITEM + MAX_REVIVE, EVENT_ROCKET_HIDEOUT_B1F_HIDDEN_MAX_REVIVE

	def_object_events
	object_event 20, 18, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_TRAINER, 4, RocketHideoutB1FBlackBeltRylan, -1
	object_event  4,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, RocketHideoutB1FScientistSanders, -1
	object_event 18,  8, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, RocketHideoutB1FPicnickerZane, -1
	object_event 10, 17, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, RocketHideoutB1FBattleGirlSasha, -1
	object_event  7, 23, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, RocketHideoutB1FLassMavis, -1
	itemball_event  1, 17, MOON_STONE, 1, EVENT_ROCKET_HIDEOUT_B1F_MOON_STONE
	itemball_event  3, 14, ZINC, 1, EVENT_ROCKET_HIDEOUT_B1F_ZINC

RocketHideoutB1FDoorScript:
	checkevent EVENT_BEAT_BLACKBELT_RYLAN
	iftruefwd .DoorOpen
	changeblock 16, 16, $13
.DoorOpen
	endcallback

RocketHideoutB1FBlackBeltRylan:
	trainer BLACKBELT_T, RYLAN, EVENT_BEAT_BLACKBELT_RYLAN, .SeenText, .BeatenText, 0, .AfterScript

.Script:
	checkevent EVENT_BEAT_BLACKBELT_RYLAN
	iftruefwd .AfterScript
	jumpthistextfaceplayer

.SeenText:
if DEF(_LOCALE_FR)
	text "Chez l'Équipe"
	line "Valor, on repousse"

	para "ses limites. La"
	line "force, c'est tout!"
	done
else
	text "In Team Valor, we"
	line "push our limits."

	para "Strength is all"
	line "that matters!"
	done
endc

.AfterScript:
	checkjustbattled
	iffalsefwd .AfterText
	changeblock 16, 16, $0d
	playsound SFX_ENTER_DOOR
	waitsfx
	refreshmap
	special RestartMapMusic
	end

.AfterText
	jumptextfaceplayer .Text
	end

.Text
if DEF(_LOCALE_FR)
	text "Tu as du cran…"

	para "Tu devrais nous"
	line "rejoindre, Équipe"
	cont "Valor."
	done
else
	text "You've got guts…"

	para "Perhaps you should"
	line "join Team Valor."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Ta force est"
	line "supérieure…"
	done
else
	text "Your strength is"
	line "superior…"
	done
endc

RocketHideoutB1FScientistSanders:
	generictrainer SCIENTIST, SANDERS, EVENT_BEAT_SCIENTIST_SANDERS, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Leader Blanche est"
	line "une as de la"

	para "stratégie. C'est"
	line "elle qui choisit"

	para "où nous poster."
	done
else
	text "Leader Blanche ex-"
	line "cels in strategy."

	para "They decide where"
	line "we are stationed."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "L'Équipe Mystic"
	line "vénère la"

	para "stratégie. Ici, il"
	line "faut un esprit"
	cont "d'acier."
	done
else
	text "Team Mystic"
	line "values strategy."

	para "Only a strong mind"
	line "could win here."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Tes tactiques sont"
	line "parfaites!"
	done
else
	text "Your tactics are"
	line "flawless!"
	done
endc

RocketHideoutB1FPicnickerZane:
	generictrainer PICNICKER, ZANE, EVENT_BEAT_PICNICKER_ZANE, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Spark serait"
	line "impressionné."

	para "On verra si tu"
	line "tiens le rythme!"
	done
else
	text "Spark would be"
	line "impressed."

	para "Let's see if you"
	line "can keep going!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "L'Équipe Instinct,"
	line "c'est suivre son"

	para "intuition. Pas le"
	line "temps de penser:"

	para "il faut foncer!"
	done
else
	text "Team Instinct is"
	line "all about trusting"
	cont "your gut."

	para "No time to think,"
	line "just act!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Tu as cette"
	line "étincelle, oui."

	para "Ne la perds pas!"
	done
else
	text "You've got that"
	line "“spark”, alright."

	para "Keep it alive!"
	done
endc

RocketHideoutB1FBattleGirlSasha:
	generictrainer BATTLE_GIRL, SASHA, EVENT_BEAT_BATTLE_GIRL_SASHA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "La flamme Valor"
	line "brûle en toi."

	para "L'épreuve de"
	line "Candela poussera"
	cont "tes limites."
	done
else
	text "The flame of Valor"
	line "burns within you."

	para "Candela's trial"
	line "will test your"
	cont "limits."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Équipe Valor:"
	line "passion et prise"

	para "de risque. Tu peux"
	line "tenir mon rythme?"
	done
else
	text "Team Valor's all"
	line "about passion and"
	cont "taking risks."

	para "Think you can"
	line "match my in-"
	cont "tensity?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Ta flamme…"
	line "Trop forte!"
	done
else
	text "Your flame…"
	line "Too bright!"
	done
endc

RocketHideoutB1FLassMavis:
	generictrainer LASS, MAVIS, EVENT_BEAT_LASS_MAVIS, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Les combats de"
	line "Spark sont impré-"

	para "visibles. C'est"
	line "pour ça que je"
	cont "improvise!"
	done
else
	text "Spark's battles"
	line "are unpredictable."

	para "Thats why I mix"
	line "things up!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Ma stratégie?"

	para "Pur instinct, rien"
	line "de plus!"
	done
else
	text "My strategy?"

	para "Pure instinct and"
	line "nothing more!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Ton instinct"
	line "dépasse le mien…"
	done
else
	text "I guess your in-"
	line "stinct is better"
	cont "than mine."
	done
endc
