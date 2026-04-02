UndergroundWarehouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, UndergroundWarehouseResetSwitches

	def_warp_events
	warp_event  2, 12, UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, 2
	warp_event  3, 12, UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, 3
	warp_event 17,  2, GOLDENROD_DEPT_STORE_B1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  8, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntM24, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  8, 15, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntM14, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 14,  3, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerGruntM15, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 12,  8, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodUndergroundWarehouseDirectorScript, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	itemball_event 18, 15, MAX_ETHER, 1, EVENT_UNDERGROUND_WAREHOUSE_MAX_ETHER
	tmhmball_event 13,  9, TM_X_SCISSOR, EVENT_UNDERGROUND_WAREHOUSE_TM_X_SCISSOR
	itemball_event  2,  1, ULTRA_BALL, 1, EVENT_UNDERGROUND_WAREHOUSE_ULTRA_BALL

UndergroundWarehouseResetSwitches:
	clearevent EVENT_SWITCH_1
	clearevent EVENT_SWITCH_2
	clearevent EVENT_SWITCH_3
	clearevent EVENT_EMERGENCY_SWITCH
	clearevent EVENT_SWITCH_4
	clearevent EVENT_SWITCH_5
	clearevent EVENT_SWITCH_6
	clearevent EVENT_SWITCH_7
	clearevent EVENT_SWITCH_8
	clearevent EVENT_SWITCH_9
	clearevent EVENT_SWITCH_10
	clearevent EVENT_SWITCH_11
	clearevent EVENT_SWITCH_12
	clearevent EVENT_SWITCH_13
	clearevent EVENT_SWITCH_14
	setval $0
	writemem wUndergroundSwitchPositions
	endcallback

GenericTrainerGruntM24:
	generictrainer GRUNTM, 24, EVENT_BEAT_ROCKET_GRUNTM_24, GruntM24SeenText, GruntM24BeatenText

if DEF(_LOCALE_FR)
	text "La TEAM ROCKET"
	line "vivra dans l'at-"
	cont "tente du retour du"
	cont "grand GIOVANNI."

	para "Nous sommes prêts"
	line "à tout."
	done
else
	text "Team Rocket will"
	line "keep going, wait-"
	cont "ing for the return"
	cont "of Giovanni."

	para "We'll do whatever"
	line "it takes."
	done
endc

GenericTrainerGruntM14:
	generictrainer GRUNTM, 14, EVENT_BEAT_ROCKET_GRUNTM_14, GruntM14SeenText, GruntM14BeatenText

if DEF(_LOCALE_FR)
	text "Perdu..."

	para "Pardon..."
	line "GIOVANNI!"
	done
else
	text "I lost…"

	para "Please forgive me,"
	line "Giovanni!"
	done
endc

GenericTrainerGruntM15:
	generictrainer GRUNTM, 15, EVENT_BEAT_ROCKET_GRUNTM_15, GruntM15SeenText, GruntM15BeatenText

	text "Hyuck-hyuck-hyuck!"
	line "That was a blast!"
	cont "I'll remember you!"
	done

GoldenrodUndergroundWarehouseDirectorScript:
	checkevent EVENT_RECEIVED_CARD_KEY
	iftrue_jumptextfaceplayer DirectorAfterText
	faceplayer
	opentext
	writetext DirectorIntroText
	promptbutton
	verbosegivekeyitem CARD_KEY
	setevent EVENT_RECEIVED_CARD_KEY
	setevent EVENT_WAREHOUSE_LAYOUT_1
	clearevent EVENT_WAREHOUSE_LAYOUT_2
	clearevent EVENT_WAREHOUSE_LAYOUT_3
	writetext DirectorCardKeyText
	promptbutton
	jumpopenedtext DirectorAfterText

GruntM24SeenText:
	text "How did you get"
	line "this far?"

	para "I guess it can't"
	line "be helped. I'll"
	cont "dispose of you."
	done

GruntM24BeatenText:
	text "I got disposed of…"
	done

GruntM14SeenText:
	text "You're not going"
	line "any farther!"

	para "I don't show mercy"
	line "to my enemies, not"
	cont "even brats!"
	done

GruntM14BeatenText:
	text "Blast it!"
	done

GruntM15SeenText:
	text "Hyuck-hyuck-hyuck!"
	line "I remember you!"

	para "You got me good"
	line "at our hideout!"
	done

GruntM15BeatenText:
	text "Hyuck-hyuck-hyuck!"
	line "So, that's how?"
	done

DirectorIntroText:
if DEF(_LOCALE_FR)
	text "DIRECTEUR: Qui?"
	line "Quoi? Tu es là"
	cont "pour me sauver?"

	para "Merci!"

	para "La TOUR RADIO!"

	para "Que se passe-t-il"
	line "là-bas?"

	para "Contrôlée par la"
	line "TEAM ROCKET?"

	para "Tiens. Prends"
	line "cette CARTE MAGN."
	done
else
	text "Director: Who?"
	line "What? You came to"
	cont "rescue me?"

	para "Thank you!"

	para "The Radio Tower!"

	para "What's happening"
	line "there?"

	para "Taken over by Team"
	line "Rocket?"

	para "Here. Take this"
	line "Card Key."
	done
endc

DirectorCardKeyText:
if DEF(_LOCALE_FR)
	text "DIRECTEUR: Utilise"
	line "cette carte pour"
	cont "ouvrir les volets"
	cont "du 2ème."
	done
else
	text "Director: Use that"
	line "to open the shut-"
	cont "ters on 3F."
	done
endc

DirectorAfterText:
if DEF(_LOCALE_FR)
	text "Je t'en supplie..."
	line "Aide-nous."

	para "Dieu seul sait ce"
	line "qu'ils feront en"

	para "contrôlant le"
	line "transmetteur."

	para "Ils pourront même"
	line "manipuler les"

	para "#mon grâce à un"
	line "signal spécial!"

	para "Tu es mon seul"
	line "espoir."

	para "Sauve la TOUR"
	line "RADIO! Pitié!!!"

	para "Sauve tous les"
	line "gentils #mon!"
	done
else
	text "I'm begging you to"
	line "help."

	para "There's no telling"
	line "what they'll do if"

	para "they control the"
	line "transmitter."

	para "They may even be"
	line "able to control"

	para "#mon using a"
	line "special signal!"

	para "You're the only"
	line "one I can call on."

	para "Please save the"
	line "Radio Tower…"

	para "And all the #-"
	line "mon nationwide!"
	done
endc
