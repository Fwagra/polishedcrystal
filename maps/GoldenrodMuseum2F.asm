GoldenrodMuseum2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 13,  7, GOLDENROD_MUSEUM_1F, 3

	def_coord_events

	def_bg_events
	bg_event  1,  0, BGEVENT_READ, LugiaPaintingScript
	bg_event  2,  0, BGEVENT_READ, LugiaPaintingScript
	bg_event  4,  0, BGEVENT_READ, BellTowerPaintingScript
	bg_event  5,  0, BGEVENT_READ, BellTowerPaintingScript
	bg_event  7,  0, BGEVENT_READ, HoOhPaintingScript
	bg_event  8,  0, BGEVENT_READ, HoOhPaintingScript
	bg_event  1,  4, BGEVENT_READ, KabutoPuzzleScript
	bg_event  1,  5, BGEVENT_READ, KabutoPuzzleScript
	bg_event  5,  4, BGEVENT_READ, OmanytePuzzleScript
	bg_event  5,  5, BGEVENT_READ, OmanytePuzzleScript
	bg_event  1,  6, BGEVENT_READ, AerodactylPuzzleScript
	bg_event  1,  7, BGEVENT_READ, AerodactylPuzzleScript
	bg_event  5,  6, BGEVENT_READ, HoOhPuzzleScript
	bg_event  5,  7, BGEVENT_READ, HoOhPuzzleScript
	bg_event 10,  1, BGEVENT_JUMPTEXT, TowerRelicText
	bg_event 11,  1, BGEVENT_JUMPTEXT, TowerRelicText
	bg_event 11,  1, BGEVENT_JUMPTEXT, TowerRelicText

	def_object_events
	object_event  4,  2, SPRITE_SIGHTSEER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, (1 << EVE) | (1 << NITE), 0, OBJECTTYPE_SCRIPT, 0, GoldenrodMuseum2FSightseerMScript, -1
	pokemon_event 5,  2, SMEARGLE, SPRITEMOVEDATA_POKEMON, (1 << EVE) | (1 << NITE), PAL_NPC_BROWN, GoldenrodMuseum2FSmeargleText, -1
	object_event  3,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, GoldenrodMuseum2FScientistScript, -1
	object_event 11,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodMuseum2FTeacherScript, -1

LugiaPaintingScript:
	checkevent EVENT_FOUGHT_LUGIA
	iffalse_jumptext EmptyDisplayText
	reanchormap
	paintingpic LUGIA_PAINTING
	waitbutton
	closepokepic
	jumpthistext

	text "  The Leviathan"
	line "     Awakens"
	done

HoOhPaintingScript:
	checkevent EVENT_FOUGHT_HO_OH
	iffalse_jumptext EmptyDisplayText
	reanchormap
	paintingpic HO_OH_PAINTING
	waitbutton
	closepokepic
	jumpthistext

	text "   The Phoenix"
	line "    Ascending"
	done

BellTowerPaintingScript:
	checkevent EVENT_FOUGHT_SUICUNE
	iffalse_jumptext EmptyDisplayText
	reanchormap
	paintingpic BELL_TOWER_PAINTING
	waitbutton
	closepokepic
	jumpthistext

if DEF(_LOCALE_FR)
	text "On dit que les"
	line "deux TOURS furent"
	line "construites pour"
	line "sceller l'amitié"
	line "entre #MON et"
	line "humains. C'était"
	line "il y a 700 ans,"
	line "mais l'idée reste"
	line "la même"
	line "aujourd'hui."
	done
else
	text "    Friendship"
	line "     and Hope"
	done
endc

KabutoPuzzleScript:
	checkevent EVENT_SOLVED_KABUTO_PUZZLE
	iffalse_jumptext EmptyDisplayText
	reanchormap
	paintingpic KABUTO_PUZZLE
	waitbutton
	closepokepic
	jumpthistext

	text "It's the completed"
	line "Kabuto panel!"
	done

OmanytePuzzleScript:
	checkevent EVENT_SOLVED_OMANYTE_PUZZLE
	iffalse_jumptext EmptyDisplayText
	reanchormap
	paintingpic OMANYTE_PUZZLE
	waitbutton
	closepokepic
	jumpthistext

	text "It's the completed"
	line "Omanyte panel!"
	done

AerodactylPuzzleScript:
	checkevent EVENT_SOLVED_AERODACTYL_PUZZLE
	iffalse_jumptext EmptyDisplayText
	reanchormap
	paintingpic AERODACTYL_PUZZLE
	waitbutton
	closepokepic
	jumpthistext

	text "It's the completed"
	line "Aerodactyl panel!"
	done

HoOhPuzzleScript:
	checkevent EVENT_SOLVED_HO_OH_PUZZLE
	iffalse_jumptext EmptyDisplayText
	reanchormap
	paintingpic HO_OH_PUZZLE
	waitbutton
	closepokepic
	jumpthistext

	text "It's the completed"
	line "Ho-Oh panel!"
	done

EmptyDisplayText:
	text "The display is"
	line "still empty…"
	done

TowerRelicText:
if DEF(_LOCALE_FR)
	text "Une fresque"
	line "ancienne"

	para "d'un #MON"
	line "mystérieux."
	done
else
	text "An ancient mural"
	line "depicting a mys-"
	cont "terious #mon."
	done
endc

GoldenrodMuseum2FSightseerMScript:
	checkevent EVENT_FOUGHT_SUICUNE
	iffalse_jumptextfaceplayer GoldenrodMuseum2FSightseerMNoPaintingText
	checkevent EVENT_FOUGHT_HO_OH
	iffalse_jumptextfaceplayer GoldenrodMuseum2FSightseerMNoPaintingText
	checkevent EVENT_FOUGHT_LUGIA
	iffalse_jumptextfaceplayer GoldenrodMuseum2FSightseerMNoPaintingText
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Ces tableaux sont"
	line "superbes!"

	para "Un jour, j'espère"
	line "voir mon art"

	para "accroché dans un"
	line "musée aussi."
	done
else
	text "These paintings"
	line "are beautiful!"

	para "One day, I hope my"
	line "art is hung in a"

	para "museum for all to"
	line "see too."
	done
endc

GoldenrodMuseum2FSightseerMNoPaintingText:
if DEF(_LOCALE_FR)
	text "Oh…! SMEARGLE et"
	line "moi sommes venus"

	para "pour le grand"
	line "opening."

	para "Mais on dirait que"
	line "c'est une rumeur…"

	para "Cette galerie"
	line "n'est pas finie!"
	done
else
	text "Aww…! Smeargle and"
	line "I came because we"

	para "heard an art exhi-"
	line "bit would be here"

	para "for the grand"
	line "opening."

	para "But it seems we"
	line "heard wrong…"

	para "This art gallery"
	line "isn't finished!"
	done
endc

GoldenrodMuseum2FSmeargleText:
if DEF(_LOCALE_FR)
	text "SMEARGLE: Smeer!"
	done
else
	text "Smeargle: Smeer!"
	done
endc

GoldenrodMuseum2FScientistScript:
	checkevent EVENT_SOLVED_KABUTO_PUZZLE
	iffalse_jumptextfaceplayer GoldenrodMuseum2FScientistNoArtifactsText
	checkevent EVENT_SOLVED_OMANYTE_PUZZLE
	iffalse_jumptextfaceplayer GoldenrodMuseum2FScientistNoArtifactsText
	checkevent EVENT_SOLVED_AERODACTYL_PUZZLE
	iffalse_jumptextfaceplayer GoldenrodMuseum2FScientistNoArtifactsText
	checkevent EVENT_SOLVED_HO_OH_PUZZLE
	iffalse_jumptextfaceplayer GoldenrodMuseum2FScientistNoArtifactsText
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Ces reliques sont"
	line "fascinantes!"

	para "Dommage que ce"
	line "soient des copies…"

	para "J'aimerais étudier"
	line "les vraies"
	cont "de près."
	done
else
	text "These artifacts"
	line "are fascinating!"

	para "Its a shame they're"
	line "just replicas…"

	para "I'd love to study"
	line "the real thing"
	cont "up close."
	done
endc

GoldenrodMuseum2FScientistNoArtifactsText:
if DEF(_LOCALE_FR)
	text "Je sais qu'il"
	line "vient d'ouvrir,"
	cont "mais"

	para "je m'attendais à"
	line "plus d'expos…"

	para "Où est tout?"
	done
else
	text "I realize this"
	line "museum has only"

	para "just opened, but"
	line "I was expecting"

	para "there to be more"
	line "exhibits…"

	para "Where is every-"
	line "thing?"
	done
endc

GoldenrodMuseum2FTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_BATON_PASS_INTRO
	iftruefwd GoldenrodMuseum2FTutorBatonPassScript
	writetext GoldenrodMuseum2FTutorIntroText
	waitbutton
	setevent EVENT_LISTENED_TO_BATON_PASS_INTRO
; fallthrough
GoldenrodMuseum2FTutorBatonPassScript:
	writetext GoldenrodMuseum2FTutorBatonPassText
	waitbutton
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	writetext GoldenrodMuseum2FTutorQuestion
	yesorno
	iffalsefwd .TutorRefused
	setval BATON_PASS
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpopenedtext GoldenrodMuseum2FTutorRefused

.NoSilverLeaf
	jumpopenedtext GoldenrodMuseum2FTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext GoldenrodMuseum2FTutorTaught

GoldenrodMuseum2FTutorIntroText:
if DEF(_LOCALE_FR)
	text "Avant la nouvelle"
	line "TOUR RADIO,"

	para "il y avait une"
	line "vieille tour en"
	cont "bois."

	para "Cette fresque"
	line "venait de là."

	para "Ici, on préserve"
	line "un bout de"
	cont "l'histoire."

	para "Même les #MON"
	line "comprennent ça!"
	done
else
	text "Before the con-"
	line "struction of the"

	para "new Radio Tower,"
	line "there once stood"

	para "an ancient wooden"
	line "tower."

	para "This mural was"
	line "originally in"
	cont "that tower."

	para "Moving it here"
	line "was necessary"

	para "to preserve a"
	line "piece of Johto's"
	cont "history."

	para "Even #mon"
	line "can understand"

	para "the value of"
	line "preservation!"
	done
endc

GoldenrodMuseum2FTutorBatonPassText:
if DEF(_LOCALE_FR)
	text "Je peux enseigner"
	line "RELAIS"

	para "à ton #MON contre"
	line "une Feuille Arg."
	done
else
	text "I can teach your"
	line "#mon to use"

	para "Baton Pass for one"
	line "Silver Leaf."
	done
endc

GoldenrodMuseum2FTutorNoSilverLeaf:
if DEF(_LOCALE_FR)
	text "Tu n'as pas de"
	line "Feuille Arg…"
	done
else
	text "You don't have a"
	line "Silver Leaf!"
	done
endc

GoldenrodMuseum2FTutorQuestion:
if DEF(_LOCALE_FR)
	text "Je lui enseigne"
	line "RELAIS?"
	done
else
	text "Should I teach"
	line "your #mon"
	cont "Baton Pass?"
	done
endc

GoldenrodMuseum2FTutorRefused:
if DEF(_LOCALE_FR)
	text "Vendeur: Bon, si"
	line "vous voulez."
	done
else
	text "If you say so."
	done
endc

GoldenrodMuseum2FTutorTaught:
if DEF(_LOCALE_FR)
	text "Ton #MON connaît"
	line "RELAIS!"
	done
else
	text "Now your #mon"
	line "knows how to use"
	cont "Baton Pass!"
	done
endc
