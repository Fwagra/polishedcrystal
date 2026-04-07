MurkySwamp_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7, 35, STORMY_BEACH, 1
	warp_event  8, 35, STORMY_BEACH, 2
	warp_event 36,  5, UNION_CAVE_B1F_SOUTH, 3

	def_coord_events

	def_bg_events
	bg_event 20, 10, BGEVENT_ITEM + MULCH, EVENT_MURKY_SWAMP_HIDDEN_MULCH
	bg_event  2, 30, BGEVENT_ITEM + X_SP_DEF, EVENT_MURKY_SWAMP_HIDDEN_X_SP_DEF
	bg_event  5, 23, BGEVENT_ITEM + BIG_MUSHROOM, EVENT_MURKY_SWAMP_HIDDEN_BIG_MUSHROOM
	bg_event 40, 33, BGEVENT_ITEM + TINYMUSHROOM, EVENT_MURKY_SWAMP_HIDDEN_TINYMUSHROOM

	def_object_events
	object_event  6,  2, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, URSALUNA, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, URSALUNA_BLOODMOON_FORM, MurkySwampBloodmoonUrsaluna, EVENT_MURKY_SWAMP_BLOODMOON_URSALUNA
	object_event 40, 26, SPRITE_CHERYL, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_SCRIPT, 0, MurkySwampCherylScript, EVENT_MURKY_SWAMP_CHERYL
	object_event 17, 31, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, MurkySwampNurseBeatriceScript, -1
	object_event 22, 20, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerBug_catcherOscar, -1
	object_event 25, 33, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerLassAbigail, -1
	object_event  8, 13, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerPokemaniacEnzo, -1
	object_event 37, 17, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerHex_maniacMatilda, -1
	object_event  6, 22, SPRITE_FIREBREATHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerFirebreatherOleg, -1
	object_event  4, 33, SPRITE_POKEMANIAC, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, MurkySwampPokemaniacText, -1
	itemball_event 22, 13, FULL_HEAL, 1, EVENT_MURKY_SWAMP_FULL_HEAL
	itemball_event 14,  9, BIG_MUSHROOM, 1, EVENT_MURKY_SWAMP_BIG_MUSHROOM
	itemball_event 43, 23, TOXIC_ORB, 1, EVENT_MURKY_SWAMP_TOXIC_ORB
	itemball_event 14, 34, MULCH, 1, EVENT_MURKY_SWAMP_MULCH
	cuttree_event  2, 14, EVENT_MURKY_SWAMP_CUT_TREE_1
	cuttree_event  6, 19, EVENT_MURKY_SWAMP_CUT_TREE_2

	object_const_def
	const MURKYSWAMP_BLOODMOON_URSALUNA
	const MURKYSWAMP_CHERYL
	const MURKYSWAMP_NURSE

MurkySwampCherylScript:
	faceplayer
	checkevent EVENT_BEAT_CHERYL
	iftruefwd .Beaten
	opentext
	writetext .ChallengeText
	yesorno
	iffalse_jumpopenedtext .NoText
	writetext .YesText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked MURKYSWAMP_CHERYL
	loadtrainer CHERYL, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CHERYL
.Beaten
	opentext
	writetext .ItemText
	promptbutton
	verbosegiveitem POWER_WEIGHT
	iffalse_endtext
	writetext .GoodbyeText
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear MURKYSWAMP_CHERYL
	pause 15
	special Special_FadeInQuickly
	clearevent EVENT_BATTLE_TOWER_CHERYL
	end

.ChallengeText:
if DEF(_LOCALE_FR)
	text "Bonjour, je"
	line "m'appelle Cheryl."
	line "Et toi…?"

	para "Donc, tu"
	line "t'appelles"
	line "<PLAYER>."

	para "Ravie de te"
	line "rencontrer."

	para "Les fantômes"
	line "du marais me"
	cont "font peur, alors…"

	para "Un combat pour"
	line "les chasser?"
	done
else
	text "Hello, my name's"
	line "Cheryl."
	cont "And you are…?"

	para "OK, so your name"
	line "is <PLAYER>."

	para "I'm sincerely glad"
	line "to meet you."

	para "I'm afraid of the"
	line "ghosts in this"
	cont "swamp, so how"

	para "about a battle to"
	line "ward them off?"
	done
endc

.YesText:
if DEF(_LOCALE_FR)
	text "Attention: mes"
	line "#MON peuvent"
	cont "être"
	line "très remuants."
	done
else
	text "I should warn you,"
	line "my #mon can be"
	cont "quite rambunc-"
	cont "tious."
	done
endc

.NoText:
if DEF(_LOCALE_FR)
	text "Oh, mais mes"
	line "#MON voulaient"
	cont "se battre…"
	done
else
	text "Oh, but my #mon"
	line "were itching for"
	cont "a battle…"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Trouver le bon"
	line "équilibre,"
	line "attaque/défense…"
	line "Ce n'est pas"
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

.ItemText:
if DEF(_LOCALE_FR)
	text "Merci,"
	line "<PLAYER>!"

	para "Je peux traverser"
	line "ce marais"
	cont "sereine."

	para "Ca me rappelle"
	line "une forêt loin-"
	cont "taine…"

	para "Tiens, pour te"
	line "remercier."

	para "Accepte-le!"
	done
else
	text "Thank you,"
	line "<PLAYER>!"

	para "Now I can confi-"
	line "dently get through"
	cont "this swamp."

	para "It reminds me of a"
	line "forest far away…"

	para "Oh, this is my"
	line "token of appreci-"
	cont "ation."

	para "Please accept it!"
	done
endc

.GoodbyeText:
if DEF(_LOCALE_FR)
	text "Je vais à la"
	line "Tour de Combat"
	cont "près d'Olivine."

	para "Tu connais?"

	para "On s'y reverra"
	line "peut-être!"

	para "A bientôt!"
	done
else
	text "I'm heading to the"
	line "Battle Tower near"
	cont "Olivine City."

	para "Have you heard of"
	line "it?"

	para "Perhaps we'll meet"
	line "again there!"

	para "Bye for now!"
	done
endc

MurkySwampNurseBeatriceScript:
	faceplayer
	checkevent EVENT_BEAT_NURSE_BEATRICE
	iftruefwd .Beaten
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked MURKYSWAMP_NURSE
	loadtrainer NURSE, BEATRICE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_NURSE_BEATRICE
.Beaten
	showtext .AfterText
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	jumpthistext

if DEF(_LOCALE_FR)
	text "Tout va mieux!"
	done
else
	text "All better now!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Je suis une"
	line "Infirmière!"

	para "Bats-moi et je"
	line "soigne tes #MON!"
	done
else
	text "I'm a Nurse!"

	line "Defeat me and I'll"
	cont "heal your #mon!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Mais d'abord je"
	line "soigne mes"
	cont "#MON…"
	done
else
	text "But first I need"
	line "to heal my own"
	cont "#mon…"
	done
endc

.AfterText:
if DEF(_LOCALE_FR)
	text "Soigner les #MON--"

	para "c'est pour ça"
	line "que je suis là!"
	done
else
	text "Making #mon"
	line "feel better--"

	para "that's why I"
	line "came here!"
	done
endc

MurkySwampBloodmoonUrsaluna:
	faceplayer
	opentext
	writetext BloodmoonUrsalunaText
	cry URSALUNA
	pause 15
	closetext
	loadwildmon URSALUNA, URSALUNA_BLOODMOON_FORM, 60
	checkevent EVENT_BEAT_ELITE_FOUR
	iftruefwd .GotLevel
	loadwildmon URSALUNA, URSALUNA_BLOODMOON_FORM, 30
.GotLevel
	loadvar VAR_BATTLETYPE, BATTLETYPE_NEVER_SHINY
	startbattle
	disappear MURKYSWAMP_BLOODMOON_URSALUNA
	setevent EVENT_MURKY_SWAMP_BLOODMOON_URSALUNA
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalsefwd .end
	setflag ENGINE_PLAYER_CAUGHT_BLOODMOON_URSALUNA
.end
	end

BloodmoonUrsalunaText:
if DEF(_LOCALE_FR)
	text "Yaaah!"
	done
else
	text "Wa-gaaah!"
	done
endc

GenericTrainerBug_catcherOscar:
	generictrainer BUG_CATCHER, OSCAR, EVENT_BEAT_BUG_CATCHER_OSCAR, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Je suis venu"
	line "chercher des"
	cont "insectes!"

	para "Personne m'avait"
	line "prévenu pour"
	cont "les fantômes!"
	done
else
	text "I came here to"
	line "find bugs!"

	para "Nobody warned me"
	line "about ghosts!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "U-un fantôme!"
	done
else
	text "G-g-g-ghost!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Sortez-moi d'ici!"
	done
else
	text "Get me outta here!"
	done
endc

GenericTrainerHex_maniacMatilda:
	generictrainer HEX_MANIAC, MATILDA, EVENT_BEAT_HEX_MANIAC_MATILDA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Je marche entre"
	line "les arbres,"

	para "pour perdre la"
	line "tête et trouver"
	cont "mon âme."
	done
else
	text "So off into the"
	line "trees I stroll,"

	para "to lose my mind"
	line "and find my soul."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Dans l'ombre,"
	line "vaste et pro-"
	cont "fonde, je t'offre"
	cont "un sommeil"
	cont "éternel."
	done
else
	text "Within the dark-"
	line "ness, vast and"
	cont "deep, I offer you"
	cont "eternal sleep."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Gnihihihihi!"
	line "Forces occultes!"
	line "Ténèbres… Pâté de"
	line "foie!"
	done
else
	text "Fufufufu…"
	done
endc

GenericTrainerFirebreatherOleg:
	generictrainer FIREBREATHER, OLEG, EVENT_BEAT_FIREBREATHER_OLEG, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Sans feu, il fait"
	line "froid et sombre…"
	done
else
	text "It's cold and dark"
	line "without a fire…"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Je veux allumer"
	line "un feu… mais si"

	para "le gaz du marais"
	line "s'enflamme, ça"
	cont "explose?"

	para "Trop risqué!"
	done
else
	text "I want to light a"
	line "fire… but would it"

	para "ignite the swamp"
	line "gas and blow up?"

	para "It's too risky!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "J'ai risqué et"
	line "j'ai perdu!"
	done
else
	text "I risked and lost!"
	done
endc

GenericTrainerLassAbigail:
	generictrainer LASS, ABIGAIL, EVENT_BEAT_LASS_ABIGAIL, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "On dit qu'une"
	line "étrange ORBE"
	cont "rouge apparaît,"

	para "brillant comme"
	line "une lune de sang."

	para "Ca fait peur."
	done
else
	text "The rumor is that"
	line "a strange red orb"
	cont "can be seen,"

	para "glowing like a"
	line "blood moon."

	para "That sounds scary."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Les gens ont peur"
	line "d'aller au fond"
	cont "du marais."
	done
else
	text "People are scared"
	line "to go deep into"
	cont "the swamp."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Aaaah!"
	done
else
	text "Eek!"
	done
endc

GenericTrainerPokemaniacEnzo:
	generictrainer POKEMANIAC, ENZO, EVENT_BEAT_POKEMANIAC_ENZO, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Je ne pense pas"
	line "que FANTOMINUS"

	para "puisse faire une"
	line "lueur rouge"

	para "comme celle que"
	line "j'ai vue."

	para "C'était quoi?"
	done
else
	text "I don't think"
	line "Gastly can make"

	para "a red light like"
	line "what I saw."

	para "What could it be?"
	done
endc

.SeenText
if DEF(_LOCALE_FR)
	text "J'ai vu une lueur"
	line "rouge bizarre"

	para "dans les arbres"
	line "en cherchant des"
	cont "#MON rares!"
	done
else
	text "I saw a weird red"
	line "light in the trees"

	para "while looking for"
	line "rare #mon!"
	done
endc

.BeatenText
if DEF(_LOCALE_FR)
	text "Tu n'as rien"
	line "à craindre."
	done
else
	text "You have nothing"
	line "to be afraid of."
	done
endc

MurkySwampPokemaniacText:
if DEF(_LOCALE_FR)
	text "Si près de la"
	line "côte, le sol"

	para "se gorge d'eau."

	para "Mais les #MON"
	line "rares d'ici"

	para "valent l'explo-"
	line "ration!"
	done
else
	text "This close to the"
	line "coast, the land"

	para "becomes soaked"
	line "with water."

	para "But the rare #-"
	line "mon here make it"

	para "worth exploring"
	line "anyway!"
	done
endc
