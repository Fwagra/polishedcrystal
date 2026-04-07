RuinsOfAlphResearchCenter_MapScriptHeader:
	def_scene_scripts
	scene_script RuinsofAlphResearchCenterTrigger0
	scene_script RuinsofAlphResearchCenterTrigger1

	def_callbacks
	callback MAPCALLBACK_OBJECTS, RuinsOfAlphResearchCenterScientistCallback

	def_warp_events
	warp_event  2,  7, RUINS_OF_ALPH_OUTSIDE, 6
	warp_event  3,  7, RUINS_OF_ALPH_OUTSIDE, 6

	def_coord_events

	def_bg_events
	bg_event  6,  5, BGEVENT_JUMPTEXT, RuinsOfAlphResearchCenterAcademicBooksText
	bg_event  3,  4, BGEVENT_READ, MapRuinsofAlphResearchCenterSignpost1Script
	bg_event  7,  1, BGEVENT_JUMPTEXT, RuinsOfAlphResearchCenterPrinterText_DoesntWork
	bg_event  5,  0, BGEVENT_JUMPTEXT, RuinsOfAlphResearchCenterProfSilktreePhotoText

	def_object_events
	object_event  4,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist1Script, -1
	object_event  5,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 2, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist2Script, -1
	object_event  2,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist3Script, EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST

	object_const_def
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST1
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST2
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST3

RuinsofAlphResearchCenterTrigger1:
	sdefer RuinsOfAlphResearchCenterGetUnownDexScript
RuinsofAlphResearchCenterTrigger0:
	end

RuinsOfAlphResearchCenterScientistCallback:
	checkscene
	ifequalfwd $1, .ShowScientist
	endcallback

.ShowScientist:
	moveobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, 3, 7
	appear RUINSOFALPHRESEARCHCENTER_SCIENTIST3
	endcallback

RuinsOfAlphResearchCenterGetUnownDexScript:
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterApproachesComputerMovement
	playsound SFX_BOOT_PC
	pause 60
	playsound SFX_SWITCH_POKEMON
	pause 30
	playsound SFX_TALLY
	pause 30
	playsound SFX_TRANSACTION
	pause 30
	turnobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, DOWN
	showtext RuinsOfAlphResearchCenterModifiedDexText
	applyonemovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, step_down
	opentext
	writetext RuinsOfAlphResearchCenterDexUpgradedText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_UNOWN_DEX
	writetext RuinsOfAlphResearchCenterScientist3Text
	waitbutton
	closetext
	applyonemovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, step_up
	setscene $0
	special RestartMapMusic
	end

RuinsOfAlphResearchCenterScientist3Script:
	faceplayer
	opentext
	checkevent EVENT_RUINS_OF_ALPH_CLIMAX_DONE
	iftruefwd .Conclusion
	readvar VAR_UNOWNCOUNT
	ifequalfwd NUM_UNOWN, .PrinterAvailable
	jumpopenedtext RuinsOfAlphResearchCenterScientist3Text

.Conclusion:
	jumpopenedtext RuinsofAlphResearchCenterScientistConclusionText

.PrinterAvailable:
	writetext RuinsOfAlphResearchCenterScientist3_PrinterAvailable
	promptbutton
	setevent EVENT_DECO_UNOWN_DOLL
	writetext GotUnownDollText
	playsound SFX_ITEM
	pause 60
	waitbutton
	writetext UnownDollSentText
	promptbutton
	writetext RuinsofAlphResearchCenterScientistRewardText
	promptbutton
	writetext RuinsofAlphResearchCenterScientistInterruptedText
	pause 30
	closetext
	pause 15
	playsound SFX_EMBER
	earthquake 60
	waitsfx
	setevent EVENT_DOOR_OPENED_IN_RUINS_OF_ALPH
	showemote EMOTE_SHOCK, PLAYER, 15
	showemote EMOTE_SHOCK, RUINSOFALPHRESEARCHCENTER_SCIENTIST3, 15
	showemote EMOTE_SHOCK, RUINSOFALPHRESEARCHCENTER_SCIENTIST1, 15
	showemote EMOTE_SHOCK, RUINSOFALPHRESEARCHCENTER_SCIENTIST2, 15
	showtext RuinsofAlphResearchCenterScientistShockedText
	readvar VAR_FACING
	ifequalfwd UP, .GoAround
	follow RUINSOFALPHRESEARCHCENTER_SCIENTIST3, PLAYER
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsofAlphResearchCenterLeave2MovementData
	stopfollow
	sjumpfwd .Continue
.GoAround:
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsofAlphResearchCenterScientistStepAsideMovementData
	follow RUINSOFALPHRESEARCHCENTER_SCIENTIST3, PLAYER
	applyonemovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, step_down
	stopfollow
.Continue:
	playsound SFX_EXIT_BUILDING
	disappear RUINSOFALPHRESEARCHCENTER_SCIENTIST3
	applyonemovement PLAYER, step_down
	playsound SFX_EXIT_BUILDING
	disappear PLAYER
	special FadeOutPalettes
	setevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	clearevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	clearevent EVENT_RUINS_OF_ALPH_OUTSIDE_SCIENTIST_CLIMAX
	setevent EVENT_DO_RUINS_OF_ALPH_CLIMAX
	pause 15
	warpfacing DOWN, RUINS_OF_ALPH_OUTSIDE, 19, 18
	end

RuinsofAlphResearchCenterScientistStepAsideMovementData:
	step_right
	step_down
	step_end

RuinsofAlphResearchCenterLeave2MovementData:
	step_down
	step_down
	step_end

RuinsOfAlphResearchCenterScientist1Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifequalfwd NUM_UNOWN, .GotAllUnown
	checkflag ENGINE_UNOWN_DEX
	iftruefwd .GotUnownDex
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftruefwd .UnownAppeared
	jumpopenedtext RuinsOfAlphResearchCenterScientist1Text

.UnownAppeared:
	jumpopenedtext RuinsOfAlphResearchCenterScientist1Text_UnownAppeared

.GotUnownDex:
	jumpopenedtext RuinsOfAlphResearchCenterScientist1Text_GotUnownDex

.GotAllUnown:
	writetext RuinsOfAlphResearchCenterScientist1Text_GotAllUnown
	waitbutton
	closetext
	clearevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	end

RuinsOfAlphResearchCenterScientist2Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifgreater 3, .GotAllUnown
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftruefwd .UnownAppeared
	jumpopenedtext RuinsOfAlphResearchCenterScientist2Text

.UnownAppeared:
	jumpopenedtext RuinsOfAlphResearchCenterScientist2Text_UnownAppeared

.GotAllUnown:
	readvar VAR_UNOWNCOUNT
	ifequalfwd NUM_UNOWN, .ResearchComplete
	readvar VAR_UNOWNCOUNT
	ifgreater 10, .ResearchOngoing
	jumpopenedtext RuinsOfAlphResearchCenterScientist2Text_GotAllUnown

.ResearchComplete:
	writetext RuinsOfAlphResearchCenterScientist2Text_RadioWaves
	waitbutton
	closetext
	clearevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	end

.ResearchOngoing:
	jumpopenedtext RuinsOfAlphResearchCenterScientist2Text_FocusedOurStudies

MapRuinsofAlphResearchCenterSignpost1Script:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iffalsefwd .SkipChecking
	checkevent EVENT_DECO_UNOWN_DOLL
	iftruefwd .SkipChecking
	jumpopenedtext RuinsOfAlphResearchCenterComputerText

.SkipChecking:
	readvar VAR_UNOWNCOUNT
	jumpopenedtext RuinsOfAlphResearchCenterComputerText_GotAllUnown

RuinsOfAlphResearchCenterApproachesComputerMovement:
	step_up
	step_up
	step_left
	turn_head_up
	step_end

RuinsOfAlphResearchCenterModifiedDexText:
	text "Done!"

	para "I modified your"
	line "#dex."

	para "I added an"
	line "optional #dex"

	para "to store Unown"
	line "data."

	para "It records them"
	line "in alphabetical"
	cont "order."
	done

RuinsOfAlphResearchCenterDexUpgradedText:
if DEF(_LOCALE_FR)
	text "Le #DEX de"
	line "<PLAYER> est"
	line "amélioré!"
	done
else
	text "<PLAYER>'s #dex"
	line "was upgraded."
	done
endc

RuinsOfAlphResearchCenterScientist3Text:
if DEF(_LOCALE_FR)
	text "Les ZARBI capturés"
	line "seront tous enre-"
	line "gistrés."
	line "Découvrez-les"
	line "tous!"
	done
else
	text "The Unown you"
	line "catch will all be"
	cont "recorded."

	para "Check to see how"
	line "many kinds exist."

	para "You're doing a"
	line "favor for us, so"

	para "I'll give you some-"
	line "thing nice if you"
	cont "find all of them."
	done
endc

RuinsOfAlphResearchCenterScientist3_PrinterAvailable:
	text "You caught all the"
	line "Unown variations?"

	para "That's a great"
	line "achievement!"

	para "You've been very"
	line "helpful to our"
	cont "research."

	para "Let me give you"
	line "this."
	done

GotUnownDollText:
	text "<PLAYER> received"
	line "Unown Doll."
	done

UnownDollSentText:
	text "Unown Doll"
	line "was sent home."
	done

RuinsofAlphResearchCenterScientistRewardText:
	text "I designed that"
	line "doll myself!"
	done

RuinsofAlphResearchCenterScientistInterruptedText:
	text "You can--"
	done

RuinsofAlphResearchCenterScientistShockedText:
	text "What was THAT?!"
	done

RuinsofAlphResearchCenterScientistConclusionText:
	text "We're going to"
	line "gradually study"

	para "the chamber that"
	line "opened up."

	para "We have to take"
	line "care not to"
	cont "disturb the site."
	done

RuinsOfAlphResearchCenterScientist1Text:
if DEF(_LOCALE_FR)
	text "Les RUINES sont"
	line "vieilles d'environ"
	line "1500 ans. Personne"
	line "ne sait qui a pu"
	line "les construire… Ni"
	line "dans quel but."
	done
else
	text "The ruins are"
	line "about 1,500 years"
	cont "old."

	para "But it's not known"
	line "why they were"
	cont "built--or by whom."
	done
endc

RuinsOfAlphResearchCenterScientist1Text_GotUnownDex:
if DEF(_LOCALE_FR)
	text "Combien y a-t-il"
	line "de #MON diffé-"
	line "rents dans les"
	line "RUINES?"
	done
else
	text "I wonder how many"
	line "kinds of #mon"
	cont "are in the ruins?"
	done
endc

RuinsOfAlphResearchCenterScientist1Text_UnownAppeared:
if DEF(_LOCALE_FR)
	text "Des #MON sont"
	line "apparus dans les"
	line "RUINES? Bah ça"
	line "pour une nouvelle!"
	line "Il faut tout de"
	line "suite y aller!"
	done
else
	text "#mon appeared"
	line "in the ruins?"

	para "That's incredible"
	line "news!"

	para "We'll need to"
	line "investigate this."
	done
endc

RuinsOfAlphResearchCenterScientist1Text_GotAllUnown:
if DEF(_LOCALE_FR)
	text "Grâce à ton aide,"
	line "notre enquête sur"
	line "les RUINES donne"
	line "enfin des"
	line "résultats. Les"
	line "RUINES sem- blent"
	line "être un re- fuge"
	line "pour les #MON."
	done
else
	text "Our investigation,"
	line "with your help, is"

	para "giving us insight"
	line "into the ruins."

	para "The ruins appear"
	line "to have been built"

	para "as a habitat for"
	line "#mon."
	done
endc

RuinsOfAlphResearchCenterScientist2Text:
if DEF(_LOCALE_FR)
	text "Il y a des figures"
	line "étranges sur les"
	line "murs des RUINES."
	line "Elles doivent être"
	line "la clé du mystère"
	line "des RUINES."
	done
else
	text "There are odd pat-"
	line "terns drawn on the"

	para "walls of the"
	line "ruins."

	para "They must be the"
	line "keys for unravel-"
	cont "ing the mystery"
	cont "of the ruins."
	done
endc

RuinsOfAlphResearchCenterScientist2Text_UnownAppeared:
if DEF(_LOCALE_FR)
	text "Les étranges #-"
	line "MON des RUINES?"
	line "Ils semblent être"
	line "proches des figu-"
	line "res sur les murs."
	line "Hmmm… Cela veut"
	line "dire qu'il y en a"
	line "un grand nombre…"
	done
else
	text "The strange #-"
	line "mon you saw in the"
	cont "ruins?"

	para "They appear to be"
	line "very much like the"

	para "drawings on the"
	line "walls there."

	para "Hmm…"

	para "That must mean"
	line "there are many"
	cont "kinds of them…"
	done
endc

RuinsOfAlphResearchCenterScientist2Text_FocusedOurStudies:
if DEF(_LOCALE_FR)
	text "Nous pensons que"
	line "quelque chose a"
	line "fait apparaître"
	line "les signes dans"
	line "les RUINES. Nous"
	line "nous penchons sur"
	line "la question."
	done
else
	text "We think something"
	line "caused the cryptic"

	para "patterns to appear"
	line "in the ruins."

	para "We've focused our"
	line "studies on that."
	done
endc

RuinsOfAlphResearchCenterScientist2Text_RadioWaves:
if DEF(_LOCALE_FR)
	text "D'après mes"
	line "recherches… Les"
	line "étranges figu- res"
	line "sont apparues"
	line "lorsque le CENTRE"
	line "#COM a été"
	line "construit. Les"
	line "ondes radio"
	line "doivent avoir une"
	line "influence…"
	done
else
	text "According to my"
	line "research…"

	para "Those mysterious"
	line "patterns appeared"

	para "when the #Com"
	line "Center was built."

	para "It must mean that"
	line "radio waves have"

	para "some sort of a"
	line "link…"
	done
endc

RuinsOfAlphResearchCenterScientist2Text_GotAllUnown:
if DEF(_LOCALE_FR)
	text "Comment ces drôles"
	line "de figures ont pu"
	line "apparaître? C'est"
	line "dingue! J'y"
	line "comprends rien…"
	done
else
	text "Why did those"
	line "ancient patterns"

	para "appear on the wall"
	line "now?"

	para "The mystery"
	line "deepens…"
	done
endc

RuinsOfAlphResearchCenterComputerText:
if DEF(_LOCALE_FR)
	text "RUINES D'ALPHA"
	line "Exploration Année"
	line "10"
	done
else
	text "Ruins of Alph"

	para "Exploration"
	line "Year 10"
	done
endc

RuinsOfAlphResearchCenterComputerText_GotAllUnown:
if DEF(_LOCALE_FR)
	text "#MON Mystère Nom:"
	line "ZARBI Un total de"
	line "26 types"
	line "découverts."
	done
else
	text "Mystery #mon"
	line "Name: Unown"

	para "A total of "
	text_decimal hScriptVar, 1, 2
	line "kinds found."
	done
endc

RuinsOfAlphResearchCenterPrinterText_DoesntWork:
	text "It's a printer."
	line "The display says"
	cont "“PC LOAD LETTER”."

	para "…What does that"
	line "mean?"
	done

RuinsOfAlphResearchCenterProfSilktreePhotoText:
if DEF(_LOCALE_FR)
	text "C'est une photo du"
	line "fondateur du"
	line "CENTRE de RECHER-"
	line "CHE: le PROF."
	line "LASOIE."
	done
else
	text "It's a photo of"
	line "the Research"

	para "Center's founder,"
	line "Prof.Silktree."
	done
endc

RuinsOfAlphResearchCenterAcademicBooksText:
if DEF(_LOCALE_FR)
	text "Il y a beaucoup de"
	line "livres de science."
	line "Anciennes ruines."
	line "Antiques mystères."
	done
else
	text "There are many"
	line "academic books."

	para "Ancient Ruins…"
	line "Mysteries of the"
	cont "Ancients…"
	done
endc
