Route18West_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route18WestAlwaysOnBike

	def_warp_events
	warp_event 17,  6, ROUTE_18_GATE, 1
	warp_event 17,  7, ROUTE_18_GATE, 2

	def_coord_events
	coord_event 12,  0, 0, Route18WestBikeCheckScript

	def_bg_events
	bg_event -1,  5, BGEVENT_JUMPTEXT, UragaChannelSignText

	def_object_events
	object_event  6,  2, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerBikerCharles, -1

Route18WestAlwaysOnBike:
	setflag ENGINE_ALWAYS_ON_BIKE
	endcallback

Route18WestBikeCheckScript:
	readmem wPlayerState
	ifequalfwd PLAYER_BIKE, .done
	showtext Route18WestBikeWarningText
	applyonemovement PLAYER, step_down
.done
	end

GenericTrainerBikerCharles:
	generictrainer BIKER, CHARLES, EVENT_BEAT_BIKER_CHARLES, BikerCharlesSeenText, BikerCharlesBeatenText

if DEF(_LOCALE_FR)
	text "Conduis doucement,"
	line "c'est plus"
	cont "prudent!"
	done
else
	text "Reckless driving"
	line "causes accidents!"
	cont "Take it easy!"
	done
endc

BikerCharlesSeenText:
if DEF(_LOCALE_FR)
	text "Nous on est des"
	line "durs! Des vrais!"
	done
else
	text "We're fearless"
	line "highway stars!"
	done
endc

BikerCharlesBeatenText:
if DEF(_LOCALE_FR)
	text "Arrrgh!"
	line "Trop dur!"
	done
else
	text "Arrrgh! Crash and"
	line "burn!"
	done
endc

Route18WestBikeWarningText:
if DEF(_LOCALE_FR)
	text "Hé! Oh! Stop!"

	para "Tu peux pas aller"
	line "sur la PISTE CY-"

	para "CLABLE sans une"
	line "BICYCLETTE!"
	done
else
	text "You have to be on"
	line "a Bicycle to go"
	cont "on Cycling Road!"
	done
endc
