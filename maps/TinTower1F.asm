TinTower1F_MapScriptHeader:
	def_scene_scripts
	scene_script TinTower1FSuicuneBattleScene

	def_callbacks
	callback MAPCALLBACK_OBJECTS, TinTower1FNPCsCallback
	callback MAPCALLBACK_TILES, TinTower1FStairsCallback

	def_warp_events
	warp_event  7, 15, BELLCHIME_TRAIL, 3
	warp_event  8, 15, BELLCHIME_TRAIL, 3
	warp_event  8,  2, TIN_TOWER_2F, 2

	def_coord_events

	def_bg_events

	def_object_events
	pokemon_event  7,  9, SUICUNE, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_BLUE, ClearText, EVENT_TIN_TOWER_1F_SUICUNE
	pokemon_event  5,  9, RAIKOU, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_BROWN, ClearText, EVENT_TIN_TOWER_1F_RAIKOU
	pokemon_event 10,  9, ENTEI, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_RED, ClearText, EVENT_TIN_TOWER_1F_ENTEI
	object_event  6,  3, SPRITE_EUSINE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FEusineAfterHoOhScript, EVENT_TIN_TOWER_1F_EUSINE
	object_event  3,  9, SPRITE_ELDER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, TinTower1FSage1Text, EVENT_TIN_TOWER_1F_WISE_TRIO_1
	object_event  9, 11, SPRITE_ELDER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, TinTower1FSage2Text, EVENT_TIN_TOWER_1F_WISE_TRIO_1
	object_event 12,  6, SPRITE_ELDER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, TinTower1FSage3Text, EVENT_TIN_TOWER_1F_WISE_TRIO_1
	object_event  2,  2, SPRITE_ELDER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage4Script, EVENT_TIN_TOWER_1F_WISE_TRIO_2
	object_event  7,  1, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage5Script, EVENT_TIN_TOWER_1F_WISE_TRIO_2
	object_event 12,  2, SPRITE_ELDER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTower1FSage6Script, EVENT_TIN_TOWER_1F_WISE_TRIO_2

	object_const_def
	const TINTOWER1F_SUICUNE
	const TINTOWER1F_RAIKOU
	const TINTOWER1F_ENTEI
	const TINTOWER1F_EUSINE
	const TINTOWER1F_SAGE1
	const TINTOWER1F_SAGE2
	const TINTOWER1F_SAGE3

TinTower1FSuicuneBattleScene:
	sdefer TinTower1FSuicuneBattleScript
	end

TinTower1FNPCsCallback:
	checkevent EVENT_GOT_RAINBOW_WING
	iftruefwd .GotRainbowWing
	checkevent EVENT_BEAT_ELITE_FOUR
	iffalsefwd .FaceBeasts
	special SpecialBeastsCheck
	iffalsefwd .FaceBeasts
	clearevent EVENT_TIN_TOWER_1F_WISE_TRIO_2
	setevent EVENT_TIN_TOWER_1F_WISE_TRIO_1
.GotRainbowWing:
	checkevent EVENT_FOUGHT_HO_OH
	iffalsefwd .Done
	appear TINTOWER1F_EUSINE
.Done:
	endcallback

.FaceBeasts:
	checkevent EVENT_FOUGHT_SUICUNE
	iftruefwd .FoughtSuicune
	appear TINTOWER1F_SUICUNE
	checkflag ENGINE_PLAYER_CAUGHT_RAIKOU
	iftruefwd .NoRaikou
	appear TINTOWER1F_RAIKOU
	sjumpfwd .CheckEntei

.NoRaikou:
	disappear TINTOWER1F_RAIKOU
.CheckEntei:
	checkflag ENGINE_PLAYER_CAUGHT_ENTEI
	iftruefwd .NoEntei
	appear TINTOWER1F_ENTEI
	sjumpfwd .BeastsDone

.NoEntei:
	disappear TINTOWER1F_ENTEI
.BeastsDone:
	endcallback

.FoughtSuicune:
	disappear TINTOWER1F_SUICUNE
	disappear TINTOWER1F_RAIKOU
	disappear TINTOWER1F_ENTEI
	clearevent EVENT_TIN_TOWER_1F_WISE_TRIO_1
	setevent EVENT_TIN_TOWER_1F_WISE_TRIO_2
	endcallback

TinTower1FStairsCallback:
	checkevent EVENT_GOT_RAINBOW_WING
	iftruefwd .DontHideStairs
	changeblock 8, 2, $9
.DontHideStairs:
	endcallback

TinTower1FSuicuneBattleScript:
	applymovement PLAYER, TinTowerPlayerMovement1
	pause 15
	checkflag ENGINE_PLAYER_CAUGHT_RAIKOU
	iftruefwd .Next1 ; if player caught Raikou, he doesn't appear in Tin Tower
	applymovement TINTOWER1F_RAIKOU, TinTower1FRaikouApproachesMovement
	turnobject PLAYER, LEFT
	cry RAIKOU
	pause 10
	playsound SFX_WARP_FROM
	applymovement TINTOWER1F_RAIKOU, TinTower1FRaikouLeavesMovement
	disappear TINTOWER1F_RAIKOU
	playsound SFX_EXIT_BUILDING
	waitsfx
.Next1:
	checkflag ENGINE_PLAYER_CAUGHT_ENTEI
	iftruefwd .Next2 ; if player caught Entei, he doesn't appear in Tin Tower
	applymovement TINTOWER1F_ENTEI, TinTower1FEnteiApproachesMovement
	turnobject PLAYER, RIGHT
	cry ENTEI
	pause 10
	playsound SFX_WARP_FROM
	applymovement TINTOWER1F_ENTEI, TinTower1FEnteiLeavesMovement
	disappear TINTOWER1F_ENTEI
	playsound SFX_EXIT_BUILDING
	waitsfx
.Next2:
	turnobject PLAYER, UP
	pause 10
	applymovement PLAYER, TinTower1FPlayerBacksUpMovement
	applymovement TINTOWER1F_SUICUNE, TinTower1FSuicuneApproachesMovement
	cry SUICUNE
	pause 20
	loadwildmon SUICUNE, 40
	loadvar VAR_BATTLETYPE, BATTLETYPE_LEGENDARY
	startbattle
	dontrestartmapmusic
	disappear TINTOWER1F_SUICUNE
	setevent EVENT_FOUGHT_SUICUNE
	setevent EVENT_SAW_SUICUNE_ON_ROUTE_42
	setmapscene ROUTE_42, $0
	setevent EVENT_SAW_SUICUNE_ON_ROUTE_36
	setmapscene ROUTE_36, $0
	setevent EVENT_SAW_SUICUNE_AT_CIANWOOD_CITY
	setmapscene CIANWOOD_CITY, $0
	setscene $1
	clearevent EVENT_EUSINES_HOUSE_EUSINE
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalsefwd .nocatch
	setflag ENGINE_PLAYER_CAUGHT_SUICUNE
.nocatch
	turnobject PLAYER, DOWN
	pause 20
	playmusic MUSIC_MYSTICALMAN_ENCOUNTER
	playsound SFX_ENTER_DOOR
	moveobject TINTOWER1F_EUSINE, 8, 15
	appear TINTOWER1F_EUSINE
	applymovement TINTOWER1F_EUSINE, TinTower1FEusineEntersMovement
	playsound SFX_ENTER_DOOR
	moveobject TINTOWER1F_SAGE1, 7, 15
	appear TINTOWER1F_SAGE1
	applymovement TINTOWER1F_SAGE1, TinTower1FSage1EntersMovement
	playsound SFX_ENTER_DOOR
	moveobject TINTOWER1F_SAGE2, 7, 15
	appear TINTOWER1F_SAGE2
	applymovement TINTOWER1F_SAGE2, TinTower1FSage2EntersMovement
	playsound SFX_ENTER_DOOR
	moveobject TINTOWER1F_SAGE3, 7, 15
	appear TINTOWER1F_SAGE3
	applymovement TINTOWER1F_SAGE3, TinTower1FSage3EntersMovement
	moveobject TINTOWER1F_SAGE1, 5, 13
	moveobject TINTOWER1F_SAGE2, 7, 13
	moveobject TINTOWER1F_SAGE3, 9, 13
	turnobject PLAYER, RIGHT
	showtext TinTowerEusineSuicuneText
	applymovement TINTOWER1F_EUSINE, TinTower1FEusineLeavesMovement
	playsound SFX_EXIT_BUILDING
	disappear TINTOWER1F_EUSINE
	waitsfx
	special Special_FadeOutMusic
	pause 20
	playmapmusic
	end

TinTower1FSage4Script:
	checkevent EVENT_FOUGHT_HO_OH
	iftruefwd .FoughtHoOh
	jumptextfaceplayer TinTower1FSage4Text1

.FoughtHoOh:
	jumptextfaceplayer TinTower1FSage4Text2

TinTower1FSage5Script:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_HO_OH
	iftruefwd .FoughtHoOh
	checkevent EVENT_GOT_RAINBOW_WING
	iftruefwd .GotRainbowWing
	writetext TinTower1FSage5Text1
	promptbutton
	verbosegivekeyitem RAINBOW_WING
	closetext
	reanchormap
	earthquake 72
	waitsfx
	playsound SFX_STRENGTH
	changeblock 8, 2, $20
	refreshmap
	setevent EVENT_GOT_RAINBOW_WING
	closetext
	opentext
.GotRainbowWing:
	jumpopenedtext TinTower1FSage5Text2

.FoughtHoOh:
	jumpopenedtext TinTower1FSage5Text3

TinTower1FSage6Script:
	checkevent EVENT_FOUGHT_HO_OH
	iftruefwd .FoughtHoOh
	jumptextfaceplayer TinTower1FSage6Text1

.FoughtHoOh:
	jumptextfaceplayer TinTower1FSage6Text2

TinTower1FEusineAfterHoOhScript:
	faceplayer
	opentext
	writetext TinTowerEusineHoOhText
	waitbutton
	closetext
	readvar VAR_FACING
	ifnotequal RIGHT, .PathClear
	applymovement PLAYER, .PlayerStepsAsideMovement
.PathClear:
	applymovement TINTOWER1F_EUSINE, .EusineLeavesAfterHoOhMovement
	disappear TINTOWER1F_EUSINE
	end

.PlayerStepsAsideMovement:
	step_up
	turn_head_left
	step_end

.EusineLeavesAfterHoOhMovement:
	step_left
	step_left
	step_left
	step_down
	step_down
	step_down
	step_down
	step_end

TinTowerPlayerMovement1:
	slow_step_up
	slow_step_up
	slow_step_up
	slow_step_up
	step_end

TinTower1FRaikouApproachesMovement:
	fix_facing
	fast_jump_step_down
	step_end

TinTower1FRaikouLeavesMovement:
	fix_facing
	fast_jump_step_down
	fast_jump_step_right
	fast_jump_step_down
	step_end

TinTower1FEnteiApproachesMovement:
	fix_facing
	fast_jump_step_down
	step_end

TinTower1FEnteiLeavesMovement:
	fix_facing
	fast_jump_step_down
	fast_jump_step_left
	fast_jump_step_down
	step_end

TinTower1FSuicuneApproachesMovement:
	fix_facing
	fast_jump_step_down
	step_end

TinTower1FPlayerBacksUpMovement:
	fix_facing
	run_step_down
	remove_fixed_facing
	step_end

TinTower1FEusineEntersMovement:
	step_up
	step_up
	step_up
	turn_head_left
	step_end

TinTower1FEusineLeavesMovement:
	step_down
	step_down
	step_down
	step_end

TinTower1FSage1EntersMovement:
	step_up
	step_up
	step_left
	step_left
	turn_head_up
	step_end

TinTower1FSage2EntersMovement:
	step_up
	step_up
	step_end

TinTower1FSage3EntersMovement:
	step_up
	step_right
	step_right
	step_up
	step_end

TinTowerEusineSuicuneText:
if DEF(_LOCALE_FR)
	text "EUSINE: Bravo!"
	line "Trop fort! Je n'ai"
	line "jamais vu un tel"
	line "combat. Alors ça…"
	line "J'suis soufflé."
	line "SUICUNE est fort,"
	line "mais tu l'es"
	line "encore plus,"
	line "<PLAYER>. On dit"
	line "que SUICUNE a le"
	line "pouvoir d'in-"
	line "voquer un #MON aux"
	line "couleurs de"
	line "l'arc-en-ciel."
	line "Peut-être, on ne"
	line "sait jamais, ce"
	line "qu'il vient de se"
	line "passer le fera"
	line "apparaître… Je"
	line "vais encore"
	line "étudier les"
	line "légendes… Merci de"
	line "m'avoir montré tes"
	line "talents… A très"
	line "bientôt, <PLAYER>!"
	done
else
	text "Eusine: Awesome!"
	line "Too awesome, even!"

	para "I've never seen a"
	line "battle that great."

	para "That was truly"
	line "inspiring to see."

	para "Suicune was tough,"
	line "but you were even"

	para "more incredible,"
	line "<PLAYER>."

	para "I heard Suicune's"
	line "mystic power"

	para "summons a rainbow-"
	line "colored #mon."

	para "Maybe, just maybe,"
	line "what went on today"

	para "will cause that"
	line "#mon to appear."

	para "I'm going to study"
	line "the legends more."

	para "Thanks for showing"
	line "me that fantastic"
	cont "battle."

	para "Later, <PLAYER>!"
	done
endc

TinTower1FSage1Text:
if DEF(_LOCALE_FR)
	text "Selon la légende…"
	line "Lorsque les âmes"
	line "des #MON et des"
	line "humains se réunis-"
	line "sent, un #MON aux"
	line "couleurs de"
	line "l'arc-en-ciel des-"
	line "cend des cieux…"
	line "Est-il possible"
	line "que les #MON"
	line "légendaires met-"
	line "tent les humains à"
	line "l'épreuve?"
	done
else
	text "According to"
	line "legend…"

	para "When the souls of"
	line "#mon and humans"

	para "commune, from the"
	line "heavens descends a"

	para "#mon of rainbow"
	line "colors…"

	para "Could it mean the"
	line "legendary #mon"

	para "are testing us"
	line "humans?"
	done
endc

TinTower1FSage2Text:
if DEF(_LOCALE_FR)
	text "Lorsque la TOUR de"
	line "CUIVRE brûla,"
	line "trois #MON sans"
	line "nom ont, paraît-"
	line "il, péri dans les"
	line "flammes…"
	line "Toutefois… Un #MON"
	line "couleur"
	line "arc-en-ciel… Ou"
	line "plus précisé-"
	line "ment… HO-OH,"
	line "descendit du ciel"
	line "et redonna la vie"
	line "aux trois #MON."
	line "Ils se nomment…"
	line "SUICUNE, ENTEI et"
	line "RAIKOU. Et voilà"
	line "ce qu'on raconte."
	done
else
if DEF(FAITHFUL)
	text "When the Brass"
else
	text "When the Gong"
endc
	line "Tower burned down,"

	para "three nameless"
	line "#mon were said"

	para "to have perished."
	line "It was tragic."

	para "However…"

	para "A rainbow-colored"
	line "#mon…"

	para "In other words…"

	para "Ho-Oh descended"
	line "from the sky and"

	para "gave new life to"
	line "the three #mon."

	para "They are…"

	para "Suicune, Entei and"
	line "Raikou."

	para "That is what they"
	line "say."
	done
endc

TinTower1FSage3Text:
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
	text "The two towers are"
	line "said to have been"

	para "built to foster"
	line "friendship and"

	para "hope between #-"
	line "mon and people."

	para "That was 700 years"
	line "ago, but the ideal"

	para "still remains"
	line "important today."
	done
endc

TinTower1FSage4Text1:
if DEF(_LOCALE_FR)
	text "HO-OH a dû arriver"
	line "ici, à la TOUR"
	line "FERRAILLE!"
	done
else
	text "Ho-Oh appears to"
	line "have descended"

	para "upon this, the"
	line "Bell Tower!"
	done
endc

TinTower1FSage5Text1:
if DEF(_LOCALE_FR)
	text "Ceci te protégera."
	done
else
	text "This will protect"
	line "you. Take it."
	done
endc

TinTower1FSage5Text2:
	text "Now, go."
	done

TinTower1FSage6Text1:
if DEF(_LOCALE_FR)
	text "Je crois que l'on"
	line "te met à l'épreu-"
	line "ve. Avance"
	line "l'esprit clair."
	done
else
	text "I believe you are"
	line "being tested."

	para "Free your mind"
	line "from uncertainty,"
	cont "and advance."
	done
endc

TinTowerEusineHoOhText:
if DEF(_LOCALE_FR)
	text "Je le savais. Je"
	line "savais que tu"
	line "verrais le #MON"
	line "arc-en-ciel,"
	line "<PLAYER>. Je"
	line "l'avais prédit. Je"
	line "suis pas trop"
	line "mauvais, moi. Je"
	line "vais continuer à"
	line "étudier pour être"
	line "un célèbre"
	line "#MANIAC!"
	done
else
	text "I knew it."

	para "I knew you'd get"
	line "to see the #mon"

	para "of rainbow colors,"
	line "<PLAYER>."

	para "It happened just"
	line "as I envisioned."

	para "My research isn't"
	line "bad, I might say."

	para "I'm going to keep"
	line "studying #mon"

	para "to become a famous"
	line "#Maniac!"

	para "If you're ever in"
	line "Celadon City,"

	para "will you say hi to"
	line "my grandpa?"

	para "I'm sure he would"
	line "like the company"
	cont "while I'm away."

	para "Later, <PLAYER>!"
	done
endc

TinTower1FSage4Text2:
if DEF(_LOCALE_FR)
	text "Les #MON légen-"
	line "daires sont censés"
	line "posséder trois"
	line "pouvoirs… La"
	line "foudre qui a"
	line "frappé la TOUR. Le"
	line "feu qui a brûlé la"
	line "TOUR. Et la pluie"
	line "qui a éteint le"
	line "feu…"
	done
else
	text "The legendary"
	line "#mon are said"

	para "to embody three"
	line "powers…"

	para "The lightning that"
	line "struck the tower."

	para "The fire that"
	line "burned the tower."

	para "And the rain that"
	line "put out the fire…"
	done
endc

TinTower1FSage5Text3:
if DEF(_LOCALE_FR)
	text "Lorsque les #- MON"
	line "légendaires sont"
	line "apparus… Ils"
	line "pétrifièrent de"
	line "terreur les"
	line "témoins de leur"
	line "réveil… Et…"
	line "Certains ont même"
	line "cru bon de les"
	line "attaquer… Les #MON"
	line "légen- daires,"
	line "conscients de leur"
	line "puissance, ont"
	line "préféré fuir."
	done
else
	text "When the legendary"
	line "#mon appeared…"

	para "They struck terror"
	line "in those who saw"
	cont "their rise."

	para "And…"

	para "Some even took to"
	line "futile attacks."

	para "The legendary"
	line "#mon, knowing"

	para "their own power,"
	line "fled, ignoring the"
	cont "frightened people."
	done
endc

TinTower1FSage6Text2:
if DEF(_LOCALE_FR)
	text "On dit que le #MON"
	line "légendai- re"
	line "SUICUNE est le"
	line "plus proche de"
	line "HO-OH. Il y aurait"
	line "aussi un lien avec"
	line "les #MON connus"
	line "sous le nom de…"
	line "ZARBI. Les ZARBI"
	line "et SUICUNE doivent"
	line "être liés en un"
	line "sens…"
	done
else
	text "Of the legendary"
	line "#mon, Suicune"

	para "is said to be the"
	line "closest to Ho-Oh."

	para "I hear there may"
	line "also be a link to"

	para "#mon known as"
	line "Unown."

	para "The #mon Unown"
	line "must be sharing a"

	para "cooperative bond"
	line "with Suicune."
	done
endc
