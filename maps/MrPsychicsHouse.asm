MrPsychicsHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 5
	warp_event  3,  7, SAFFRON_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  7,  1, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events
	object_event  5,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MrPsychic, -1

MrPsychic:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_ZEN_HEADBUTT_INTRO
	iftruefwd MrPsychicsHouseTutorZenHeadbuttScript
	writetext MrPsychicText
	waitbutton
	setevent EVENT_LISTENED_TO_ZEN_HEADBUTT_INTRO
MrPsychicsHouseTutorZenHeadbuttScript:
	writetext Text_MrPsychicsHouseTutorZenHeadbutt
	waitbutton
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	writetext Text_MrPsychicsHouseTutorQuestion
	yesorno
	iffalsefwd .TutorRefused
	setval ZEN_HEADBUTT
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_MrPsychicsHouseTutorRefused

.NoSilverLeaf
	jumpopenedtext Text_MrPsychicsHouseTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_MrPsychicsHouseTutorTaught

MrPsychicText:
if DEF(_LOCALE_FR)
	text "…"

	para "…"

	para "…"

	para "… J'ai"
	line "compris!"

	para "Tu veux"
	line "apprendre"
	cont "Psykoud'Boul!"
	done
else
	text "…"

	para "…"

	para "…"

	para "…I got it!"

	para "You want to learn"
	line "Zen Headbutt!"
	done
endc

Text_MrPsychicsHouseTutorZenHeadbutt:
if DEF(_LOCALE_FR)
	text "Je peux"
	line "enseigner"
	cont "Psykoud'Boul"

	para "contre une"
	line "Feuille"
	cont "d'Argent."
	done
else
	text "I will teach your"
	line "#mon to use Zen"

	para "Headbutt for a"
	line "Silver Leaf."
	done
endc

Text_MrPsychicsHouseTutorNoSilverLeaf:
if DEF(_LOCALE_FR)
	text "Tu n'as pas de"
	line "Feuille"
	cont "d'Argent…"
	done
else
	text "You don't have a"
	line "Silver Leaf…"
	done
endc

Text_MrPsychicsHouseTutorQuestion:
if DEF(_LOCALE_FR)
	text "Je dois"
	line "enseigner"
	cont "Psykoud'Boul"

	para "a ton #mon?"
	done
else
	text "Should I teach"
	line "your #mon"
	cont "Zen Headbutt?"
	done
endc

Text_MrPsychicsHouseTutorRefused:
if DEF(_LOCALE_FR)
	text "… Je me suis"
	line "trompé?"
	done
else
	text "…I was wrong?"
	done
endc

Text_MrPsychicsHouseTutorTaught:
if DEF(_LOCALE_FR)
	text "Ton #mon sait"
	line "utiliser"
	cont "Psykoud'Boul."
	done
else
	text "Your #mon now"
	line "knows how to use"
	cont "Zen Headbutt."
	done
endc
