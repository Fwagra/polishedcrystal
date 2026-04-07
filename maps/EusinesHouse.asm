EusinesHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CELADON_CITY, 14
	warp_event  3,  7, CELADON_CITY, 14

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_EUSINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonEusine, EVENT_EUSINES_HOUSE_EUSINE
	object_event  5,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, EusinesHouseGrampsScript, -1

	object_const_def
	const EUSINESHOUSE_EUSINE

CeladonEusine:
	faceplayer
	opentext
	writetext CeladonEusineText1
	promptbutton
	special SpecialBeastsCheck
	iftruefwd .HoOh
	writetext EusineNoBeastsText
	waitbutton
	closetext
	checkflag ENGINE_PLAYER_CAUGHT_RAIKOU
	iftruefwd .OwnRaikou
	showtext EusineShowsRaikouText
	reanchormap
	pokepic RAIKOU
	cry RAIKOU
	waitbutton
	closepokepic
	setmonval RAIKOU
	special SpecialSeenMon
.OwnRaikou
	checkflag ENGINE_PLAYER_CAUGHT_ENTEI
	iftruefwd .OwnEntei
	showtext EusineShowsEnteiText
	reanchormap
	pokepic ENTEI
	cry ENTEI
	waitbutton
	closepokepic
	setmonval ENTEI
	special SpecialSeenMon
.OwnEntei
	checkflag ENGINE_PLAYER_CAUGHT_SUICUNE
	iftruefwd .OwnSuicune
	showtext EusineShowsSuicuneText
	reanchormap
	pokepic SUICUNE
	cry SUICUNE
	waitbutton
	closepokepic
	setmonval SUICUNE
	special SpecialSeenMon
.OwnSuicune
	jumptext EusineQuestHintText

.HoOh:
	writetext EusineLeavesCeladonText
	waitbutton
	closetext
	readvar VAR_FACING
	ifnotequal UP, .PathClear
	applymovement PLAYER, .PlayerStepsAsideMovement
.PathClear:
	applymovement EUSINESHOUSE_EUSINE, .EusineLeavesMovement
	disappear EUSINESHOUSE_EUSINE
	playsound SFX_EXIT_BUILDING
	waitsfx
	end

.PlayerStepsAsideMovement:
	step_left
	turn_head_right
	step_end

.EusineLeavesMovement:
	step_down
	step_down
	step_down
	step_down
	step_end

EusinesHouseGrampsScript:
	checkevent EVENT_EUSINES_HOUSE_EUSINE
	iffalse_jumptextfaceplayer EusinesHouseGrampsGrandsonHomeText
	checkevent EVENT_FOUGHT_SUICUNE
	iffalse_jumptextfaceplayer EusinesHouseGrampsEusineSearchingForSuicuneText
	checkevent EVENT_DECO_ABRA_DOLL
	iftrue_jumptextfaceplayer EusinesHouseGrampsEusineTravelingWorldText
	checkevent EVENT_FOUGHT_HO_OH
	iftruefwd .AfterHoOhFight
	jumptextfaceplayer EusinesHouseGrampsEusineSearchingForHoOhText

.AfterHoOhFight:
	faceplayer
	opentext
	writetext EusinesHouseGrampsThankYouGiftText
	waitbutton
	writetext ReceivedAbraDollText
	playsound SFX_ITEM
	pause 60
	waitbutton
	writetext AbraDollSentHomeText
	setevent EVENT_DECO_ABRA_DOLL
	waitbutton
	closetext
	end

ReceivedAbraDollText:
	text "<PLAYER> received"
	line "Abra Doll."
	done

AbraDollSentHomeText:
	text "Abra Doll"
	line "was sent home."
	done

CeladonEusineText1:
if DEF(_LOCALE_FR)
	text "EUSINE: Bonjour!"
	line "Je suis de retour"
	line "dans ma ville"
	line "natale. Ca faisait"
	line "bien longtemps."
	done
else
	text "Eusine: Hi!"

	para "I'm back visiting"
	line "my hometown."

	para "It's been quite a"
	line "while."
	done
endc

EusineLeavesCeladonText:
if DEF(_LOCALE_FR)
	text "<PLAYER>, es-tu au"
	line "courant? On"
	line "raconte qu'un #MON"
	line "aux cou- leurs de"
	line "l'arc- en-ciel est"
	line "apparu à la TOUR"
	line "FERRAILLE. Je"
	line "viens de soi- gner"
	line "mon équipe. Je"
	line "retourne à"
	line "ROSALIA. A très"
	line "bientôt, <PLAYER>!"
	done
else
	text "<PLAYER>, have you"
	line "heard?"

	para "There have been"
	line "fresh rumors of a"

	para "rainbow-colored"
	line "#mon appearing"
	cont "at Bell Tower."

	para "I've just had my"
	line "party healed, so"

	para "now I'm headed to"
	line "Ecruteak."

	para "I'll be seeing"
	line "you, <PLAYER>!"
	done
endc

EusineNoBeastsText:
if DEF(_LOCALE_FR)
	text "Au fait, <PLAYER>."
	line "As-tu capturé les"

	para "#MON légendaires?"
	line "………………"

	para "Bon…"

	para "Tiens, mes notes"
	line "de recherche."
	done
else
	text "Oh, by the way,"
	line "<PLAYER>."

	para "Have you caught"
	line "the legendary"
	cont "beast #mon?"

	para "………………"

	para "OK…"

	para "Let me give you"
	line "my research notes."
	done
endc

EusineShowsRaikouText:
	text "This is Raikou:"
	done

EusineShowsEnteiText:
	text "This is Entei:"
	done

EusineShowsSuicuneText:
	text "This, of course,"
	line "is Suicune:"
	done

EusineQuestHintText:
if DEF(_LOCALE_FR)
	text "Au fait, <PLAYER>."
	line "As-tu attrapé les"
	line "#MON légendai- res"
	line "RAIKOU et ENTEI?"
	line "…… …… ……"
	line "D'accord… Si tu en"
	line "attrapes un,"
	line "préviens-moi. Je"
	line "compte sur toi,"
	line "<PLAYER>!"
	done
else
	text "If you catch even"
	line "one, I hope that"
	cont "you'll inform me."

	para "I'm counting on"
	line "you, <PLAYER>!"
	done
endc

EusinesHouseGrampsGrandsonHomeText:
	text "My grandson came"
	line "home!"
	cont "I'm overjoyed!"
	done

EusinesHouseGrampsEusineSearchingForSuicuneText:
if DEF(_LOCALE_FR)
	text "Mon petit-fils"
	line "EUSINE est à"
	cont "JOHTO,"

	para "il cherche SUICUNE"
	line "partout."

	para "Je lui ai tout"
	line "appris sur les"

	para "#MON légendaires!"
	done
else
	text "My grandson Eusine"
	line "is in Johto,"

	para "searching far and"
	line "wide for Suicune."

	para "I taught him all"
	line "about the legend-"
	cont "ary #mon!"
	done
endc

EusinesHouseGrampsEusineSearchingForHoOhText:
	text "My grandson Eusine"
	line "is on another"
	cont "adventure."

	para "He left to visit"
	line "Bell Tower in"
	cont "Ecruteak City."
	done

EusinesHouseGrampsThankYouGiftText:
	text "My grandson Eusine"
	line "called."

	para "He's doing well."
	line "I'm happy for him!"

	para "Thank you for"
	line "checking on me,"
	cont "<PLAYER>!"

	para "Please take this"
	line "to show my"
	cont "appreciation."
	done

EusinesHouseGrampsEusineTravelingWorldText:
	text "Eusine is out"
	line "traveling the"
	cont "world."

	para "I'm so proud of"
	line "him!"
	done
