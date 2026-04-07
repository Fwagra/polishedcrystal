EcruteakShrineInside_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5, 11, ECRUTEAK_SHRINE_OUTSIDE, 1
	warp_event  6, 11, ECRUTEAK_SHRINE_OUTSIDE, 1

	def_coord_events

	def_bg_events
	bg_event  5,  6, BGEVENT_JUMPTEXT, EcruteakShrineInsideAltarText
	bg_event  6,  6, BGEVENT_JUMPTEXT, EcruteakShrineInsideAltarText

	def_object_events
	object_event  7,  6, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakShrineInsideReiScript, -1
	object_event  3,  8, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakShrineInsideGrampsText, -1
	object_event 10,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakShrineInsideSageText, -1
	object_event  1,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakShrineInsideGrannyText, -1
	pokemon_event 10,  3, FURRET, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_BROWN, ClearText, -1

	object_const_def
	const ECRUTEAKSHRINEINSIDE_REI

EcruteakShrineInsideReiScript:
	faceplayer
	opentext
	checkflag ENGINE_DAILY_SHRINE_VISIT
	iftruefwd .ReiDone
	writetext EcruteakShrineInsideReiGreetingText
	loadmenu .ReiMenuDataHeader
	verticalmenu
	closewindow
	ifequalfwd $1, .ReiBless
	ifequalfwd $2, .ReiBattle
	sjumpfwd .ReiCancel

.ReiBless
	writetext EcruteakShrineInsideReiBlessText
	promptbutton
	special Special_ReiBlessing
	ifequalfwd $0, .ReiCancel
	ifequalfwd $1, .EggBlessing
	setflag ENGINE_DAILY_SHRINE_VISIT
	writetext EcruteakShrineInsideReiBlessingText
	special PlayCurMonCry
	waitbutton
	writetext EcruteakShrineInsideHappinessText
	waitbutton
	sjumpfwd .ReiDone

.ReiBattle
	writetext EcruteakShrineInsideReiBattleText
	waitbutton
	closetext
	setflag ENGINE_DAILY_SHRINE_VISIT
	winlosstext EcruteakShrineInsideReiBeatenText, 0
	setlasttalked ECRUTEAKSHRINEINSIDE_REI
	readvar VAR_BADGES
	ifequalfwd 16, .Battle3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftruefwd .Battle2
	loadtrainer REI, 1
	startbattle
	reloadmapafterbattle
	sjumpfwd .AfterRematch

.Battle2:
	loadtrainer REI, 2
	startbattle
	reloadmapafterbattle
	sjumpfwd .AfterRematch

.Battle3:
	loadtrainer REI, 3
	startbattle
	reloadmapafterbattle
	; fallthrough

.AfterRematch:
	opentext
	; fallthrough

.ReiDone
	jumpopenedtext EcruteakShrineInsideReiComeAgainText

.ReiCancel
	jumpopenedtext EcruteakShrineInsideReiCancelText

.EggBlessing
	jumpopenedtext EcruteakShrineInsideReiBlessEggText

.ReiMenuDataHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 4, 11, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db "Blessing@"
	db "Battle@"
	db "Cancel@"

EcruteakShrineInsideReiGreetingText:
if DEF(_LOCALE_FR)
	text "Rei: Oh, salut."
	line "Bienvenue au"
	cont "sanctuaire."

	para "Tu veux que je"
	line "bénisse un de"
	cont "tes #MON?"

	para "Ou tu veux te"
	line "battre?"
	done
else
	text "Rei: Oh, hello."
	line "Welcome to our"
	cont "shrine."

	para "Did you come to"
	line "have me bless one"
	cont "of your #mon?"

	para "Or would you like"
	line "to battle?"
	done
endc

EcruteakShrineInsideReiBlessText:
if DEF(_LOCALE_FR)
	text "Rei: D'accord,"
	line "quel #MON"
	cont "je bénis?"
	done
else
	text "Rei: OK, which"
	line "#mon should I"
	cont "bless?"
	done
endc

EcruteakShrineInsideReiBlessingText:
if DEF(_LOCALE_FR)
	text "Rei: Sois en"
	line "paix, et trouve"
	cont "la sérénité."
	done
else
	text "Rei: May you be"
	line "at ease, and find"
	cont "peace."
	done
endc

EcruteakShrineInsideHappinessText:
	text_ram wStringBuffer3
if DEF(_LOCALE_FR)
	text " a l'air heureux."
	done
else
	text " looks"
	line "content."
	done
endc

EcruteakShrineInsideReiBlessEggText:
if DEF(_LOCALE_FR)
	text "Rei: Je ne peux"
	line "pas bénir un"
	cont "OEUF."
	done
else
	text "Rei: I can't"
	line "bless an Egg."
	done
endc

EcruteakShrineInsideReiBattleText:
if DEF(_LOCALE_FR)
	text "Rei: Très bien."
	line "Esprits mauvais,"
	cont "dehors!"
	done
else
	text "Rei: Very well."
	line "Evil spirits,"
	cont "begone!"
	done
endc

EcruteakShrineInsideReiBeatenText:
if DEF(_LOCALE_FR)
	text "J'admets ma"
	line "défaite!"
	done
else
	text "I admit defeat!"
	done
endc

EcruteakShrineInsideReiComeAgainText:
if DEF(_LOCALE_FR)
	text "Rei: Reviens"
	line "demain."
	done
else
	text "Rei: Please come"
	line "again tomorrow."
	done
endc

EcruteakShrineInsideReiCancelText:
if DEF(_LOCALE_FR)
	text "Rei: Reviens si"
	line "tu changes"
	cont "d'avis."
	done
else
	text "Rei: Please come"
	line "back if you change"
	cont "your mind."
	done
endc

EcruteakShrineInsideGrampsText:
if DEF(_LOCALE_FR)
	text "La prêtresse du"
	line "sanctuaire est"
	cont "ma petite-fille."
	done
else
	text "The shrine maiden"
	line "here is my grand-"
	cont "daughter."
	done
endc

EcruteakShrineInsideSageText:
if DEF(_LOCALE_FR)
	text "Ici, au"
	line "sanctuaire, on"
	cont "s'entraîne."

	para "HOOTHOOT et"
	line "SENTRET"
	cont "chassent les"

	para "fantômes."

	para "Rei est unique."
	line "Feu et Psy."
	done
else
	text "Most of us here at"
	line "the shrine train"

	para "Hoothoot and"
	line "Sentret to battle"
	cont "ghosts."

	para "Rei is unique."
	line "She uses Fire and"
	cont "Psychic types."
	done
endc

EcruteakShrineInsideGrannyText:
if DEF(_LOCALE_FR)
	text "Heureusement,"
	line "le MAGNET TRAIN"
	cont "ne s'arrête pas"

	para "à Rosalia."

	para "Ca gâcherait"
	line "notre paysage"
	cont "traditionnel."
	done
else
	text "I'm glad they didn't"
	line "approve a stop in"
	cont "Ecruteak for the"
	cont "Magnet Train."

	para "It would ruin our"
	line "traditional land-"
	cont "scape."
	done
endc

EcruteakShrineInsideAltarText:
if DEF(_LOCALE_FR)
	text "Merci d'être"
	line "respectueux"
	cont "en ces lieux."
	done
else
	text "Please show honor"
	line "and respect while"
	cont "visiting."
	done
endc
