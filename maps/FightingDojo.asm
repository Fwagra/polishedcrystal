FightingDojo_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, FightingDojoSetupRematchesCallback

	def_warp_events
	warp_event  4, 11, SAFFRON_CITY, 1
	warp_event  5, 11, SAFFRON_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  4,  0, BGEVENT_JUMPTEXT, FightingDojoSign1Text
	bg_event  5,  0, BGEVENT_JUMPTEXT, FightingDojoSign2Text
	bg_event  9,  0, BGEVENT_READ, MapFightingDojoSignpost2Script

	def_object_events
	object_event  0,  1, SPRITE_BIG_DOLL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, RematchRed0Script, EVENT_REMATCH_GYM_LEADER_1
	object_event  0,  2, SPRITE_COPYCAT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, RematchGreen1Script, EVENT_REMATCH_GYM_LEADER_2
	object_event  0,  3, SPRITE_COPYCAT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, RematchBlue1Script, EVENT_REMATCH_GYM_LEADER_3
	object_event  0,  4, SPRITE_CONSOLE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, RematchBlue2Script, EVENT_REMATCH_GYM_LEADER_4
	object_event  0,  5, SPRITE_COPYCAT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, RematchBrown1Script, EVENT_REMATCH_GYM_LEADER_5
	object_event  0,  6, SPRITE_CONSOLE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, RematchBrown2Script, EVENT_REMATCH_GYM_LEADER_6
	object_event  4,  4, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, FightingDojoBlackBelt, -1

	object_const_def
	const REMATCH_RED_1
	const REMATCH_GREEN_2
	const REMATCH_BLUE_2
	const REMATCH_BLUE_3
	const REMATCH_BROWN_2
	const REMATCH_BROWN_3

FightingDojoSetupRematchesCallback:
	disappear REMATCH_RED_1
	disappear REMATCH_GREEN_2
	disappear REMATCH_BLUE_2
	disappear REMATCH_BLUE_3
	disappear REMATCH_BROWN_2
	disappear REMATCH_BROWN_3
	checkevent EVENT_BEAT_BLUE
	iftruefwd .SetupDailyRematches
	endcallback

MACRO rematch
	; rematch person, varsprite, sprite, y, x, face, palette
	moveobject \1, \5, \4
	turnobject \1, \6
	setmapobjectpal \1, \7
	appear \1
	variablesprite \2, \3
ENDM

MACRO rematch_left
	; rematch_left person, varsprite, sprite, palette
	rematch \1, \2, \3, 6, 3, RIGHT, \4
ENDM

MACRO rematch_right
	; rematch_right person, varsprite, sprite, palette
	rematch \1, \2, \3, 6, 6, LEFT, \4
ENDM

.SetupDailyRematches:
	readvar VAR_WEEKDAY
	ifequalfwd MONDAY, .Monday
	ifequalfwd TUESDAY, .Tuesday
	ifequalfwd WEDNESDAY, .Wednesday
	ifequal THURSDAY, .Thursday
	ifequal FRIDAY, .Friday
	ifequal SATURDAY, .Saturday

.Sunday
	checktime (1 << EVE) | (1 << NITE)
	iftruefwd .SundayNight
.SundayMorningAndDay
	rematch_left REMATCH_RED_1, SPRITE_BIG_DOLL, SPRITE_JASMINE, PAL_NPC_RED
	rematch_right REMATCH_GREEN_2, SPRITE_COPYCAT, SPRITE_ERIKA, PAL_NPC_GREEN
	endcallback
.SundayNight
	rematch REMATCH_RED_1, SPRITE_BIG_DOLL, SPRITE_SABRINA, 4, 6, DOWN, PAL_NPC_RED
	endcallback

.Monday
	checktime (1 << EVE) | (1 << NITE)
	iftruefwd .MondayNight
.MondayMorningAndDay
	rematch_left REMATCH_BLUE_2, SPRITE_COPYCAT, SPRITE_FALKNER, PAL_NPC_BLUE
	rematch_right REMATCH_BLUE_3, SPRITE_CONSOLE, SPRITE_JANINE, PAL_NPC_PURPLE
	endcallback
.MondayNight
	checkevent EVENT_BEAT_WALKER
	iffalsefwd .NoWalker
	rematch REMATCH_BLUE_3, SPRITE_CONSOLE, SPRITE_WALKER, 4, 8, DOWN, PAL_NPC_BLUE
.NoWalker
	endcallback

.Tuesday
	checktime (1 << EVE) | (1 << NITE)
	iftruefwd .TuesdayNight
.TuesdayMorningAndDay
	rematch_left REMATCH_BROWN_2, SPRITE_COPYCAT, SPRITE_PRYCE, PAL_NPC_BROWN
	rematch_right REMATCH_BROWN_3, SPRITE_CONSOLE, SPRITE_BLAINE, PAL_NPC_BROWN
	endcallback
.TuesdayNight
	checkevent EVENT_BEAT_LORELEI_AGAIN
	iffalsefwd .NoLorelei
	rematch REMATCH_RED_1, SPRITE_BIG_DOLL, SPRITE_LORELEI, 4, 6, DOWN, PAL_NPC_RED
.NoLorelei
	endcallback

.Wednesday
	checktime 1 << MORN
	iftruefwd .WednesdayMorning
	checktime (1 << EVE) | (1 << NITE)
	iftruefwd .WednesdayNight
.WednesdayDay
	rematch_left REMATCH_BROWN_2, SPRITE_COPYCAT, SPRITE_BROCK, PAL_NPC_BROWN
	rematch REMATCH_RED_1, SPRITE_BIG_DOLL, SPRITE_MISTY, 5, 2, RIGHT, PAL_NPC_ORANGE
	rematch_right REMATCH_BLUE_3, SPRITE_CONSOLE, SPRITE_BLUE, PAL_NPC_BLUE
	endcallback
.WednesdayMorning
	rematch_left REMATCH_BROWN_2, SPRITE_COPYCAT, SPRITE_BROCK, PAL_NPC_BROWN
	rematch_right REMATCH_RED_1, SPRITE_BIG_DOLL, SPRITE_MISTY, PAL_NPC_ORANGE
	endcallback
.WednesdayNight
	rematch REMATCH_BLUE_3, SPRITE_CONSOLE, SPRITE_BLUE, 4, 8, DOWN, PAL_NPC_BLUE
	endcallback

.Thursday
	checktime 1 << MORN
	iftruefwd .ThursdayMorning
	checktime (1 << EVE) | (1 << NITE)
	iftruefwd .ThursdayNight
.ThursdayDay
	checkevent EVENT_BEAT_PALMER
	iffalsefwd .NoPalmer
	rematch REMATCH_GREEN_2, SPRITE_COPYCAT, SPRITE_PALMER, 6, 3, DOWN, PAL_NPC_GREEN
.NoPalmer
	endcallback
.ThursdayMorning
	rematch REMATCH_GREEN_2, SPRITE_COPYCAT, SPRITE_BUGSY, 6, 1, DOWN, PAL_NPC_GREEN
	endcallback
.ThursdayNight
	rematch REMATCH_BROWN_3, SPRITE_CONSOLE, SPRITE_MORTY, 4, 2, DOWN, PAL_NPC_BROWN
	endcallback

.Friday
	checktime 1 << MORN
	iftruefwd .FridayMorning
	checktime (1 << EVE) | (1 << NITE)
	iftruefwd .FridayNight
.FridayDay
	checkevent EVENT_BEAT_YELLOW
	iffalsefwd .NoYellow
	rematch REMATCH_RED_1, SPRITE_BIG_DOLL, SPRITE_YELLOW, 6, 6, DOWN, PAL_NPC_ORANGE
.NoYellow
	endcallback
.FridayMorning
	rematch REMATCH_BROWN_2, SPRITE_COPYCAT, SPRITE_SURGE, 7, 6, DOWN, PAL_NPC_BROWN
	endcallback
.FridayNight
	rematch REMATCH_BLUE_2, SPRITE_COPYCAT, SPRITE_CLAIR, 6, 2, RIGHT, PAL_NPC_BLUE
	endcallback

.Saturday
	checktime 1 << MORN
	iftruefwd .SaturdayMorning
	checktime (1 << EVE) | (1 << NITE)
	iftruefwd .SaturdayNight
.SaturdayDay
	rematch_left REMATCH_RED_1, SPRITE_BIG_DOLL, SPRITE_WHITNEY, PAL_NPC_RED
	rematch_right REMATCH_BROWN_2, SPRITE_COPYCAT, SPRITE_CHUCK, PAL_NPC_BROWN
	endcallback
.SaturdayMorning
	rematch_left REMATCH_RED_1, SPRITE_BIG_DOLL, SPRITE_WHITNEY, PAL_NPC_RED
	endcallback
.SaturdayNight
	checkevent EVENT_BEAT_AGATHA
	iffalsefwd .NoAgatha
	rematch REMATCH_BROWN_3, SPRITE_CONSOLE, SPRITE_AGATHA, 4, 2, DOWN, PAL_NPC_BROWN
.NoAgatha
	endcallback

FightingDojoBlackBelt:
	checkevent EVENT_BEAT_BLUE
	iftruefwd .BlackBeltExplainsRematchesScript
	jumptextfaceplayer FightingDojoBlackBeltText
.BlackBeltExplainsRematchesScript
	jumptextfaceplayer BlackBeltText_ExplainsRematches

MapFightingDojoSignpost2Script:
	opentext
	writetext FightingDojoScheduleQuestionText
	yesorno
	iffalse_endtext
.sunday
	writetext FightingDojoScheduleSundayText
	waitbutton
.monday
	checkevent EVENT_BEAT_WALKER
	iftruefwd .monday_walker
	writetext FightingDojoScheduleMondayText
	waitbutton
	sjumpfwd .tuesday
.monday_walker
	writetext FightingDojoScheduleMondayWalkerText
	waitbutton
.tuesday
	checkevent EVENT_BEAT_LORELEI_AGAIN
	iftruefwd .tuesday_lorelei
	writetext FightingDojoScheduleTuesdayText
	waitbutton
	sjumpfwd .wednesday
.tuesday_lorelei
	writetext FightingDojoScheduleTuesdayLoreleiText
	waitbutton
.wednesday
	writetext FightingDojoScheduleWednesdayText
	waitbutton
.thursday
	checkevent EVENT_BEAT_PALMER
	iftruefwd .thursday_palmer
	writetext FightingDojoScheduleThursdayText
	waitbutton
	sjumpfwd .friday
.thursday_palmer
	writetext FightingDojoScheduleThursdayPalmerText
	waitbutton
.friday
	checkevent EVENT_BEAT_YELLOW
	iftruefwd .friday_yellow
	writetext FightingDojoScheduleFridayText
	waitbutton
	sjumpfwd .saturday
.friday_yellow
	writetext FightingDojoScheduleFridayYellowText
	waitbutton
.saturday
	checkevent EVENT_BEAT_AGATHA
	iftruefwd .saturday_agatha
	jumpopenedtext FightingDojoScheduleSaturdayText
.saturday_agatha
	jumpopenedtext FightingDojoScheduleSaturdayAgathaText

RematchRed0Script:
	readvar VAR_WEEKDAY
	ifequalfwd TUESDAY, .Red0TuesdayNight
	ifequalfwd WEDNESDAY, .Red0Wednesday
	ifequalfwd FRIDAY, .Red0Friday
	ifequalfwd SATURDAY, .Red0Saturday
	checktime (1 << EVE) | (1 << NITE)
	iftruefwd .Red0SundayNight
	sjump RematchJasmineScript
.Red0SundayNight
	sjump RematchSabrinaScript
.Red0TuesdayNight
	sjump RematchLoreleiScript
.Red0Wednesday
	sjump RematchMistyScript
.Red0Friday
	sjump RematchYellowScript
.Red0Saturday
	sjump RematchWhitneyScript

RematchGreen1Script:
	readvar VAR_WEEKDAY
	ifequalfwd THURSDAY, .Green1Thursday
.Green1Sunday
	sjump RematchErikaScript
.Green1Thursday
	checktime 1 << MORN
	iftruefwd .Green1ThursdayMorning
.Green1ThursdayDay
	sjump RematchPalmerScript
.Green1ThursdayMorning
	sjump RematchBugsyScript

RematchBlue1Script:
	readvar VAR_WEEKDAY
	ifequalfwd FRIDAY, .Blue1Friday
.Blue1Monday
	sjump RematchFalknerScript
.Blue1Friday
	sjump RematchClairScript

RematchBlue2Script:
	readvar VAR_WEEKDAY
	ifequalfwd MONDAY, .Blue2Monday
.Blue2Wednesday
	sjump RematchBlueScript
.Blue2Monday
	checktime (1 << EVE) | (1 << NITE)
	iftruefwd .Blue2MondayNight
.Blue2MondayMorningDay
	sjump RematchJanineScript
.Blue2MondayNight
	sjump RematchWalkerScript

RematchBrown1Script:
	readvar VAR_WEEKDAY
	ifequalfwd WEDNESDAY, .Brown1Wednesday
	ifequalfwd FRIDAY, .Brown1Friday
	ifequalfwd SATURDAY, .Brown1Saturday
.Brown1Tuesday
	sjump RematchPryceScript
.Brown1Wednesday
	sjumpfwd RematchBrockScript
.Brown1Friday
	sjumpfwd RematchSurgeScript
.Brown1Saturday
	sjump RematchChuckScript

RematchBrown2Script:
	readvar VAR_WEEKDAY
	ifequalfwd THURSDAY, .Brown2Thursday
	ifequalfwd SATURDAY, .Brown2SaturdayNight
.Brown2Tuesday
	sjump RematchBlaineScript
.Brown2Thursday
	sjump RematchMortyScript
.Brown2SaturdayNight
	sjump RematchAgathaScript

FightingDojoBlackBeltText:
if DEF(_LOCALE_FR)
	text "Bonjour! Le KING"
	line "KARATE, le maître"
	line "du DOJO est dans"
	line "une caverne de"
	line "JOHTO pour"
	line "s'entraîner."
	done
else
	text "Hello!"

	para "Karate King, the"
	line "Fighting Dojo's"

	para "master, is in a"
	line "cave in Johto for"
	cont "training."
	done
endc

BlackBeltText_ExplainsRematches:
if DEF(_LOCALE_FR)
	text "Des CHAMPIONS"
	line "de KANTO et JOHTO"

	para "viennent ici"
	line "s'entraîner."

	para "Tu devrais faire"
	line "pareil!"
	done
else
	text "Gym Leaders from"
	line "Kanto and Johto"

	para "come to this"
	line "Fighting Dojo"
	cont "to train."

	para "You should join"
	line "them!"
	done
endc

FightingDojoSign1Text:
if DEF(_LOCALE_FR)
	text "Le riz il est"
	line "cuit! (proverbe)"
	done
else
	text "What goes around"
	line "comes around!"
	done
endc

FightingDojoSign2Text:
if DEF(_LOCALE_FR)
	text "Tape aussi fort"
	line "que t'es beau!"
	line "(proverbe)"
	done
else
	text "Enemies on every"
	line "side!"
	done
endc

MACRO rematch_script
	; rematch_script name, trainer, flag
	faceplayer
	opentext
	checkflag \3
	iftruefwd .RematchDone
	writetext \1Text_Greeting
	waitbutton
	closetext
	winlosstext \1Text_WinLoss, 0
	loadtrainer \2, 2
	startbattle
	reloadmapafterbattle
	setflag \3
	end
.RematchDone
	jumpopenedtext \1Text_Done
ENDM

RematchBrockScript:
	rematch_script Brock, BROCK, ENGINE_GYM_LEADER_REMATCH_1

RematchMistyScript:
	rematch_script Misty, MISTY, ENGINE_GYM_LEADER_REMATCH_2

RematchSurgeScript:
	rematch_script Surge, LT_SURGE, ENGINE_GYM_LEADER_REMATCH_1

RematchErikaScript:
	rematch_script Erika, ERIKA, ENGINE_GYM_LEADER_REMATCH_2

RematchJanineScript:
	rematch_script Janine, JANINE, ENGINE_GYM_LEADER_REMATCH_2

RematchSabrinaScript:
	rematch_script Sabrina, SABRINA, ENGINE_GYM_LEADER_REMATCH_3

RematchBlaineScript:
	rematch_script Blaine, BLAINE, ENGINE_GYM_LEADER_REMATCH_2

RematchBlueScript:
	rematch_script Blue, BLUE, ENGINE_GYM_LEADER_REMATCH_3

RematchFalknerScript:
	rematch_script Falkner, FALKNER, ENGINE_GYM_LEADER_REMATCH_1

RematchBugsyScript:
	rematch_script Bugsy, BUGSY, ENGINE_GYM_LEADER_REMATCH_1

RematchWhitneyScript:
	rematch_script Whitney, WHITNEY, ENGINE_GYM_LEADER_REMATCH_1

RematchMortyScript:
	rematch_script Morty, MORTY, ENGINE_GYM_LEADER_REMATCH_2

RematchChuckScript:
	rematch_script Chuck, CHUCK, ENGINE_GYM_LEADER_REMATCH_2

RematchJasmineScript:
	rematch_script Jasmine, JASMINE, ENGINE_GYM_LEADER_REMATCH_1

RematchPryceScript:
	rematch_script Pryce, PRYCE, ENGINE_GYM_LEADER_REMATCH_1

RematchClairScript:
	rematch_script Clair, CLAIR, ENGINE_GYM_LEADER_REMATCH_2

RematchPalmerScript:
	rematch_script Palmer, TOWERTYCOON, ENGINE_GYM_LEADER_REMATCH_3

RematchLoreleiScript:
	rematch_script Lorelei, LORELEI, ENGINE_GYM_LEADER_REMATCH_3

RematchAgathaScript:
	rematch_script Agatha, AGATHA, ENGINE_GYM_LEADER_REMATCH_3

RematchWalkerScript:
	rematch_script Walker, WALKER, ENGINE_GYM_LEADER_REMATCH_3

RematchYellowScript:
	rematch_script Yellow, YELLOW, ENGINE_GYM_LEADER_REMATCH_3

BrockText_Greeting:
if DEF(_LOCALE_FR)
	text "J'adore les"
	line "#mon"
	line "ROCHE."

	para "Solides et rudes,"
	line "mais fragiles"
	cont "aussi."

	para "Tu verras comme"
	line "mes #mon ROCHE"

	para "sont devenus plus"
	line "forts!"
	done
else
	text "I like Rock-type"
	line "#mon best."

	para "They're solid and"
	line "rough, yet brittle"
	cont "at the same time."

	para "You'll see how"
	line "much stronger my"

	para "rock #mon have"
	line "become!"
	done
endc

MistyText_Greeting:
if DEF(_LOCALE_FR)
	text "J'ai entendu"
	line "beaucoup de bien"

	para "sur toi depuis"
	line "notre dernier"
	cont "combat."

	para "Je vais voir"
	line "jusqu'où tu vas!"
	done
else
	text "I've heard a lot"
	line "of good things"

	para "about you since"
	line "our last battle."

	para "Let me test how"
	line "good you are!"
	done
endc

SurgeText_Greeting:
if DEF(_LOCALE_FR)
	text "Je sens une"
	line "puissance elec-"
	cont "trique énorme"

	para "près de la gare du"
	line "MAGNET TRAIN!"

	para "J'suis à fond pour"
	line "un combat"
	cont "electrisant!"
	done
else
	text "I can feel great"
	line "electric power"

	para "around the Magnet"
	line "Train station!"

	para "I'm psyched for"
	line "an electrifying"
	cont "battle!"
	done
endc

ErikaText_Greeting:
if DEF(_LOCALE_FR)
	text "Contente de te"
	line "revoir!"

	para "Comment vas-tu?"

	para "Cet endroit ne me"
	line "va pas trop,"
	cont "mais…"

	para "Oublions ca et"
	line "battons-nous!"
	done
else
	text "Good to see you"
	line "again!"

	para "How are you?"

	para "This place doesn't"
	line "really suit me,"
	cont "but…"

	para "let's ignore that"
	line "and battle!"
	done
endc

JanineText_Greeting:
if DEF(_LOCALE_FR)
	text "Je ne peux pas"
	line "user de mes"
	cont "techniques ninja,"

	para "mais je ne te"
	line "laisserai pas"
	cont "gagner!"
	done
else
	text "I can't use my"
	line "ninja technique,"

	para "but I won't let"
	line "you win!"
	done
endc

SabrinaText_Greeting:
if DEF(_LOCALE_FR)
	text "Je savais que tu"
	line "reviendrais."

	para "Je l'avais senti."
	done
else
	text "I knew you'd come"
	line "battle me again."

	para "I had a feeling."
	done
endc

BlaineText_Greeting:
if DEF(_LOCALE_FR)
	text "Mon ARENE est"
	line "toujours détruite."

	para "Alors on fait la"
	line "revanche ici!"
	done
else
	text "My Gym is still"
	line "gone, so let's"

	para "hold our rematch"
	line "right here!"
	done
endc

BlueText_Greeting:
if DEF(_LOCALE_FR)
	text "Bien! T'es là."

	para "Merci d'être venu"
	line "perdre contre moi!"
	done
else
	text "Good! You're"
	line "here too."

	para "Thanks for coming"
	line "to lose to me!"
	done
endc

FalknerText_Greeting:
if DEF(_LOCALE_FR)
	text "Je suis en super"
	line "forme aujourd'hui."

	para "C'est un plaisir"
	line "de te reaffronter!"
	done
else
	text "I'm in top form"
	line "today."

	para "It's a pleasure to"
	line "be able to battle"
	cont "you again!"
	done
endc

BugsyText_Greeting:
if DEF(_LOCALE_FR)
	text "Content de te"
	line "revoir! Admire mes"

	para "recherches"
	line "INSECTE!"
	done
else
	text "Good to see you"
	line "again! Behold my"
	cont "bug research!"
	done
endc

WhitneyText_Greeting:
if DEF(_LOCALE_FR)
	text "Salut, <PLAYER>!"

	para "Puisqu'on est là,"
	line "on se bat!"

	para "T'es prêt?"
	done
else
	text "Hi, <PLAYER>!"
	line "Since we're both"

	para "here, let's have"
	line "a battle!"

	para "Are you ready?"
	done
endc

MortyText_Greeting:
if DEF(_LOCALE_FR)
	text "Le #mon"
	line "légendaire"
	line "ne m'a pas choisi…"

	para "Mais je n'ai pas"
	line "perdu mon avenir."

	para "Bats-toi!"
	done
else
	text "The legendary"
	line "#mon did not"
	cont "choose me…"

	para "But that does not"
	line "mean I have lost"

	para "out on my future."
	line "Let's battle!"
	done
endc

ChuckText_Greeting:
if DEF(_LOCALE_FR)
	text "Te voilà!"

	para "Goûte à mon"
	line "entraînement"
	cont "24h/24!"
	done
else
	text "There you are!"

	para "Taste my 24-hour"
	line "training!"
	done
endc

JasmineText_Greeting:
if DEF(_LOCALE_FR)
	text "Bonjour, <PLAYER>…"
	line "Comment ca va?"
	cont "Moi, ca va…"

	para "Bref, tu es prêt"
	line "à me reaffronter?"
	done
else
	text "Hello, <PLAYER>…"
	line "How are you?"
	cont "I'm doing well…"

	para "Anyway, are you"
	line "prepared to"
	cont "battle me again?"
	done
endc

PryceText_Greeting:
if DEF(_LOCALE_FR)
	text "Pas besoin de"
	line "mots. Un combat"

	para "#mon, c'est"
	line "notre langage."
	done
else
	text "No need for words."
	line "A #mon battle"

	para "is the way for us"
	line "to communicate."
	done
endc

ClairText_Greeting:
if DEF(_LOCALE_FR)
	text "…Te voilà."

	para "Bats-toi!"
	done
else
	text "…So you are here."

	para "Now let's battle!"
	done
endc

PalmerText_Greeting:
if DEF(_LOCALE_FR)
	text "Ainsi, tu es allé"
	line "jusque-là!"

	para "En tant que LORD"
	line "de la TOUR,"

	para "je dois tout"
	line "donner."

	para "C'est comme ça que"
	line "les meilleurs"

	para "se respectent:"
	line "en se battant à"
	cont "fond,"

	para "en vrais élèves"
	line "des #mon!"
	done
else
	text "So, you've come"
	line "this far!"

	para "As the Tower"
	line "Tycoon, I'll have"

	para "to give you my"
	line "best effort."

	para "That's how the best"
	line "trainers show"

	para "respect to each"
	line "other."

	para "By battling all-"
	line "out as dedicated"

	para "students of"
	line "#mon!"
	done
endc

LoreleiText_Greeting:
if DEF(_LOCALE_FR)
	text "Rebonjour,"
	line "<PLAYER>."

	para "Ici, je suis chez"
	line "moi."

	para "Je ne perdrai pas!"
	done
else
	text "Hello again,"
	line "<PLAYER>."

	para "We're on my home"
	line "ground now."

	para "I won't lose!"
	done
endc

AgathaText_Greeting:
if DEF(_LOCALE_FR)
	text "Bonjour, petit."

	para "Tu remplis encore"
	line "un #dex pour"
	cont "ce vieux Chêne?"

	para "Les #mon, c'est"
	line "pour se battre!"

	para "Montre-moi ton"
	line "vrai talent!"
	done
else
	text "Hello, child."

	para "You're still"
	line "filling a #dex"

	para "for that old duff"
	line "Oak?"

	para "#mon are for"
	line "battling!"

	para "Show me your"
	line "real talent"
	cont "as a trainer!"
	done
endc

WalkerText_Greeting:
if DEF(_LOCALE_FR)
	text "Hé, <PLAYER>!"

	para "On dirait que j'ai"
	line "raté mon fils,"
	cont "Falkner…"

	para "Alors, on se bat?"
	done
else
	text "Hey there,"
	line "<PLAYER>!"

	para "Seems like I just"
	line "missed my son"

	para "Falkner here"
	line "earlier…"

	para "How about if we"
	line "battle instead?"
	done
endc

YellowText_Greeting:
if DEF(_LOCALE_FR)
	text "Salut, <PLAYER>!"

	para "Voyons voir…"

	para "Oui! Tu prends"
	line "toujours soin de"
	cont "tes #mon!"

	para "Tu es plus fort,"
	line "et moi aussi!"
	done
else
	text "Hi, <PLAYER>!"

	para "Let me see…"

	para "Yes! You still"
	line "take good care of"
	cont "your #mon!"

	para "You've gotten"
	line "stronger, but so"
	cont "have I!"
	done
endc

BrockText_WinLoss:
if DEF(_LOCALE_FR)
	text "J'ai encore perdu…"

	para "Tu n'aventures"
	line "pas pour rien!"
	done
else
	text "I've lost again…"

	para "You aren't adven-"
	line "turing around"
	cont "for nothing!"
	done
endc

MistyText_WinLoss:
if DEF(_LOCALE_FR)
	text "Wow! Tu deviens"
	line "plus fort en"
	cont "combattant!"
	done
else
	text "Wow! You're"
	line "getting stronger"
	cont "by the battle!"
	done
endc

SurgeText_WinLoss:
if DEF(_LOCALE_FR)
	text "Tu es très fort!"

	para "Mais je te le"
	line "rendrai un jour!"
	done
else
	text "You're very"
	line "strong!"

	para "But I'll repay my"
	line "debt someday!"
	done
endc

ErikaText_WinLoss:
if DEF(_LOCALE_FR)
	text "Tu es devenu"
	line "encore plus fort…"
	done
else
	text "You have grown"
	line "even stronger…"
	done
endc

JanineText_WinLoss:
if DEF(_LOCALE_FR)
	text "J'ai perdu"
	line "aujourd'hui,"

	para "mais je gagnerai"
	line "la prochaine fois!"
	done
else
	text "I lost today, but"
	line "I'll win next time!"
	done
endc

SabrinaText_WinLoss:
if DEF(_LOCALE_FR)
	text "Je sais… On se"
	line "reverra un jour."
	done
else
	text "I know… we will"
	line "meet again some-"
	cont "time."
	done
endc

BlaineText_WinLoss:
if DEF(_LOCALE_FR)
	text "Waaah! Je suis"
	line "encore grillé!"
	done
else
	text "Waaah! I've burned"
	line "out again!"
	done
endc

BlueText_WinLoss:
if DEF(_LOCALE_FR)
	text "Comme prévu!"

	para "Pas étonnant que"
	line "tu sois le"
	cont "Maître…"
	done
else
	text "Just as I"
	line "expected!"

	para "No wonder you've"
	line "become the"
	cont "Champion…"
	done
endc

FalknerText_WinLoss:
if DEF(_LOCALE_FR)
	text "Mmm… Il me reste"
	line "du chemin pour"
	cont "être le meilleur…"
	done
else
	text "Mmm… It's still a"
	line "long way to become"
	cont "the best trainer…"
	done
endc

BugsyText_WinLoss:
if DEF(_LOCALE_FR)
	text "Tu as beaucoup"
	line "étudié les #MON!"
	done
else
	text "You must have"
	line "studied a lot"
	cont "about #mon!"
	done
endc

WhitneyText_WinLoss:
if DEF(_LOCALE_FR)
	text "Tu es vraiment"
	line "fort!"

	para "Mais je perdrai"
	line "pas la prochaine!"
	done
else
	text "You really are"
	line "strong!"

	para "But I won't lose"
	line "next time!"
	done
endc

MortyText_WinLoss:
if DEF(_LOCALE_FR)
	text "J'ai encore perdu…"
	line "Tu as quelque"

	para "chose de plus que"
	line "la force."
	done
else
	text "I've lost again…"
	line "You have something"

	para "more than just"
	line "strength."
	done
endc

ChuckText_WinLoss:
if DEF(_LOCALE_FR)
	text "Wahaha!"
	line "On s'ennuie"
	cont "jamais avec toi!"
	done
else
	text "Wahaha!"
	line "A battle with you"
	cont "is never boring!"
	done
endc

JasmineText_WinLoss:
if DEF(_LOCALE_FR)
	text "Fidèle à ta"
	line "réputation…"
	done
else
	text "True to your"
	line "reputation…"
	done
endc

PryceText_WinLoss:
if DEF(_LOCALE_FR)
	text "Mmm… Impression-"
	line "nant!"
	done
else
	text "Mmm… Impressive!"
	done
endc

ClairText_WinLoss:
if DEF(_LOCALE_FR)
	text "Bien joué."
	line "…"

	para "Maintenant, donne"
	line "tout!"
	done
else
	text "Way to go."
	line "…"

	para "Now give it"
	line "your all!"
	done
endc

PalmerText_WinLoss:
if DEF(_LOCALE_FR)
	text "Bravo! Je sens"
	line "mon coeur vibrer!"
	done
else
	text "Bravo! I feel"
	line "inspired in my"
	cont "heart!"
	done
endc

LoreleiText_WinLoss:
if DEF(_LOCALE_FR)
	text "Comment oses-tu!"
	done
else
	text "How dare you!"
	done
endc

AgathaText_WinLoss:
if DEF(_LOCALE_FR)
	text "Wouhou!"
	done
else
	text "Woo-hoo!"
	done
endc

WalkerText_WinLoss:
if DEF(_LOCALE_FR)
	text "Je faisais pas"
	line "le poids!"
	done
else
	text "I was no match"
	line "for you!"
	done
endc

YellowText_WinLoss:
if DEF(_LOCALE_FR)
	text "Hahaha! Très"
	line "ennuyeux. C'était"
	line "trop fa- cile"
	line "d'envahir cet"
	line "endroit! Allez les"
	line "petits! Faites-moi"
	line "encore rire!"
	done
else
	text "Hahaha!"
	done
endc

BrockText_Done:
MistyText_Done:
SurgeText_Done:
ErikaText_Done:
JanineText_Done:
SabrinaText_Done:
BlaineText_Done:
BlueText_Done:
FalknerText_Done:
BugsyText_Done:
WhitneyText_Done:
MortyText_Done:
ChuckText_Done:
JasmineText_Done:
PryceText_Done:
ClairText_Done:
PalmerText_Done:
LoreleiText_Done:
AgathaText_Done:
WalkerText_Done:
YellowText_Done:
if DEF(_LOCALE_FR)
	text "C'est bon pour"
	line "aujourd'hui."
	done
else
	text "I'm done battling"
	line "for today."
	done
endc

FightingDojoScheduleQuestionText:
if DEF(_LOCALE_FR)
	text "Un planning!"
	line "Tu lis?"
	done
else
	text "It's a training"
	line "schedule! Read it?"
	done
endc

FightingDojoScheduleSundayText:
if DEF(_LOCALE_FR)
	text "Dim: Jasmine,"
	line "Erika, Sabrina"
	done
else
	text "Sunday: Jasmine,"
	line "Erika, Sabrina"
	done
endc

FightingDojoScheduleMondayText:
if DEF(_LOCALE_FR)
	text "Lun: Falkner,"
	line "Janine, ???"
	done
else
	text "Monday: Falkner,"
	line "Janine, ???"
	done
endc

FightingDojoScheduleMondayWalkerText:
if DEF(_LOCALE_FR)
	text "Lun: Falkner,"
	line "Janine, Walker"
	done
else
	text "Monday: Falkner,"
	line "Janine, Walker"
	done
endc

FightingDojoScheduleTuesdayText:
if DEF(_LOCALE_FR)
	text "Mar: Pryce,"
	line "Blaine, ???"
	done
else
	text "Tuesday: Pryce,"
	line "Blaine, ???"
	done
endc

FightingDojoScheduleTuesdayLoreleiText:
if DEF(_LOCALE_FR)
	text "Mar: Pryce,"
	line "Blaine, Lorelei"
	done
else
	text "Tuesday: Pryce,"
	line "Blaine, Lorelei"
	done
endc

FightingDojoScheduleWednesdayText:
if DEF(_LOCALE_FR)
	text "Mer: Brock,"
	line "Misty, Blue"
	done
else
	text "Wednesday: Brock,"
	line "Misty, Blue"
	done
endc

FightingDojoScheduleThursdayText:
if DEF(_LOCALE_FR)
	text "Jeu: Bugsy,"
	line "???, Morty"
	done
else
	text "Thursday: Bugsy,"
	line "???, Morty"
	done
endc

FightingDojoScheduleThursdayPalmerText:
if DEF(_LOCALE_FR)
	text "Jeu: Bugsy,"
	line "Palmer, Morty"
	done
else
	text "Thursday: Bugsy,"
	line "Palmer, Morty"
	done
endc

FightingDojoScheduleFridayText:
if DEF(_LOCALE_FR)
	text "Ven: Lt.Surge,"
	line "???, Clair"
	done
else
	text "Friday: Lt.Surge,"
	line "???, Clair"
	done
endc

FightingDojoScheduleFridayYellowText:
if DEF(_LOCALE_FR)
	text "Ven: Lt.Surge,"
	line "Yellow, Clair"
	done
else
	text "Friday: Lt.Surge,"
	line "Yellow, Clair"
	done
endc

FightingDojoScheduleSaturdayText:
if DEF(_LOCALE_FR)
	text "Sam: Whitney,"
	line "Chuck, ???"
	done
else
	text "Saturday: Whitney,"
	line "Chuck, ???"
	done
endc

FightingDojoScheduleSaturdayAgathaText:
if DEF(_LOCALE_FR)
	text "Sam: Whitney,"
	line "Chuck, Agatha"
	done
else
	text "Saturday: Whitney,"
	line "Chuck, Agatha"
	done
endc
