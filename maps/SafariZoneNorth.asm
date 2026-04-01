SafariZoneNorth_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 41, 32, SAFARI_ZONE_EAST, 3
	warp_event 41, 33, SAFARI_ZONE_EAST, 4
	warp_event 10, 37, SAFARI_ZONE_WEST, 3
	warp_event 11, 37, SAFARI_ZONE_WEST, 4
	warp_event 22, 37, SAFARI_ZONE_HUB, 7
	warp_event 23, 37, SAFARI_ZONE_HUB, 8
	warp_event 37,  5, SAFARI_ZONE_NORTH_REST_HOUSE, 1
	warp_event  4, 37, SAFARI_ZONE_WEST, 1
	warp_event  5, 37, SAFARI_ZONE_WEST, 2

	def_coord_events

	def_bg_events
	bg_event 15, 33, BGEVENT_JUMPTEXT, SafariZoneNorthAreaSignText
	bg_event 38,  6, BGEVENT_JUMPTEXT, SafariZoneNorthRestHouseSignText
	bg_event 28, 30, BGEVENT_JUMPTEXT, SafariZoneNorthTrainerTips1SignText
	bg_event 20, 34, BGEVENT_JUMPTEXT, SafariZoneNorthTrainerTips2SignText
	bg_event  5, 27, BGEVENT_JUMPTEXT, SafariZoneNorthTrainerTips3SignText
	bg_event 31, 19, BGEVENT_ITEM + LUCKY_PUNCH, EVENT_SAFARI_ZONE_NORTH_HIDDEN_LUCKY_PUNCH

	def_object_events
	object_event 18, 23, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerBattleGirlPadma, -1
	object_event  7,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterTyler, -1
	object_event 36,  9, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBeautyRachael, -1
	object_event 15, 14, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneNorthCooltrainerFScript, -1
	itemball_event 24, 18, EVIOLITE, 1, EVENT_SAFARI_ZONE_NORTH_EVIOLITE
	itemball_event 21,  9, PROTEIN, 1, EVENT_SAFARI_ZONE_NORTH_PROTEIN

GenericTrainerBattleGirlPadma:
	generictrainer BATTLE_GIRL, PADMA, EVENT_BEAT_BATTLE_GIRL_PADMA, BattleGirlPadmaSeenText, BattleGirlPadmaBeatenText

if DEF(_LOCALE_FR)
	text "Si tu mets tout"
	line "ton cœur dans"

	para "l'entraînement,"
	line "tu seras fort!"
	done
else
	text "If you throw your"
	line "emotions into"

	para "training, you'll"
	line "become strong!"
	done
endc

GenericTrainerYoungsterTyler:
	generictrainer YOUNGSTER, TYLER, EVENT_BEAT_YOUNGSTER_TYLER, YoungsterTylerSeenText, YoungsterTylerBeatenText

if DEF(_LOCALE_FR)
	text "Les #mon"
	line "sortent sans"
	cont "prévenir."
	done
else
	text "#mon leap out"
	line "when you least"
	cont "expect it."
	done
endc

GenericTrainerBeautyRachael:
	generictrainer BEAUTY, RACHAEL, EVENT_BEAT_BEAUTY_RACHAEL, BeautyRachaelSeenText, BeautyRachaelBeatenText

if DEF(_LOCALE_FR)
	text "J'étais karatéka"
	line "il y a un an."

	para "La science"
	line "médicale est"
	cont "incroyable,"
	cont "non?"
	done
else
	text "I was a Black Belt"
	line "just one year ago."

	para "The power of med-"
	line "ical science is"

	para "amazing, wouldn't"
	line "you say?"
	done
endc

SafariZoneNorthCooltrainerFScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_DOUBLE_EDGE_INTRO
	iftruefwd SafariZoneNorthTutorDoubleEdgeScript
	writetext SafariZoneNorthCooltrainerFText
	waitbutton
	setevent EVENT_LISTENED_TO_DOUBLE_EDGE_INTRO
SafariZoneNorthTutorDoubleEdgeScript:
	writetext Text_SafariZoneNorthTutorDoubleEdge
	waitbutton
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	writetext Text_SafariZoneNorthTutorQuestion
	yesorno
	iffalsefwd .TutorRefused
	setval DOUBLE_EDGE
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_SafariZoneNorthTutorRefused

.NoSilverLeaf
	jumpopenedtext Text_SafariZoneNorthTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_SafariZoneNorthTutorTaught

BattleGirlPadmaSeenText:
if DEF(_LOCALE_FR)
	text "Je m'entraîne avec"
	line "mes #mon pour"
	cont "faire équipe!"
	done
else
	text "I spar with my"
	line "#mon to improve"
	cont "as a team!"
	done
endc

BattleGirlPadmaBeatenText:
if DEF(_LOCALE_FR)
	text "Il faut"
	line "s'entraîner plus!"
	done
else
	text "We'll have to"
	line "train harder!"
	done
endc

YoungsterTylerSeenText:
if DEF(_LOCALE_FR)
	text "On trouve des"
	line "#mon partout!"

	para "Dans l'herbe,"
	line "l'eau, les"
	cont "grottes,"
	cont "ou dans"
	cont "les arbres!"
	done
else
	text "You can find #-"
	line "mon anywhere!"

	para "In grass, in"
	line "water, in caves,"
	cont "or up a tree!"
	done
endc

YoungsterTylerBeatenText:
if DEF(_LOCALE_FR)
	text "Je dois continuer"
	line "a chercher!"
	done
else
	text "I need to keep"
	line "looking!"
	done
endc

BeautyRachaelSeenText:
if DEF(_LOCALE_FR)
	text "Ma robe est"
	line "parfaite pour"
	cont "le Parc Safari!"
	done
else
	text "My sundress is"
	line "perfect for a day"
	cont "in the Safari"
	cont "Zone!"
	done
endc

BeautyRachaelBeatenText:
if DEF(_LOCALE_FR)
	text "Mais pas top"
	line "pour se battre…"
	done
else
	text "It's not great"
	line "for battling…"
	done
endc

SafariZoneNorthCooltrainerFText:
if DEF(_LOCALE_FR)
	text "J'ai attrapé une"
	line "Leveinard!"

	para "Quelle chance!"
	line "Je vais lui"
	cont "apprendre"

	para "une charge super"
	line "puissante."

	para "Je partage ma"
	line "chance avec toi!"
	done
else
	text "I caught a"
	line "Chansey!"

	para "I'm so lucky!"
	line "I'm going to teach"

	para "it to do a really"
	line "powerful tackle."

	para "Let me share my"
	line "luck with you!"
	done
endc

Text_SafariZoneNorthTutorDoubleEdge:
if DEF(_LOCALE_FR)
	text "J'apprends"
	line "Damoclès a ton"
	cont "#mon contre une"
	cont "Feuille Argent."
	done
else
	text "I'll teach your"
	line "#mon how to"

	para "use Double-Edge"
	line "for a Silver Leaf."
	done
endc

Text_SafariZoneNorthTutorNoSilverLeaf:
if DEF(_LOCALE_FR)
	text "Tu n'as pas de"
	line "Feuille Argent…"
	done
else
	text "You don't have any"
	line "Silver Leaves…"
	done
endc

Text_SafariZoneNorthTutorQuestion:
if DEF(_LOCALE_FR)
	text "Je lui apprends"
	line "Damoclès?"
	done
else
	text "Should I teach"
	line "your #mon"
	cont "Double-Edge?"
	done
endc

Text_SafariZoneNorthTutorRefused:
if DEF(_LOCALE_FR)
	text "Tant pis."
	done
else
	text "Oh well."
	done
endc

Text_SafariZoneNorthTutorTaught:
if DEF(_LOCALE_FR)
	text "Voilà!"
	line "Ton #mon sait"

	para "Damoclès!"
	done
else
	text "There!"
	line "Now your #mon"

	para "knows how to use"
	cont "Double-Edge!"
	done
endc

SafariZoneNorthAreaSignText:
if DEF(_LOCALE_FR)
	text "Parc Safari"
	line "Zone Nord"
	done
else
	text "Safari Zone"
	line "North Area"
	done
endc

SafariZoneNorthRestHouseSignText:
if DEF(_LOCALE_FR)
	text "Maison Repos"
	done
else
	text "Rest House"
	done
endc

SafariZoneNorthTrainerTips1SignText:
if DEF(_LOCALE_FR)
	text "ASTUCE"

	para "Une attaque"
	line "type peut être"
	cont "Phys., Spé., Stat."
	done
else
	text "Trainer Tips"

	para "Moves of the same"
	line "type can be"
	cont "physical, special,"
	cont "or status-based."
	done
endc

SafariZoneNorthTrainerTips2SignText:
if DEF(_LOCALE_FR)
	text "ASTUCE"

	para "Les #mon"
	line "se cachent"
	cont "dans les"
	cont "hautes herbes!"

	para "Zigzague pour"
	line "les faire sortir."
	done
else
	text "Trainer Tips"

	para "#mon hide in"
	line "tall grass!"

	para "Zigzag through"
	line "grassy areas to"
	cont "flush them out."
	done
endc

SafariZoneNorthTrainerTips3SignText:
if DEF(_LOCALE_FR)
	text "ASTUCE"

	para "La suite du"
	line "panneau a été"
	cont "arrachée…"
	done
else
	text "Trainer Tips"

	para "The rest of the"
	line "sign has been"
	cont "torn away…"
	done
endc
