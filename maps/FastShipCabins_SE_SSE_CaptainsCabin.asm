FastShipCabins_SE_SSE_CaptainsCabin_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, FAST_SHIP_1F, 8
	warp_event  3,  7, FAST_SHIP_1F, 8
	warp_event  2, 19, FAST_SHIP_1F, 9
	warp_event  3, 19, FAST_SHIP_1F, 9
	warp_event  2, 33, FAST_SHIP_1F, 10
	warp_event  3, 33, FAST_SHIP_1F, 10

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2, 17, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, SSAquaGrandpa, EVENT_FAST_SHIP_CABINS_SE_SSE_GENTLEMAN
	object_event  3, 17, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, SSAquaGranddaughterHadFunText, EVENT_FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN_TWIN_1
	object_event  2, 25, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SSAquaGranddaughterBefore, EVENT_FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN_TWIN_2
	object_event  3, 25, SPRITE_CAPTAIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAquaCaptain, -1
	object_event  5,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerPokefanmColin, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event  2,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerTwinsMegandpeg1, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event  3,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerTwinsMegandpeg2, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event  5,  5, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerPsychicRodney, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerPokefanmJeremy, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event  5,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerPokefanfGeorgia, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event  1, 15, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSupernerdShawn, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND

	object_const_def
	const FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_GENTLEMAN
	const FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN1
	const FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN2

SSAquaCaptain:
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftrue_jumptextfaceplayer SSAquaCaptainHowDoYouLikeText
	jumptextfaceplayer SSAquaCaptainExhaustingText

SSAquaGranddaughterBefore:
	turnobject FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN2, RIGHT
	showtext SSAquaGranddaughterCaptainPlayWithMeText
	showtextfaceplayer SSAquaGranddaughterHasToFindGrandpaText
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	callasm DisableDynPalUpdates
	disappear FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN2
	applymovement PLAYER, SSAquaCaptainsCabinWarpsToGrandpasCabinMovement
	moveobject FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN1, 3, 19
	appear FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN1
	turnobject PLAYER, UP
	turnobject FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN1, UP
	loadmem wObject1Palette, 1
	callasm SetBlackObjectPals
	turnobject FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_GENTLEMAN, RIGHT
	callasm FadeInPalettes_EnableDynNoApply
	turnobject FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_GENTLEMAN, DOWN
	showemote EMOTE_SHOCK, FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_GENTLEMAN, 15
	applymovement FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN1, SSAquaGranddaughterEntersCabinMovement
	turnobject FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_GENTLEMAN, RIGHT
	showtext SSAquaGranddaughterWasPlayingText
	turnobject FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_TWIN2, DOWN
	applyonemovement FASTSHIPCABINS_SE_SSE_CAPTAINSCABIN_GENTLEMAN, step_down
	opentext
	writetext SSAquaEntertainedGranddaughterText
	promptbutton
	setevent EVENT_VERMILION_PORT_SAILOR_AT_GANGWAY
	setmapscene FAST_SHIP_1F, $0
	sjumpfwd SSAquaMachoBraceAndDocking

SSAquaGrandpa:
	checkevent EVENT_GOT_MACHO_BRACE_FROM_GRANDPA_ON_SS_AQUA
	iftrue_jumptextfaceplayer SSAquaGrandpaTravellingText
	faceplayer
	opentext
	checkevent EVENT_FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN_TWIN_2
	iftruefwd SSAquaFoundGranddaughter
	writetext SSAquaCantFindGranddaughterText
	waitbutton
	closetext
	setmapscene FAST_SHIP_1F, $0
	end

SSAquaMachoBraceAndDocking:
	writetext SSAquaGrandpaHaveThisText
	promptbutton
	verbosegiveitem MACHO_BRACE
	iffalsefwd .FailedMachoBrace
	setevent EVENT_GOT_MACHO_BRACE_FROM_GRANDPA_ON_SS_AQUA
	sjumpfwd .ContinueDocking
.FailedMachoBrace:
	writetext .NoRoomForMachoBrace
	waitbutton
.ContinueDocking:
	closetext
	waitsfx
	playsound SFX_ELEVATOR_END
	pause 30
	opentext
	writetext SSAquaHasArrivedVermilionText
	waitbutton
	setevent EVENT_FAST_SHIP_HAS_ARRIVED
	setevent EVENT_FAST_SHIP_FOUND_GIRL
	endtext

.NoRoomForMachoBrace:
	text "But you can't carry"
	line "it! I'll keep it"
	cont "for another trip."
	done

SSAquaFoundGranddaughter:
	writetext SSAquaGrandpaHaveThisText
	promptbutton
	verbosegiveitem MACHO_BRACE
	iffalse_endtext
	setevent EVENT_GOT_MACHO_BRACE_FROM_GRANDPA_ON_SS_AQUA
	endtext

GenericTrainerPokefanmColin:
	generictrainer POKEFANM, COLIN, EVENT_BEAT_POKEFANM_COLIN, PokefanmColinSeenText, PokefanmColinBeatenText

if DEF(_LOCALE_FR)
	text "Tu voyages seul?"
	line "Et ta maman elle"
	line "s'inquiète pas?"
	done
else
	text "You're traveling"
	line "all alone?"

	para "Isn't your mom"
	line "worried?"
	done
endc

GenericTrainerTwinsMegandpeg1:
	generictrainer TWINS, MEGANDPEG1, EVENT_BEAT_TWINS_MEG_AND_PEG, TwinsMegandpeg1SeenText, TwinsMegandpeg1BeatenText

if DEF(_LOCALE_FR)
	text "On est des filles!"
	line "Pas des bébés!"
	line "Compris?"
	done
else
	text "Baby is a rude"
	line "name to call us"
	cont "girls!"
	done
endc

GenericTrainerTwinsMegandpeg2:
	generictrainer TWINS, MEGANDPEG2, EVENT_BEAT_TWINS_MEG_AND_PEG, TwinsMegandpeg2SeenText, TwinsMegandpeg2BeatenText

if DEF(_LOCALE_FR)
	text "Les enfants sont"
	line "plus malins que"
	line "les adultes!"
	done
else
	text "Sometimes, kids"
	line "are smarter than"
	cont "grown-ups!"
	done
endc

GenericTrainerPsychicRodney:
	generictrainer PSYCHIC_T, RODNEY, EVENT_BEAT_PSYCHIC_RODNEY, PsychicRodneySeenText, PsychicRodneyBeatenText

if DEF(_LOCALE_FR)
	text "Je sais: tu peux"
	line "écouter la radio"
	line "de JOHTO sur le"
	line "BATEAU EXPRESS."
	done
else
	text "I get it. You can"
	line "hear Johto's radio"
	cont "on the Fast Ship."
	done
endc

GenericTrainerPokefanmJeremy:
	generictrainer POKEFANM, JEREMY, EVENT_BEAT_POKEFANM_JEREMY, PokefanmJeremySeenText, PokefanmJeremyBeatenText

if DEF(_LOCALE_FR)
	text "Je dois aller au"
	line "SALON #MON et les"
	line "toiletter!"
	done
else
	text "I must go to the"
	line "#mon Salon and"
	cont "fix them up nice!"
	done
endc

GenericTrainerPokefanfGeorgia:
	generictrainer POKEFANF, GEORGIA, EVENT_BEAT_POKEFANF_GEORGIA, PokefanfGeorgiaSeenText, PokefanfGeorgiaBeatenText

if DEF(_LOCALE_FR)
	text "Ah oui! Je dois"
	line "aller chercher mon"
	line "#MON à la PENSION!"
	done
else
	text "Oh, yes! I have to"
	line "get my #mon out"
	cont "of Day-Care!"
	done
endc

GenericTrainerSupernerdShawn:
	generictrainer SUPER_NERD, SHAWN, EVENT_BEAT_SUPER_NERD_SHAWN, SupernerdShawnSeenText, SupernerdShawnBeatenText

if DEF(_LOCALE_FR)
	text "Il faut utiliser"
	line "les bonnes BALLS"
	line "en fonction de la"
	line "situation."
	done
else
	text "You should use the"
	line "right Balls to fit"
	cont "the situation."
	done
endc

SSAquaCaptainsCabinWarpsToGrandpasCabinMovement:
	run_step_right
	run_step_up
	run_step_up
	run_step_up
	run_step_up
	run_step_up
	run_step_up
	step_end

SSAquaGranddaughterEntersCabinMovement:
	step_up
	step_up
	turn_head_left
	step_end

SSAquaCaptainExhaustingText:
if DEF(_LOCALE_FR)
	text "Fouiii! Merci"
	line "d'être venu."
	line "S'occuper de cette"
	line "petite fille est"
	line "crevant."
	done
else
	text "Whew! Thanks for"
	line "coming along."

	para "Keeping that lit-"
	line "tle girl amused"
	cont "was exhausting."
	done
endc

SSAquaCaptainHowDoYouLikeText:
if DEF(_LOCALE_FR)
	text "Tu aimes bien"
	line "l'AQUARIA? Il vole"
	line "sur les vagues…"
	done
else
	text "How do you like"
	line "S.S.Aqua's ride?"

	para "She practically"
	line "skates across the"
	cont "waves."
	done
endc

SSAquaCantFindGranddaughterText:
if DEF(_LOCALE_FR)
	text "Oh, bonjour… Je ne"
	line "trouve tou- jours"
	line "pas ma"
	line "petite-fille. Elle"
	line "peut être assez"
	line "soûlante, j'espère"
	line "qu'elle n'embête"
	line "personne."
	done
else
	text "Oh, hello…"

	para "I still can't find"
	line "my granddaughter."

	para "If she's on the"
	line "ship, that's OK."

	para "She's an energetic"
	line "child, so she may"

	para "be bugging some-"
	line "one. I'm worried…"
	done
endc

SSAquaEntertainedGranddaughterText:
if DEF(_LOCALE_FR)
	text "<PLAYER>? On m'a"
	line "dit que tu t'étais"
	line "occupé de ma"
	line "petite-fille. Je"
	line "tiens à t'en"
	line "remercier."
	done
else
	text "<PLAYER>, was it?"
	line "I heard you enter-"
	cont "tained my grand-"
	cont "daughter."

	para "I want to thank"
	line "you for that."
	done
endc

SSAquaGrandpaHaveThisText:
if DEF(_LOCALE_FR)
	text "Je tiens à ce que"
	line "tu acceptes ceci!"
	done
else
	text "I know! I'd like"
	line "you to have this!"
	done
endc

SSAquaGrandpaTravellingText:
if DEF(_LOCALE_FR)
	text "Nous voyageons"
	line "autour du monde."
	done
else
	text "We're traveling"
	line "around the world."
	done
endc

SSAquaGranddaughterCaptainPlayWithMeText:
if DEF(_LOCALE_FR)
	text "Hé CAPITAINE! Tu"
	line "joues avec moi?"
	line "Vazy steuplait!"
	line "Vazy m'sieur!"
	done
else
	text "Captain, play with"
	line "me, please?"

	para "I'm bored! I want"
	line "to play more!"
	done
endc

SSAquaGranddaughterHasToFindGrandpaText:
if DEF(_LOCALE_FR)
	text "Hé! Tu joues avec"
	line "moi? Allez! …Oh!"
	line "Pépé s'inquiète"
	line "pour moi? Je dois"
	line "y aller! Je dois"
	line "trouver mon pépé!"
	done
else
	text "Hi! Will you play"
	line "with me?"

	para "…Oh!"

	para "Grandpa's worried"
	line "about me?"

	para "I have to go!"

	para "I have to go find"
	line "Grandpa!"
	done
endc

SSAquaGranddaughterWasPlayingText:
if DEF(_LOCALE_FR)
	text "Me voilà pépé! Je"
	line "jouais avec le"
	line "CAPITAINE et cette"
	line "fille!"
	done
else
	text "Grandpa, here I"
	line "am! I was playing"

	para "with the Captain"
	line "and this big kid!"
	done
endc

SSAquaGranddaughterHadFunText:
if DEF(_LOCALE_FR)
	text "Je me suis super"
	line "amusée!"
	done
else
	text "I had lots of fun"
	line "playing!"
	done
endc

PokefanmColinSeenText:
if DEF(_LOCALE_FR)
	text "Toi! Veux-tu te"
	line "battre avec moi?"
	done
else
	text "Hey, kid! Want to"
	line "battle with me?"
	done
endc

PokefanmColinBeatenText:
if DEF(_LOCALE_FR)
	text "Qu'il est fort!"
	done
else
	text "You're strong!"
	done
endc

TwinsMegandpeg1SeenText:
if DEF(_LOCALE_FR)
	text "Tu me prends pour"
	line "un bébé? Ouiiiin!"
	done
else
	text "You think I'm a"
	line "baby?"
	cont "That's not fair!"
	done
endc

TwinsMegandpeg1BeatenText:
if DEF(_LOCALE_FR)
	text "Oh! Perdu!"
	done
else
	text "Oh! We lost!"
	done
endc

TwinsMegandpeg2SeenText:
if DEF(_LOCALE_FR)
	text "On n'est pas des"
	line "bébés mais des"
	line "belles dames!"
	done
else
	text "I'm not a baby!"

	para "That's not nice to"
	line "say to a lady!"
	done
endc

TwinsMegandpeg2BeatenText:
if DEF(_LOCALE_FR)
	text "Oh! Perdu!"
	done
else
	text "Oh! We lost!"
	done
endc

PsychicRodneySeenText:
if DEF(_LOCALE_FR)
	text "Silence! Mon cer-"
	line "veau capte un"
	line "signal radio!"
	done
else
	text "Ssh! My brain is"
	line "picking up radio"
	cont "signals!"
	done
endc

PsychicRodneyBeatenText:
if DEF(_LOCALE_FR)
	text "… J'entends"
	line "quelque chose!"
	done
else
	text "…I hear some-"
	line "thing!"
	done
endc

PokefanmJeremySeenText:
if DEF(_LOCALE_FR)
	text "Qu'en penses-tu?"
	line "Mes #MON sont"
	line "beaux, non?"
	done
else
	text "What do you think?"
	line "My #mon are"
	cont "beautiful, yes?"
	done
endc

PokefanmJeremyBeatenText:
if DEF(_LOCALE_FR)
	text "Oh, non! Mes beaux"
	line "#MON!"
	done
else
	text "Oh, no! My beauti-"
	line "ful #mon!"
	done
endc

PokefanfGeorgiaSeenText:
if DEF(_LOCALE_FR)
	text "Je vais faire mes"
	line "courses au GRAND"
	line "MAGASIN et puis…"
	done
else
	text "I'm going to shop"
	line "at the Dept.Store"
	cont "and then…"
	done
endc

PokefanfGeorgiaBeatenText:
if DEF(_LOCALE_FR)
	text "Qu'est-ce que je"
	line "devais faire?"
	done
else
	text "What was I going"
	line "to do?"
	done
endc

SupernerdShawnSeenText:
if DEF(_LOCALE_FR)
	text "Quels types de #"
	line "BALLS as-tu sur"
	line "toi?"
	done
else
	text "What kinds of #"
	line "Balls do you have"
	cont "with you?"
	done
endc

SupernerdShawnBeatenText:
if DEF(_LOCALE_FR)
	text "Attends! Stop!"
	line "Pitié!"
	done
else
	text "Wait! Stop! Don't!"
	line "Please!"
	done
endc

SSAquaHasArrivedVermilionText:
if DEF(_LOCALE_FR)
	text "Le BATEAU EXPRESS"
	line "AQUARIA est arrivé"
	line "à CARMIN SUR MER."
	done
else
	text "Fast Ship S.S.Aqua"
	line "has arrived in"
	cont "Vermilion City."
	done
endc
