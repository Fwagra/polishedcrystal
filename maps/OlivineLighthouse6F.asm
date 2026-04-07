OlivineLighthouse6F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  9, 15, OLIVINE_LIGHTHOUSE_5F, 1
	warp_event 16,  5, OLIVINE_LIGHTHOUSE_5F, 6
	warp_event 17,  5, OLIVINE_LIGHTHOUSE_5F, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  8, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineLighthouseJasmine, EVENT_OLIVINE_LIGHTHOUSE_JASMINE
	object_event  9,  8, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, AMPHAROS, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, NO_FORM, OlivineLighthouseAmphy, -1
	itemball_event  3,  4, WIDE_LENS, 1, EVENT_OLIVINE_LIGHTHOUSE_6F_WIDE_LENS

	object_const_def
	const OLIVINELIGHTHOUSE6F_JASMINE
	const OLIVINELIGHTHOUSE6F_AMPHAROS

OlivineLighthouseJasmine:
	faceplayer
	opentext
	checkkeyitem SECRETPOTION
	iftruefwd .BroughtSecretpotion
	checkevent EVENT_JASMINE_EXPLAINED_AMPHYS_SICKNESS
	iftruefwd .ExplainedSickness
	writetext JasmineCianwoodPharmacyText
	promptbutton
	setevent EVENT_JASMINE_EXPLAINED_AMPHYS_SICKNESS
.ExplainedSickness:
	jumpopenedtext JasmineGetSomeMedicineText

.BroughtSecretpotion:
	writetext JasmineCureAmphyText
	yesorno
	iffalsefwd .Refused
	writetext PlayerHandedSecretpotionText
	promptbutton
	takekeyitem SECRETPOTION
	writetext JasmineDontBeOffendedText
	waitbutton
	closetext
	turnobject OLIVINELIGHTHOUSE6F_JASMINE, RIGHT
	pause 15
	opentext
	playmusic MUSIC_HEAL
	writetext JasmineAmphyHowAreYouFeelingText
	pause 60
	promptbutton
	closetext
	special RestartMapMusic
	cry AMPHAROS
	special FadeOutPalettes
	special LoadMapPalettes
	pause 10
	special FadeInPalettes_EnableDynNoApply
	showtext AmphyPaluPaluluText
	showemote EMOTE_BOLT, OLIVINELIGHTHOUSE6F_AMPHAROS, 15
	setlasttalked OLIVINELIGHTHOUSE6F_JASMINE
	showtextfaceplayer JasmineThankYouText
	setevent EVENT_JASMINE_RETURNED_TO_GYM
	clearevent EVENT_OLIVINE_GYM_JASMINE
	readvar VAR_FACING
	ifequalfwd DOWN, .FacingDown
	ifequalfwd RIGHT, .FacingRight
	applymovement OLIVINELIGHTHOUSE6F_JASMINE, OlivineLighthouseJasmineLeavesUpMovement
	disappear OLIVINELIGHTHOUSE6F_JASMINE
	end

.FacingDown:
	applymovement OLIVINELIGHTHOUSE6F_JASMINE, OlivineLighthouseJasmineLeavesDownMovement
	disappear OLIVINELIGHTHOUSE6F_JASMINE
	end

.FacingRight:
	applymovement OLIVINELIGHTHOUSE6F_JASMINE, OlivineLighthouseJasmineLeavesRightMovement
	disappear OLIVINELIGHTHOUSE6F_JASMINE
	end

.Refused:
	writetext JasmineISeeText
	waitbutton
	closetext
	turnobject OLIVINELIGHTHOUSE6F_JASMINE, RIGHT
	pause 15
	jumptext JasmineAmphyHangOnText

OlivineLighthouseAmphy:
	checkevent EVENT_JASMINE_RETURNED_TO_GYM
	iftruefwd .HealthyNow
	faceplayer
	opentext
	writetext AmphyPalPalooText
	setmonval AMPHAROS
	special PlaySlowCry
	promptbutton
	jumpopenedtext AmphyBreathingLaboredText

.HealthyNow:
	showcrytext AmphyPaluPaluluText, AMPHAROS
	special FadeOutPalettes
	special LoadMapPalettes
	special FadeInPalettes_EnableDynNoApply
	special FadeOutPalettes
	special LoadMapPalettes
	special FadeInPalettes_EnableDynNoApply
	end

OlivineLighthouseJasmineLeavesUpMovement:
	slow_step_up
	slow_step_up
	slow_step_right
	slow_step_up
	slow_step_up
	step_sleep_8
	step_sleep_8
	step_end

OlivineLighthouseJasmineLeavesDownMovement:
	slow_step_down
	slow_step_right
	slow_step_right
	slow_step_right
	slow_step_up
	slow_step_right
	slow_step_right
	slow_step_right
	step_end

OlivineLighthouseJasmineLeavesRightMovement:
	slow_step_up
	slow_step_up
	slow_step_right
	slow_step_up
	slow_step_up
	slow_step_up
	step_sleep_8
	step_end

JasmineCianwoodPharmacyText:
if DEF(_LOCALE_FR)
	text "JASMINE: … Ce #MON"
	line "gardait la mer"
	line "éclairée toute la"
	line "nuit. …Mais il est"
	line "tombé malade… Il"
	line "manque d'air… On"
	line "dit qu'il y a une"
	line "bonne PHARMA- CIE"
	line "à IRISIA… Mais"
	line "c'est à l'au- tre"
	line "bout des mers! Et"
	line "je dois m'occu-"
	line "per de PHARY…"
	done
else
	text "Jasmine: …This"
	line "#mon always"

	para "kept the sea lit"
	line "at night."

	para "…But it suddenly"
	line "got sick… It's"
	cont "gasping for air…"

	para "…I understand"
	line "that there is a"

	para "wonderful Pharmacy"
	line "in Cianwood…"

	para "But that's across"
	line "the sea…"

	para "And I can't leave"
	line "Amphy unattended…"
	done
endc

JasmineGetSomeMedicineText:
if DEF(_LOCALE_FR)
	text "…Peux-tu aller"
	line "chercher des médi-"
	line "caments? Pitié?"
	done
else
	text "…May I ask you to"
	line "get some medicine"
	cont "for me? Please?"
	done
endc

JasmineCureAmphyText:
if DEF(_LOCALE_FR)
	text "JASMINE: …Ce mé-"
	line "dicament va-t-il"
	line "soigner PHARY?"
	done
else
	text "Jasmine: …Will"
	line "that medicine cure"
	cont "Amphy?"
	done
endc

PlayerHandedSecretpotionText:
if DEF(_LOCALE_FR)
	text "<PLAYER> donne la"
	line "POTIONSECRET à"
	line "JASMINE."
	done
else
	text "<PLAYER> handed the"
	line "SecretPotion to"
	cont "Jasmine."
	done
endc

JasmineDontBeOffendedText:
if DEF(_LOCALE_FR)
	text "JASMINE: Heu… Le"
	line "prends pas mal"
	line "mais… PHARY"
	line "n'acceptera que ce"
	line "que JE lui donne…"
	done
else
	text "Jasmine: …Um,"
	line "please don't be"
	cont "offended…"

	para "…Amphy will not"
	line "take anything from"
	cont "anyone but me…"
	done
endc

JasmineAmphyHowAreYouFeelingText:
if DEF(_LOCALE_FR)
	text "JASMINE: … PHARY,"
	line "comment te"
	line "sens-tu?"
	done
else
	text "Jasmine: …"

	para "Amphy, how are you"
	line "feeling?"
	done
endc

JasmineThankYouText:
if DEF(_LOCALE_FR)
	text "JASMINE: Oh, je"
	line "suis si soulagée!"
	line "C'est… C'est"
	line "fantastique… Merci"
	line "beaucoup, mon ami."
	line "Je vais retourner"
	line "à l'ARENE…"
	done
else
	text "Jasmine: …Oh, I'm"
	line "so relieved…"

	para "This is just so"
	line "wonderful…"

	para "Thank you so very,"
	line "very much."

	para "…I will return to"
	line "the Gym…"
	done
endc

JasmineISeeText:
if DEF(_LOCALE_FR)
	text "JASMINE: Je vois."
	done
else
	text "Jasmine: …I see…"
	done
endc

JasmineAmphyHangOnText:
if DEF(_LOCALE_FR)
	text "Courage, PHARY!"
	done
else
	text "…Amphy, hang on!"
	done
endc

AmphyPalPalooText:
if DEF(_LOCALE_FR)
	text "PHARY: … …Pha!"
	line "Phaaa…"
	done
else
	text "Amphy: …"
	line "…Pa… paloo…"
	done
endc

AmphyBreathingLaboredText:
if DEF(_LOCALE_FR)
	text "Il respire avec"
	line "difficulté…"
	done
else
	text "Its breathing is"
	line "terribly labored…"
	done
endc

AmphyPaluPaluluText:
if DEF(_LOCALE_FR)
	text "PHARY: Phapha!"
	line "Phaaaaaa!"
	done
else
	text "Amphy: Palu!"
	line "Palulu!"
	done
endc
