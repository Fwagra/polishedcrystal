BattleTower2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  1, BATTLE_TOWER_1F, 4

	def_coord_events

	def_bg_events
	bg_event  4,  3, BGEVENT_UP, BattleTower2FTVScript
	bg_event  5,  3, BGEVENT_UP, BattleTower2FTVScript
	bg_event 16,  3, BGEVENT_UP, BattleTower2FTVScript
	bg_event 17,  3, BGEVENT_UP, BattleTower2FTVScript

	def_object_events
	object_event  4,  6, SPRITE_CHERYL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTower2FCherylScript, EVENT_BATTLE_TOWER_CHERYL
	object_event  7,  7, SPRITE_RILEY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTower2FRileyScript, EVENT_BATTLE_TOWER_RILEY
	object_event  9,  4, SPRITE_BUCK, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTower2FBuckScript, EVENT_BATTLE_TOWER_BUCK
	object_event 17,  8, SPRITE_MARLEY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTower2FMarleyScript, EVENT_BATTLE_TOWER_MARLEY
	object_event 12,  7, SPRITE_MIRA, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTower2FMiraScript, EVENT_BATTLE_TOWER_MIRA
	object_event 15,  6, SPRITE_ANABEL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTower2FAnabelScript, EVENT_BATTLE_TOWER_ANABEL
	object_event  4,  6, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BattleTower2FCooltrainermText, EVENT_MURKY_SWAMP_CHERYL
	object_event  7,  7, SPRITE_LADY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, BattleTower2FLadyText, EVENT_DIM_CAVE_RILEY
	object_event  9,  4, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BattleTower2FTwinText, EVENT_CINNABAR_VOLCANO_BUCK
	object_event 17,  8, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BattleTower2FSuperNerdText, EVENT_QUIET_CAVE_MARLEY
	pokemon_event 18,  8, PIKACHU, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_RED, BattleTower2FPikachuText, EVENT_QUIET_CAVE_MARLEY
	object_event 12,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BattleTower2FYoungsterText, EVENT_SCARY_CAVE_MIRA
	object_event 15,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BattleTower2FBlackbeltText, EVENT_BATTLE_TOWER_OUTSIDE_ANABEL

	object_const_def
	const BATTLETOWER2F_CHERYL
	const BATTLETOWER2F_RILEY
	const BATTLETOWER2F_BUCK
	const BATTLETOWER2F_MARLEY
	const BATTLETOWER2F_MIRA
	const BATTLETOWER2F_ANABEL

BattleTower2FTVScript:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Un combat intense"
	line "passe à la télé."
	done
else
	text "There's an intense"
	line "battle on the TV."
	done
endc

BattleTower2FCherylScript:
	checkflag ENGINE_CHERYL_DONE_TODAY
	iftrue_jumptextfaceplayer .AfterText
	faceplayer
	opentext
	writethistext
if DEF(_LOCALE_FR)
		text "Oh, bonjour,"
		line "<PLAYER>."

		para "Ca fait longtemps…"

		para "Un combat, ça"
		line "te dit?"
		done
else
		text "Oh, hello,"
		line "<PLAYER>."

		para "It's been a long"
		line "time… Hasn't it?"

		para "Would you care"
		line "to have a battle"
		cont "with me?"
		done
endc
	yesorno
	iffalse_jumpopenedtext .RefuseText
	setflag ENGINE_CHERYL_DONE_TODAY
	writethistext
if DEF(_LOCALE_FR)
		text "Attention: mes"
		line "#mon"
		cont "peuvent être"
		cont "très remuants."
		done
else
		text "I should warn you,"
		line "my #mon can be"
		cont "quite rambunc-"
		cont "tious."
		done
endc
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked BATTLETOWER2F_CHERYL
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .Team3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftruefwd .Team2
	loadtrainer CHERYL, 1
	sjumpfwd .StartBattle
.Team2
	loadtrainer CHERYL, 2
	sjumpfwd .StartBattle
.Team3
	loadtrainer CHERYL, 3
.StartBattle
	startbattle
	reloadmapafterbattle
	jumpthistext

.AfterText:
if DEF(_LOCALE_FR)
	text "Etre dresseur,"
	line "c'est pas simple."

	para "Plus tu combats,"
	line "plus tu"
	cont "découvres."

	para "Et tu sais quoi?"
	line "J'aime les"
	cont "#mon aussi!"
	done
else
	text "Being a trainer"
	line "isn't easy."

	para "The more you"
	line "battle, the more"
	cont "you discover."

	para "But, you know?"
	line "I love #mon"
	cont "for that, too!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Trouver le bon"
	line "équilibre,"
	cont "attaque/défense…"

	para "Ce n'est pas"
	line "facile."
	done
else
	text "Striking the right"
	line "balance of offense"
	cont "and defense…"

	para "It's not easy"
	line "to do."
	done
endc

.RefuseText:
if DEF(_LOCALE_FR)
	text "Hi hi…"

	para "Les #mon"
	line "seraient"
	cont "épuisés,"

	para "si on combattait"
	line "tout le temps,"
	cont "pas vrai?"
	done
else
	text "Giggle…"

	para "#mon would get"
	line "all worn out if we"

	para "battled all the"
	line "time, wouldn't"
	cont "they?"
	done
endc

BattleTower2FRileyScript:
	checkflag ENGINE_RILEY_DONE_TODAY
	iftrue_jumptextfaceplayer .AfterText
	faceplayer
	opentext
	writethistext
if DEF(_LOCALE_FR)
		text "Salut. Ca faisait"
		line "longtemps."

		para "Ce regard…"
		line "Tu es prêt"
		cont "à combattre?"
		done
else
		text "Hi. Long time,"
		line "no see."

		para "That look you"
		line "have… I take it"

		para "you're ready for"
		line "battle?"
		done
endc
	yesorno
	iffalse_jumpopenedtext .RefuseText
	setflag ENGINE_RILEY_DONE_TODAY
	writethistext
if DEF(_LOCALE_FR)
		text "Un combat, c'est"
		line "notre façon"
		cont "de saluer!"
		done
else
		text "Battling is our"
		line "way of greeting!"
		done
endc
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked BATTLETOWER2F_RILEY
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .Team2
	loadtrainer RILEY, 1
	sjumpfwd .StartBattle
.Team2
	loadtrainer RILEY, 2
.StartBattle
	startbattle
	reloadmapafterbattle
	jumpthistext

.AfterText:
if DEF(_LOCALE_FR)
	text "Si je n'étais pas"
	line "dans la Cave S."

	para "Et si toi non"
	line "plus…"

	para "On ne se serait"
	line "peut-être"
	cont "jamais vus."

	para "Ou alors ailleurs?"
	done
else
	text "If I weren't in"
	line "Dim Cave then…"

	para "If you hadn't been"
	line "in Dim Cave then…"

	para "Perhaps we would"
	line "have never met."

	para "Or, would we have"
	line "met elsewhere?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Parfois, on"
	line "combat, parfois"
	cont "en équipe."

	para "C'est fou comme"
	line "les dresseurs"
	cont "se croisent."
	done
else
	text "At times we bat-"
	line "tle, and sometimes"
	cont "we team up."

	para "It's great how"
	line "trainers can"
	cont "interact."
	done
endc

.RefuseText:
if DEF(_LOCALE_FR)
	text "D'accord."
	line "Je t'attends"
	cont "quand tu veux."
	done
else
	text "Oh, all right."
	line "Then we'll wait"
	cont "till you're ready."
	done
endc

BattleTower2FBuckScript:
	checkflag ENGINE_BUCK_DONE_TODAY
	iftrue_jumptextfaceplayer .AfterText
	faceplayer
	opentext
	writethistext
if DEF(_LOCALE_FR)
		text "Eh eh eh!"
		line "Te voilà enfin!"

		para "Alors, on"
		line "se bat?"
		done
else
		text "Ehehehe! You're"
		line "here at last!"

		para "So we are going"
		line "to battle?"
		done
endc
	yesorno
	iffalse_jumpopenedtext .RefuseText
	setflag ENGINE_BUCK_DONE_TODAY
	writethistext
if DEF(_LOCALE_FR)
		text "Je sens mes"
		line "#mon"
		cont "frissonner"

		para "dans leurs"
		line "# Balls!"
		done
else
		text "I can feel my"
		line "#mon shivering"

		para "inside their #"
		line "Balls with antici-"
		cont "pation!"
		done
endc
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked BATTLETOWER2F_BUCK
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .Team2
	loadtrainer BUCK, 1
	sjumpfwd .StartBattle
.Team2
	loadtrainer BUCK, 2
.StartBattle
	startbattle
	reloadmapafterbattle
	jumpthistext

.AfterText:
if DEF(_LOCALE_FR)
	text "Pff… Trop fort!"

	para "Je vais encore"
	line "améliorer"
	cont "mon équipe."
	done
else
	text "Fweh! Too much!"

	para "I guess I'll keep"
	line "improving my team."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Hé hé hé!"
	line "T'es brûlant!"
	done
else
	text "Heeheehee!"
	line "So hot, you!"
	done
endc

.RefuseText:
if DEF(_LOCALE_FR)
	text "Hein? Quoi?"
	line "Ca casse"
	cont "l'ambiance."
	done
else
	text "Huh, what? That"
	line "takes the wind out"
	cont "of my sails."
	done
endc

BattleTower2FMarleyScript:
	checkflag ENGINE_MARLEY_DONE_TODAY
	iftrue_jumptextfaceplayer .AfterText
	faceplayer
	opentext
	writethistext
if DEF(_LOCALE_FR)
		text "…Oh? Un combat?"
		line "Avec moi?"
		done
else
		text "…Oh? A battle?"
		line "With me?"
		done
endc
	yesorno
	iffalse_jumpopenedtext .RefuseText
	setflag ENGINE_MARLEY_DONE_TODAY
	writethistext
if DEF(_LOCALE_FR)
		text "…OK. Je…"
		line "ne perdrai…"
		cont "pas…!"
		done
else
		text "…OK. I… won't"
		line "lose…!"
		done
endc
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked BATTLETOWER2F_MARLEY
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .Team3
	checkevent EVENT_BEAT_ELITE_FOUR
	iftruefwd .Team2
	loadtrainer MARLEY, 1
	sjumpfwd .StartBattle
.Team2
	loadtrainer MARLEY, 2
	sjumpfwd .StartBattle
.Team3
	loadtrainer MARLEY, 3
.StartBattle
	startbattle
	reloadmapafterbattle
	jumpthistext

.AfterText:
if DEF(_LOCALE_FR)
	text "…J'aime bien"
	line "combattre"
	cont "avec toi."

	para "…Un peu."
	line "Vraiment"
	cont "un tout petit."
	done
else
	text "…I might like"
	line "battling with you."

	para "…Just a little."
	line "Only a tiny bit."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "…Oh."
	done
else
	text "…Awww."
	done
endc

.RefuseText:
if DEF(_LOCALE_FR)
	text "…Toi, alors."
	line "Je commence"
	cont "à t'aimer moins."
	done
else
	text "…Oh, you. I'm get-"
	line "ting to dislike"
	cont "you a little."
	done
endc

BattleTower2FMiraScript:
	checkflag ENGINE_MIRA_DONE_TODAY
	iftrue_jumptextfaceplayer .AfterText
	faceplayer
	opentext
	writethistext
if DEF(_LOCALE_FR)
		text "<PLAYER>! Mira est"
		line "plus forte!"

		para "S'il te plaît!"
		line "Un combat"
		cont "avec Mira!"
		done
else
		text "<PLAYER>! Mira is"
		line "stronger now!"

		para "Please! Battle"
		line "with Mira!"
		done
endc
	yesorno
	iffalse_jumpopenedtext .RefuseText
	setflag ENGINE_MIRA_DONE_TODAY
	writethistext
if DEF(_LOCALE_FR)
		text "Mira va te"
		line "montrer que Mira"

		para "ne se perd plus,"
		line "<PLAYER>!"
		done
else
		text "Mira will show you"
		line "that Mira doesn't"

		para "get lost anymore,"
		line "<PLAYER>!"
		done
endc
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked BATTLETOWER2F_MIRA
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .Team2
	loadtrainer MIRA, 1
	sjumpfwd .StartBattle
.Team2
	loadtrainer MIRA, 2
.StartBattle
	startbattle
	reloadmapafterbattle
	jumpthistext

.AfterText:
if DEF(_LOCALE_FR)
	text "<PLAYER>, tu es"
	line "toujours avec"
	cont "tes #mon."

	para "C'est pour ça"
	line "que tu es"
	cont "si fort."

	para "Mira comprend!"
	done
else
	text "<PLAYER>, you are"
	line "always with your"
	cont "#mon."

	para "That's how you got"
	line "to be so strong."

	para "Mira is beginning"
	line "to understand!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Mira se demande"
	line "jusqu'où elle"

	para "peut aller"
	line "à la Tour"
	cont "de Combat."
	done
else
	text "Mira wonders if"
	line "she can get very"

	para "far in the Battle"
	line "Tower."
	done
endc

.RefuseText:
if DEF(_LOCALE_FR)
	text "Mira est un peu"
	line "triste…"
	done
else
	text "Mira is a little"
	line "sad…"
	done
endc

BattleTower2FAnabelScript:
	checkflag ENGINE_ANABEL_DONE_TODAY
	iftrue_jumptextfaceplayer .AfterText
	faceplayer
	opentext
	writethistext
if DEF(_LOCALE_FR)
		text "Tu es vraiment"
		line "venu me voir…"

		para "Je n'aurai pas"
		line "à me retenir…"

		para "Tu es prêt?"
		done
else
		text "You really did"
		line "come to see me…"

		para "I won't have to"
		line "hold back against"
		cont "you…"

		para "Are you ready?"
		done
endc
	yesorno
	iffalse_jumpopenedtext .RefuseText
	setflag ENGINE_ANABEL_DONE_TODAY
	writethistext
if DEF(_LOCALE_FR)
		text "Commençons,"
		line "d'accord?"
		done
else
		text "Let's begin,"
		line "shall we?"
		done
endc
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked BATTLETOWER2F_ANABEL
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .Team2
	loadtrainer ANABEL, 1
	sjumpfwd .StartBattle
.Team2
	loadtrainer ANABEL, 2
.StartBattle
	startbattle
	reloadmapafterbattle
	jumpthistext

.AfterText:
if DEF(_LOCALE_FR)
	text "C'était bien…"

	para "Je n'ai jamais eu"
	line "de combat"
	cont "de #mon"

	para "aussi agréable"
	line "avant…"
	done
else
	text "That was fun…"

	para "I have never had"
	line "a #mon battle"

	para "so enjoyable"
	line "before…"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Merci…"
	done
else
	text "Thank you…"
	done
endc

.RefuseText:
if DEF(_LOCALE_FR)
	text "C'est très"
	line "décevant…"
	done
else
	text "It's very dis-"
	line "appointing…"
	done
endc

BattleTower2FCooltrainermText:
if DEF(_LOCALE_FR)
	text "Je dois y aller,"
	line "mais je n'arrive"

	para "pas à quitter des"
	line "yeux ce combat!"
	done
else
	text "I need to go, but"
	line "I just can't stop"

	para "watching this"
	line "battle!"
	done
endc

BattleTower2FLadyText:
if DEF(_LOCALE_FR)
	text "Ce qui me rend"
	line "heureuse,"
	cont "dresseuse?"

	para "C'est que les"
	line "#mon"

	para "me donnent plein"
	line "d'amis!"
	done
else
	text "What makes me most"
	line "happy being a"
	cont "trainer?"

	para "The fact that"
	line "#mon will bring"

	para "me lots of"
	line "friends!"
	done
endc

BattleTower2FTwinText:
if DEF(_LOCALE_FR)
	text "Certains sont"
	line "surpris"

	para "de voir une petite"
	line "fille à la Tour"
	cont "de Combat."

	para "Mais je n'ai pas"
	line "à combattre moi-"
	cont "même, tu sais?"
	done
else
	text "Some people are"
	line "surprised to see"

	para "a small girl like"
	line "me at the Battle"
	cont "Tower."

	para "It's not like I"
	line "have to battle"
	cont "myself, you know?"
	done
endc

BattleTower2FSuperNerdText:
if DEF(_LOCALE_FR)
	text "Hé hé! Tous ces"
	line "dresseurs"
	cont "font pitié!"

	para "…En fait,"
	line "penser ça,"
	cont "c'est perdre"
	cont "en un coup!"

	para "Baisse pas ta"
	line "garde,"
	cont "Pikachu!"
	done
else
	text "Hehe! All the"
	line "trainers around us"
	cont "look so pathetic!"

	para "…Actually, that"
	line "mindset makes you"
	cont "lose with one hit!"

	para "Don't let your"
	line "guard down,"
	cont "Pikachu!"
	done
endc

BattleTower2FPikachuText:
if DEF(_LOCALE_FR)
	text "Pikachu: Pichuu!"
	done
else
	text "Pikachu: Pichuu!"
	done
endc

BattleTower2FYoungsterText:
if DEF(_LOCALE_FR)
	text "Etre fort,"
	line "c'est être faible."

	para "Etre faible,"
	line "c'est être fort."

	para "Quelqu'un m'a dit"
	line "ça, un jour."

	para "Je pige pas,"
	line "mais ça fait"
	cont "réfléchir."
	done
else
	text "To be strong is to"
	line "be weak."

	para "To be weak is to"
	line "be strong."

	para "Somebody told me"
	line "that before."

	para "I don't understand"
	line "it, but it sounds"
	cont "deep."
	done
endc

BattleTower2FBlackbeltText:
if DEF(_LOCALE_FR)
	text "Le karaté-gi,"
	line "c'est l'uniforme"
	cont "des guerriers!"

	para "Rien de mieux"
	line "pour la Tour"
	cont "de Combat!"
	done
else
	text "The karate gi is"
	line "the uniform of"
	cont "fighters!"

	para "There is nothing"
	line "better suited for"

	para "the Battle Tower"
	line "than this!"
	done
endc
