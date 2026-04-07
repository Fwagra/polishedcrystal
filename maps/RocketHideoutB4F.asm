RocketHideoutB4F_MapScriptHeader:
	def_scene_scripts
	scene_script RocketHideoutB4FMeetLeadersScene
	scene_script RocketHideoutB4FMetLeadersScene

	def_callbacks
	callback MAPCALLBACK_OBJECTS, RocketHideoutB4FLiftKeyScript
	callback MAPCALLBACK_TILES, RocketHideoutB4FDoorScript

	def_warp_events
	warp_event 11, 10, ROCKET_HIDEOUT_B3F, 2
	warp_event 16, 15, ROCKET_HIDEOUT_ELEVATOR, 1
	warp_event 17, 15, ROCKET_HIDEOUT_ELEVATOR, 1

	def_coord_events
	coord_event 16, 11, 0, RocketHideoutB4FMeetLeadersLeftScript
	coord_event 17, 11, 0, RocketHideoutB4FMeetLeadersRightScript

	def_bg_events
	bg_event 17,  1, BGEVENT_ITEM + MAX_POTION, EVENT_ROCKET_HIDEOUT_B4F_HIDDEN_MAX_POTION

	def_object_events
	object_event 17,  3, SPRITE_CANDELA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, (1 << EVE) | (1 << NITE), 0, OBJECTTYPE_SCRIPT, 0, RocketHideoutB4FCandelaScript, -1
	object_event 16,  6, SPRITE_SPARK, SPRITEMOVEDATA_STANDING_UP, 0, 0, (1 << EVE) | (1 << NITE), 0, OBJECTTYPE_SCRIPT, 0, RocketHideoutB4FSparkScript, -1
	object_event 19,  6, SPRITE_BLANCHE, SPRITEMOVEDATA_STANDING_UP, 0, 0, (1 << EVE) | (1 << NITE), 0, OBJECTTYPE_SCRIPT, 0, RocketHideoutB4FBlancheScript, -1
	object_event  3,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, RocketHideoutB4FYoungsterArdenScript, -1
	object_event 15, 12, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_TRAINER, 2, RocketHideoutB4FTeacherSerena, -1
	object_event 18, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_TRAINER, 2, RocketHideoutB4FSuperNerdNolan, -1
	keyitemball_event 2,  2, LIFT_KEY, EVENT_ROCKET_HIDEOUT_B4F_LIFT_KEY
	itemball_event 1,  4, X_SP_ATK,    1, EVENT_ROCKET_HIDEOUT_B4F_X_SP_ATK
	itemball_event 2, 12, PP_UP,        1, EVENT_ROCKET_HIDEOUT_B4F_PP_UP
	itemball_event 4, 20, DUBIOUS_DISC, 1, EVENT_ROCKET_HIDEOUT_B4F_DUBIOUS_DISC

	object_const_def
	const ROCKETHIDEOUTB4F_CANDELA
	const ROCKETHIDEOUTB4F_SPARK
	const ROCKETHIDEOUTB4F_BLANCHE
	const ROCKETHIDEOUTB4F_YOUNGSTER_ARDEN
	const ROCKETHIDEOUTB4F_TEACHER_SERENA
	const ROCKETHIDEOUTB4F_SUPER_NERD_NOLAN
	const ROCKETHIDEOUTB4F_LIFT_KEY

RocketHideoutB4FDoorScript:
	checkevent EVENT_BEAT_TEACHER_SERENA
	iftruefwd .beat_serena
	changeblock 16, 10, $69
	endcallback
.beat_serena
	checkevent EVENT_BEAT_SUPER_NERD_NOLAN
	iftruefwd .beat_theo
	changeblock 16, 10, $69
	endcallback
.beat_theo
	changeblock 16, 10, $0d
	endcallback

RocketHideoutB4FLiftKeyScript:
	checkevent EVENT_BEAT_YOUNGSTER_ARDEN
	iftruefwd .beat_arden
	disappear ROCKETHIDEOUTB4F_LIFT_KEY
.beat_arden
	endcallback

RocketHideoutB4FMeetLeadersLeftScript:
	checktime (1 << EVE) | (1 << NITE)
	iffalse TooEarly
	applymovement PLAYER, .MovePlayerUp
	sjumpfwd RocketHideoutB4FMeetLeadersScript

.MovePlayerUp:
	step_up
	step_up
	step_up
	step_up
	step_right
	turn_head_up
	step_end

RocketHideoutB4FMeetLeadersRightScript:
	checktime (1 << EVE) | (1 << NITE)
	iffalse TooEarly
	applymovement PLAYER, .MovePlayerUp
	sjumpfwd RocketHideoutB4FMeetLeadersScript

.MovePlayerUp:
	step_up
	step_up
	step_up
	step_up
	step_end

RocketHideoutB4FMeetLeadersScript:
	setscene $1
	showtext .CandelaIntro1Text
	turnobject ROCKETHIDEOUTB4F_SPARK, RIGHT
	showtext .BlancheIntro1Text
	turnobject ROCKETHIDEOUTB4F_BLANCHE, LEFT
	turnobject ROCKETHIDEOUTB4F_SPARK, UP
	pause 20
	turnobject ROCKETHIDEOUTB4F_SPARK, RIGHT
	showtext .SparkIntro1Text
	turnobject ROCKETHIDEOUTB4F_SPARK, UP
	turnobject ROCKETHIDEOUTB4F_BLANCHE, UP
	showtext .CandelaIntro2Text
	turnobject ROCKETHIDEOUTB4F_SPARK, RIGHT
	showtext .BlancheIntro2Text
	turnobject ROCKETHIDEOUTB4F_BLANCHE, LEFT
	turnobject ROCKETHIDEOUTB4F_SPARK, UP
	showtext .SparkIntro2Text
	turnobject ROCKETHIDEOUTB4F_SPARK, DOWN
	showtext .SparkIntro3Text
	turnobject ROCKETHIDEOUTB4F_BLANCHE, DOWN
	showtext .CandelaIntro3Text
	setmapobjectmovedata ROCKETHIDEOUTB4F_SPARK, SPRITEMOVEDATA_STANDING_DOWN
	setmapobjectmovedata ROCKETHIDEOUTB4F_BLANCHE, SPRITEMOVEDATA_STANDING_DOWN
	end


.CandelaIntro1Text:
if DEF(_LOCALE_FR)
	text "Candela: Je te"
	line "dis que la force"
	cont "brute gagne!"

	para "L'entraînement"
	line "doit être dur,"
	cont "comme un combat!"
	done
else
	text "Candela: I'm tell-"
	line "ing you, raw power"
	cont "wins every time!"

	para "Training should be"
	line "tough, like a"
	cont "battle!"
	done
endc

.BlancheIntro1Text:
if DEF(_LOCALE_FR)
	text "Blanche: Sans"
	line "stratégie, la"
	cont "force est vaine."

	para "Un bon plan fait"
	line "gagner à chaque"
	cont "fois."
	done
else
	text "Blanche: Strength"
	line "is pointless with-"
	cont "out strategy."

	para "Smart planning"
	line "wins, every time."
	done
endc

.SparkIntro1Text:
if DEF(_LOCALE_FR)
	text "Spark: Vous"
	line "n'y êtes pas du"
	cont "tout!"

	para "L'instinct est la"
	line "clé… Suis ton"
	cont "intuition!"
	done
else
	text "Spark: Both of you"
	line "are missing the"
	cont "point!"

	para "Instinct is key--"
	line "trust your gut!"
	done
endc

.CandelaIntro2Text:
if DEF(_LOCALE_FR)
	text "Candela: L'ins-"
	line "tinct? C'est au"
	cont "pif!"

	para "Les vrais"
	line "dresseurs misent"
	cont "sur la force!"
	done
else
	text "Candela: Instinct?"
	line "That's just guess-"
	cont "work!"

	para "Real trainers rely"
	line "on strength!"
	done
endc

.BlancheIntro2Text:
if DEF(_LOCALE_FR)
	text "Blanche: Candela,"
	line "Spark, ce n'est"
	cont "pas le moment!"

	para "Et le projet du"
	line "Grand Arbre?"
	done
else
	text "Blanche: Candela,"
	line "Spark, this isn't"
	cont "the time!"

	para "What about the"
	line "the Great Tree"
	cont "project?"
	done
endc

.SparkIntro2Text:
if DEF(_LOCALE_FR)
	text "Spark: Oui! Le"
	line "grand cerisier--"
	done
else
	text "Spark: Right! The"
	line "big cherry tree--"
	done
endc

.SparkIntro3Text:
if DEF(_LOCALE_FR)
	text "Attends, c'est"
	line "qui, lui?"
	done
else
	text "Wait, who's that?"
	done
endc

.CandelaIntro3Text:
if DEF(_LOCALE_FR)
	text "Candela: Celui-là"
	line "a l'air fort!"

	para "Puisque tu es"
	line "arrivé jusque-là,"
	cont "bats-toi!"

	para "Si tu gagnes, on"
	line "te dira tout sur"
	cont "notre projet!"
	done
else
	text "Candela: Looks"
	line "like this one has"
	cont "power!"

	para "Since you made it"
	line "this far, let's"
	cont "battle!"

	para "If you win, we'll"
	line "let you in on our"
	cont "big project!"
	done
endc

RocketHideoutB4FMeetLeadersScene:
RocketHideoutB4FMetLeadersScene:
TooEarly:
	end


RocketHideoutB4FSparkScript:
	faceplayer
	checkevent EVENT_BEAT_SPARK
	iftrue_jumptext .AfterText2
	opentext
	writetext .GreetingText
	yesorno
	iffalsefwd .Refused
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer SPARK_T, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SPARK
	opentext
	writetext .AfterText1
	waitbutton
	verbosegivekeyitem MALIGN_LURE
	writetext .AfterText2
	waitbutton
	checkevent EVENT_BEAT_CANDELA
	iffalse_endtext
	checkevent EVENT_BEAT_BLANCHE
	iffalse_endtext
	sjump RocketHideoutB4FDefeatedAllLeadersScript

.Refused:
	jumpopenedtext .RefusedText

.GreetingText:
if DEF(_LOCALE_FR)
	text "Spark: Hé! Prêt à"
	line "suivre ton ins-"
	cont "tinct en combat?"
	done
else
	text "Spark: Hey! Ready"
	line "to trust your gut?"
	cont "In a battle?"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Super! Voyons"
	line "jusqu'où ton ins-"
	cont "tinct te mène!"
	done
else
	text "Sweet! Let's see"
	line "how far your inst-"
	cont "inct takes you!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Wow, tu as assuré!"

	para "Ton instinct ne"
	line "t'a pas trompé!"
	done
else
	text "Whoa, you totally"
	line "nailed it!"

	para "Guess your gut"
	line "was right!"
	done
endc

.AfterText1:
if DEF(_LOCALE_FR)
	text "Spark: Voilà"
	line "l'APAT MALIN."
	done
else
	text "Spark: Here's the"
	line "Malign Lure."
	done
endc

.AfterText2:
if DEF(_LOCALE_FR)
	text "L'APAT MALIN"
	line "attire une énergie"
	cont "audacieuse."

	para "C'est ma façon de"
	line "déclencher la"
	cont "créativité!"

	para "Utilise-le à fond!"
	done
else
	text "The Malign Lure"
	line "draws on bold"
	cont "energy."

	para "It's my way of"
	line "sparking some"
	cont "creativity!"

	para "Use it boldly!"
	done
endc

.RefusedText:
if DEF(_LOCALE_FR)
	text "Oh, dommage!"
	line "Ne laisse pas la"
	cont "peur te freiner!"

	para "Reviens quand tu"
	line "te sentiras prêt."
	done
else
	text "Aw, bummer!"
	line "Don't let fear"
	cont "hold you back!"

	para "Come back when"
	line "you're feeling it."
	done
endc

RocketHideoutB4FCandelaScript:
	faceplayer
	checkevent EVENT_BEAT_CANDELA
	iftrue_jumptext .AfterText2
	opentext
	writetext .GreetingText
	yesorno
	iffalsefwd .Refused
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer CANDELA, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CANDELA
	opentext
	writetext .AfterText1
	waitbutton
	verbosegivekeyitem HARSH_LURE
	writetext .AfterText2
	waitbutton
	checkevent EVENT_BEAT_SPARK
	iffalse_endtext
	checkevent EVENT_BEAT_BLANCHE
	iffalse_endtext
	sjump RocketHideoutB4FDefeatedAllLeadersScript

.Refused:
	jumpopenedtext .RefusedText

.GreetingText:
if DEF(_LOCALE_FR)
	text "Candela: Prêt à"
	line "tester ta force?"
	done
else
	text "Candela: Ready to"
	line "test out your"
	cont "strength?"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Voilà l'esprit!"
	line "Montre ta"
	cont "puissance!"
	done
else
	text "That's the spirit!"
	line "Show me your"
	cont "power!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "OK, tu as prouvé"
	line "ta force aujourd'-"
	cont "hui."

	para "J'admets ma"
	line "défaite."
	done
else
	text "Alright, you've"
	line "proven your"
	cont "strength today."

	para "I'll admit defeat."
	done
endc

.AfterText1:
if DEF(_LOCALE_FR)
	text "Candela: Voilà"
	line "l'APAT RUGUEUX."
	done
else
	text "Candela: Here's the"
	line "Harsh Lure."
	done
endc

.AfterText2:
if DEF(_LOCALE_FR)
	text "Candela: L'APAT"
	line "RUGUEUX attire une"
	cont "puissance féroce."

	para "C'est ma contri-"
	line "bution à notre"
	cont "projet."

	para "Utilise-le bien."
	done
else
	text "Candela: The Harsh"
	line "Lure draws fierce"
	cont "power."

	para "This is my contri-"
	line "bution to our"
	cont "project."

	para "Use it wisely."
	done
endc

.RefusedText:
if DEF(_LOCALE_FR)
	text "Non? T'es pas prêt"
	line "alors."

	para "Reviens quand tu"
	line "auras plus de feu!"
	done
else
	text "No? Guess your"
	line "not ready yet."

	para "Come back when you"
	line "have more fire!"
	done
endc

RocketHideoutB4FBlancheScript:
	faceplayer
	checkevent EVENT_BEAT_BLANCHE
	iftrue_jumptext .AfterText2
	opentext
	writetext .GreetingText
	yesorno
	iffalsefwd .Refused
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer BLANCHE, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLANCHE
	opentext
	writetext .AfterText1
	waitbutton
	verbosegivekeyitem POTENT_LURE
	writetext .AfterText2
	waitbutton
	checkevent EVENT_BEAT_SPARK
	iffalse_endtext
	checkevent EVENT_BEAT_CANDELA
	iffalse_endtext
	sjump RocketHideoutB4FDefeatedAllLeadersScript

.Refused:
	jumpopenedtext .RefusedText

.GreetingText:
if DEF(_LOCALE_FR)
	text "Blanche: Tu aimes"
	line "la stratégie?"

	para "On teste ta tac-"
	line "tique?"
	done
else
	text "Blanche: Do you"
	line "value strategy?"

	para "Shall we test"
	line "your tactics?"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Très bien… Voyons"
	line "ta technique!"
	done
else
	text "Very well, let's"
	line "see your"
	cont "technique!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Un plan bien mené,"
	line "en effet."

	para "Tu m'as battue."
	done
else
	text "A well-executed"
	line "plan, indeed."

	para "You've bested me."
	done
endc

.AfterText1:
if DEF(_LOCALE_FR)
	text "Blanche: Voilà"
	line "l'APAT PUISSANT."
	done
else
	text "Blanche: This is"
	line "the Potent Lure."
	done
endc

.AfterText2:
if DEF(_LOCALE_FR)
	text "L'APAT PUISSANT"
	line "amplifie la"
	cont "précision."

	para "C'est ma contri-"
	line "bution à notre"
	cont "succès."

	para "Utilise-le bien."
	done
else
	text "The Potent Lure"
	line "amplifies its"
	cont "precision."

	para "It's my contri-"
	line "bution to ensuring"
	cont "our success."

	para "Use it carefully."
	done
endc

.RefusedText:
if DEF(_LOCALE_FR)
	text "Hmm… pas confiant?"

	para "Reviens quand tu"
	line "seras prêt à"
	cont "anticiper."
	done
else
	text "Hmm, not"
	line "feeling confident?"

	para "Return when you're"
	line "ready to think"
	cont "ahead."
	done
endc

RocketHideoutB4FYoungsterArdenScript:
	faceplayer
	checkevent EVENT_BEAT_YOUNGSTER_ARDEN
	iftruefwd .AfterBattle
	opentext
	writetext .GreetingText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer YOUNGSTER, ARDEN
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_YOUNGSTER_ARDEN
	readvar VAR_FACING
	ifnotequal RIGHT, .NotLeftOfArden
	moveobject ROCKETHIDEOUTB4F_LIFT_KEY, 4, 2
.NotLeftOfArden
	appear ROCKETHIDEOUTB4F_LIFT_KEY
.AfterBattle
	showtext .AfterText
	end

.GreetingText
if DEF(_LOCALE_FR)
	text "Team Valor, c'est…"

	para "Attends--non!"

	para "Enfin… Je crois"
	line "que je suis perdu!"
	done
else
	text "Team Valor is…"

	para "Wait--no!"

	para "I mean, I think"
	line "I'm lost!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "C'était où,"
	line "l'ascenseur?"
	done
else
	text "Which way was"
	line "the elevator?"
	done
endc

.AfterText:
if DEF(_LOCALE_FR)
	text "Oh non, j'ai"
	line "laissé tomber la"
	cont "CLE ASC.!"

	para "Candela va être"
	line "furieuse!"
	done
else
	text "Aww, I dropped"
	line "the lift key!"

	para "Candela is going"
	line "to be so mad!"
	done
endc

RocketHideoutB4FTeacherSerena:
	trainer TEACHER_F, SERENA, EVENT_BEAT_TEACHER_SERENA, .SeenText, .AfterText, 0, .Script

.Script
	checkevent EVENT_BEAT_TEACHER_SERENA
	iftruefwd .AfterScript
	jumpthistextfaceplayer

.AfterScript
	checkevent EVENT_BEAT_SUPER_NERD_NOLAN
	iftruefwd .DoorScript
	endifjustbattled
	jumptextfaceplayer .AfterText
	end

.DoorScript
	checkjustbattled
	iffalsefwd .skip_open
	changeblock 16, 10, $0d
	playsound SFX_ENTER_DOOR
	waitsfx
	refreshmap
	special RestartMapMusic
	end
.skip_open
	jumptextfaceplayer .AfterText
	end

.AfterText
if DEF(_LOCALE_FR)
	text "Les chefs ne sont"
	line "là que la nuit."

	para "Le jour, ils"
	line "travaillent à"
	cont "l'université."
	done
else
	text "The leaders are"
	line "only here at"
	cont "night."

	para "They work at"
	line "the university"
	cont "during the day."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Voyons si tu es"
	line "assez malin"

	para "pour affronter les"
	line "chefs!"
	done
else
	text "Let me see if you"
	line "are smart enough"

	para "to take on the"
	line "leaders!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Cours terminé!"
	done
else
	text "Class dismissed!"
	done
endc

RocketHideoutB4FSuperNerdNolan:
	trainer TEACHER_M, NOLAN, EVENT_BEAT_SUPER_NERD_NOLAN, .SeenText, .AfterText, 0, .Script

.Script
	checkevent EVENT_BEAT_SUPER_NERD_NOLAN
	iftruefwd .AfterScript
	jumpthistextfaceplayer

.AfterScript
	checkevent EVENT_BEAT_TEACHER_SERENA
	iftruefwd .DoorScript
	endifjustbattled
	jumptextfaceplayer .AfterText
	end

.DoorScript
	checkjustbattled
	iffalsefwd .skip_open
	changeblock 16, 10, $0d
	playsound SFX_ENTER_DOOR
	waitsfx
	refreshmap
	special RestartMapMusic
	end
.skip_open
	jumptextfaceplayer .AfterText
	end

.AfterText
if DEF(_LOCALE_FR)
	text "Les chefs se"
	line "disputent souvent,"
	cont "mais ils sont"
	cont "amis."
	done
else
	text "The leaders argue"
	line "a lot, but they"
	cont "are good friends."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Tu veux défier les"
	line "chefs?"

	para "Tu dois d'abord me"
	line "battre!"
	done
else
	text "You here to chal-"
	line "lenge the leaders?"

	para "You need to beat"
	line "me first!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Je me suis"
	line "écroulé!"
	done
else
	text "I choked!"
	done
endc

RocketHideoutB4FDefeatedAllLeadersScript:
	closetext
	special FadeOutPalettes
	warpfacing UP, ROCKET_HIDEOUT_B4F, 17, 7
	turnobject ROCKETHIDEOUTB4F_SPARK, DOWN
	turnobject ROCKETHIDEOUTB4F_BLANCHE, DOWN
	special LoadMapPalettes
	special FadeInPalettes_EnableDynNoApply
	showtext .FinalText
	end

.FinalText:
if DEF(_LOCALE_FR)
	text "Candela: Tu es"
	line "plus fort que je"
	cont "ne pensais."

	para "Les sprays qu'on"
	line "t'a donnés cachent"
	cont "plus qu'il n'y"
	cont "paraît."

	para "Blanche: Chaque"
	line "apat contient"

	para "l'essence d'un"
	line "oiseau légendaire."

	para "Ils ont été créés"
	line "pour appeler"

	para "les autres de leur"
	line "espèce."

	para "Spark: Mais ça ne"
	line "sert qu'au bon"
	cont "endroit."

	para "C'est pour ça que"
	line "le Grand Arbre est"
	cont "important."

	para "Candela: L'arbre"
	line "est ancien."

	para "C'est un lieu"
	line "sacré de repos."

	para "Il est lié à"
	line "l'énergie de la"
	cont "région."

	para "Blanche: Des"
	line "oiseaux très"

	para "puissants s'y"
	line "rassemblent depuis"
	cont "des générations."

	para "L'arbre amplifie"
	line "l'appel des apats."

	para "Spark: Alors si tu"
	line "les utilises là-"
	cont "bas…"

	para "qui sait ce qui"
	line "peut apparaître!"
	done
else
	text "Candela: You're"
	line "stronger than I"
	cont "expected."

	para "The sprays we've"
	line "given you are more"
	cont "than they seem."

	para "Blanche: Each"
	line "lure contains the"

	para "essence of a"
	line "legendary bird"
	cont "#mon."

	para "They were created"
	line "to call out to"

	para "others of their"
	line "kind."

	para "Spark: But they're"
	line "only useful in the"
	cont "right place."

	para "That's why the"
	line "Great Tree is"
	cont "important."

	para "Candela: The tree"
	line "is ancient,"

	para "a sacred site for"
	line "roosting."

	para "It's connected to"
	line "the energy of the"
	cont "region."

	para "Blanche: Birds of"
	line "great power have"

	para "gathered there for"
	line "generations."

	para "The tree amplifies"
	line "the call of the"
	cont "lures."

	para "Spark: So if you"
	line "use them there,"

	para "who knows what"
	line "might appear!"
	done
endc
