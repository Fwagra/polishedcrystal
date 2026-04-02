Route40BattleTowerGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  7, ROUTE_40, 1
	warp_event  5,  7, ROUTE_40, 1
	warp_event  4,  0, BATTLE_TOWER_OUTSIDE, 1
	warp_event  5,  0, BATTLE_TOWER_OUTSIDE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route40BattleTowerGateOfficer, EVENT_BATTLE_TOWER_CLOSED
	object_event  3,  3, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route40BattleTowerGateRockerScript, -1
	object_event  7,  5, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route40BattleTowerGateTwinScript, -1

Route40BattleTowerGateOfficer:
if DEF(_LOCALE_FR)
	text "Tu vas à la TOUR"
	line "DE COMBAT?"

	para "Si tu gagnes plein"
	line "de fois, tu peux"

	para "remporter des"
	line "trucs spéciaux."
	done
else
	text "Are you going to"
	line "the Battle Tower?"

	para "If you win a whole"
	line "lot, you can earn"

	para "Battle Points and"
	line "trade them in for"
	cont "special items."
	done
endc

Route40BattleTowerGateRockerScript:
	checkevent EVENT_BATTLE_TOWER_OPEN
	iftrue_jumptextfaceplayer .OpenText
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Tu es aussi ici"
	line "pour la TOUR DE"
	cont "COMBAT?"

	para "Mais tu ne peux"
	line "pas y entrer je"
	cont "parie..."
	done
else
	text "Did you come to"
	line "see the Battle"
	cont "Tower too?"

	para "But I guess you"
	line "can't go in yet."
	done
endc

.OpenText:
if DEF(_LOCALE_FR)
	text "La TOUR DE COMBAT"
	line "a ouvert ses"
	cont "portes."

	para "Je veux y aller"
	line "mais..."
	cont "J'ai peur."
	done
else
	text "Battle Tower has"
	line "opened."

	para "I want to go, but"
	line "I haven't thought"

	para "up a cool line for"
	line "when I win."
	done
endc

Route40BattleTowerGateTwinScript:
	checkevent EVENT_BATTLE_TOWER_OPEN
	iftrue_jumptextfaceplayer .OpenText
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Je vais entraîner"
	line "mes #MON avant"

	para "de me lancer vers"
	line "la TOUR DE COMBAT."
	done
else
	text "I'm going to train"
	line "my #mon so I'll"

	para "be all ready for"
	line "the Battle Tower."
	done
endc

.OpenText:
if DEF(_LOCALE_FR)
	text "Mes #MON ont"
	line "tous des niveaux"
	cont "différents..."

	para "Je dois les"
	line "entraîner!"
	done
else
	text "The levels of the"
	line "#mon I want to"

	para "use are all"
	line "different."

	para "I have to go train"
	line "them now!"
	done
endc
