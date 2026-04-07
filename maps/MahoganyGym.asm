MahoganyGym_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 17, MAHOGANY_TOWN, 3
	warp_event  5, 17, MAHOGANY_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, MahoganyGymStatue
	bg_event  6, 15, BGEVENT_READ, MahoganyGymStatue

	def_object_events
	object_event  5,  3, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyGymPryceScript, -1
	object_event  4,  6, SPRITE_SKIER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSkierRoxanne, -1
	object_event  0, 17, SPRITE_BOARDER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBoarderRonald, -1
	object_event  9, 17, SPRITE_SKIER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSkierClarissa, -1
	object_event  5,  9, SPRITE_BOARDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBoarderBrad, -1
	object_event  2,  4, SPRITE_BOARDER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBoarderDouglas, -1
	object_event  7, 15, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MahoganyGymGuyScript, -1

MahoganyGymPryceScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PRYCE
	iftruefwd .FightDone
	writetext PryceText_Intro
	waitbutton
	closetext
	winlosstext PryceText_Impressed, 0
	loadtrainer PRYCE, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_PRYCE
	opentext
	givebadge GLACIERBADGE, JOHTO_REGION
	; Begin Team Rocket takeover of Radio Tower
	setflag ENGINE_ROCKETS_IN_RADIO_TOWER
	setevent EVENT_GOLDENROD_CITY_CIVILIANS
	setevent EVENT_RADIO_TOWER_BLACKBELT_BLOCKS_STAIRS
	clearevent EVENT_GOLDENROD_CITY_ROCKET_SCOUT
	clearevent EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	clearevent EVENT_USED_THE_CARD_KEY_IN_THE_RADIO_TOWER
	specialphonecall SPECIALCALL_WEIRDBROADCAST
	setevent EVENT_MAHOGANY_TOWN_POKEFAN_M_BLOCKS_EAST
	setmapscene MAHOGANY_TOWN, $1
.FightDone:
	checkevent EVENT_GOT_TM67_AVALANCHE
	iftrue_jumpopenedtext PryceText_CherishYourPokemon
	setevent EVENT_BEAT_SKIER_ROXANNE
	setevent EVENT_BEAT_SKIER_CLARISSA
	setevent EVENT_BEAT_BOARDER_RONALD
	setevent EVENT_BEAT_BOARDER_BRAD
	setevent EVENT_BEAT_BOARDER_DOUGLAS
	writetext PryceText_GlacierBadgeSpeech
	promptbutton
	verbosegivetmhm TM_AVALANCHE
	setevent EVENT_GOT_TM67_AVALANCHE
	jumpthisopenedtext

	text "That TM contains"
	line "Avalanche."

	para "It deals more"
	line "damage if the user"
	cont "was hurt first."

	para "It demonstrates"
	line "the harshness of"
	cont "winter."
	done

GenericTrainerSkierRoxanne:
	generictrainer SKIER, ROXANNE, EVENT_BEAT_SKIER_ROXANNE, SkierRoxanneSeenText, SkierRoxanneBeatenText

if DEF(_LOCALE_FR)
	text "Si tu ne patines"
	line "pas avec précision"
	line "tu n'iras pas bien"
	line "loin dans cette"
	line "ARENE."
	done
else
	text "If you don't skate"
	line "with precision,"

	para "you won't get far"
	line "in this Gym."
	done
endc

GenericTrainerSkierClarissa:
	generictrainer SKIER, CLARISSA, EVENT_BEAT_SKIER_CLARISSA, SkierClarissaSeenText, SkierClarissaBeatenText

if DEF(_LOCALE_FR)
	text "Je n'aurais pas dû"
	line "me vanter…"
	done
else
	text "I shouldn't have"
	line "been bragging"
	cont "about my skiing…"
	done
endc

GenericTrainerBoarderRonald:
	generictrainer BOARDER, RONALD, EVENT_BEAT_BOARDER_RONALD, BoarderRonaldSeenText, BoarderRonaldBeatenText

if DEF(_LOCALE_FR)
	text "Je crois qu'il"
	line "existe une capa-"
	line "cité que les #-"
	line "MON peuvent utili-"
	line "ser même en étant"
	line "gelés."
	done
else
	text "I think there's a"
	line "move a #mon"

	para "can use while it's"
	line "frozen."
	done
endc

GenericTrainerBoarderBrad:
	generictrainer BOARDER, BRAD, EVENT_BEAT_BOARDER_BRAD, BoarderBradSeenText, BoarderBradBeatenText

if DEF(_LOCALE_FR)
	text "Cette ARENE est"
	line "superbe. J'adore"
	line "surfer avec mes"
	line "#MON!"
	done
else
	text "This Gym is great."
	line "I love boarding"
	cont "with my #mon!"
	done
endc

GenericTrainerBoarderDouglas:
	generictrainer BOARDER, DOUGLAS, EVENT_BEAT_BOARDER_DOUGLAS, BoarderDouglasSeenText, BoarderDouglasBeatenText

if DEF(_LOCALE_FR)
	text "Le secret de la"
	line "force de FREDO… Il"
	line "médite derrière"
	line "une cascade tous"
	line "les jours pour"
	line "accroî- tre sa"
	line "force et"
	line "développer son"
	line "esprit."
	done
else
	text "The secret behind"
	line "Pryce's power…"

	para "He meditates under"
	line "a waterfall daily"

	para "to strengthen his"
	line "mind and body."
	done
endc

MahoganyGymGuyScript:
	checkevent EVENT_BEAT_PRYCE
	iftrue_jumptextfaceplayer MahoganyGymGuyWinText
	jumptextfaceplayer MahoganyGymGuyText

MahoganyGymStatue:
	gettrainername PRYCE, 1, STRING_BUFFER_4
	checkflag ENGINE_GLACIERBADGE
	iftruefwd .Beaten
	jumpstd gymstatue1
.Beaten:
	readvar VAR_BADGES
	ifgreater 14, .LyraToo
	jumpstd gymstatue2
.LyraToo
	jumpstd gymstatue3

PryceText_Intro:
if DEF(_LOCALE_FR)
	text "Les #MON ont"
	line "beaucoup d'aven-"
	line "tures au cours de"
	line "leur vie, comme"
	line "nous. Moi aussi,"
	line "j'ai beaucoup"
	line "souffert dans ma"
	line "vie. Comme je suis"
	line "plus vieux que"
	line "toi, laisse-moi"
	line "t'expliquer… Je"
	line "suis avec les #MON"
	line "depuis bien avant"
	line "ta naissance. Je"
	line "ne perds pas"
	line "facilement. Moi,"
	line "FREDO, le dresseur"
	line "du froid, je vais"
	line "te montrer ma"
	line "puissance!"
	done
else
	text "#mon have many"
	line "experiences in"

	para "their lives, just"
	line "like we do."

	para "I, too, have seen"
	line "and suffered much"
	cont "in my life."

	para "Since I am your"
	line "elder, let me show"
	cont "you what I mean."

	para "I have been with"
	line "#mon since"

	para "before you were"
	line "born."

	para "I do not lose"
	line "easily."

	para "I, Pryce--the"
	line "winter trainer--"

	para "shall demonstrate"
	line "my power!"
	done
endc

PryceText_Impressed:
if DEF(_LOCALE_FR)
	text "Ah, je suis très"
	line "impressionné par"
	line "ta prouesse. Avec"
	line "un tempé- rament"
	line "comme le tien, tu"
	line "surmon- teras tous"
	line "les obstacles de"
	line "la vie. Tu mérites"
	line "ce BADGE!"
	done
else
	text "Ah, I am impressed"
	line "by your prowess."

	para "With your strong"
	line "will, I know you"

	para "will overcome all"
	line "life's obstacles."

	para "You are worthy of"
	line "this Badge!"
	done
endc

PryceText_GlacierBadgeSpeech:
	text "That Badge will"
	line "let your #mon"

	para "use Whirlpool to"
	line "cross whirlpools."

	para "And this… This is"
	line "a gift from me!"
	done

PryceText_CherishYourPokemon:
if DEF(_LOCALE_FR)
	text "Lorsque la glace"
	line "et la neige"
	line "fondent, le"
	line "printemps arrive."
	line "Toi et tes #- MON"
	line "serez ensemble"
	line "pendant des"
	line "années. Profitez"
	line "bien de ces"
	line "instants!"
	done
else
	text "When the ice and"
	line "snow melt, spring"
	cont "arrives."

	para "You and your #-"
	line "mon will be to-"

	para "gether for many"
	line "years to come."

	para "Cherish your time"
	line "together!"
	done
endc

BoarderRonaldSeenText:
if DEF(_LOCALE_FR)
	text "Je vais geler tes"
	line "#MON et tu ne"
	line "pourras plus rien"
	line "faire!"
	done
else
	text "I'll freeze your"
	line "#mon, so you"
	cont "can't do a thing!"
	done
endc

BoarderRonaldBeatenText:
if DEF(_LOCALE_FR)
	text "Saperlipopette! Je"
	line "n'ai rien pu"
	line "faire."
	done
else
	text "Darn. I couldn't"
	line "do a thing."
	done
endc

BoarderBradSeenText:
if DEF(_LOCALE_FR)
	text "Cette ARENE a le"
	line "sol glissant."
	line "C'est délire, pas"
	line "vrai? Mais… Fini"
	line "de jouer!"
	done
else
	text "This Gym has a"
	line "slippery floor."

	para "It's fun, isn't"
	line "it?"

	para "But hey--we're"
	line "not playing games"
	cont "here!"
	done
endc

BoarderBradBeatenText:
if DEF(_LOCALE_FR)
	text "Tu vois à quel"
	line "point on est"
	line "sérieux ici?"
	done
else
	text "Do you see how"
	line "serious we are?"
	done
endc

BoarderDouglasSeenText:
if DEF(_LOCALE_FR)
	text "Je connais le"
	line "secret de FREDO."
	done
else
	text "I know Pryce's"
	line "secret."
	done
endc

BoarderDouglasBeatenText:
if DEF(_LOCALE_FR)
	text "OK. Je vais te le"
	line "dire."
	done
else
	text "OK. I'll tell you"
	line "Pryce's secret."
	done
endc

SkierRoxanneSeenText:
if DEF(_LOCALE_FR)
	text "Pour vaincre"
	line "FREDO, notre"
	line "CHAMPION d'ARENE,"
	line "tu dois penser"
	line "avant de patiner."
	done
else
	text "To get to Pryce,"
	line "our Gym Leader,"

	para "you need to think"
	line "before you skate."
	done
endc

SkierRoxanneBeatenText:
if DEF(_LOCALE_FR)
	text "Enfin, moi j'te"
	line "bats en ski!"
	done
else
	text "I wouldn't lose to"
	line "you in skiing!"
	done
endc

SkierClarissaSeenText:
if DEF(_LOCALE_FR)
	text "Sors de mon"
	line "slalom!"
	done
else
	text "Check out my"
	line "parallel turn!"
	done
endc

SkierClarissaBeatenText:
if DEF(_LOCALE_FR)
	text "Non! Tu m'as fait"
	line "déraper!"
	done
else
	text "No! You made me"
	line "wipe out!"
	done
endc

MahoganyGymGuyText:
if DEF(_LOCALE_FR)
	text "FREDO est un vété-"
	line "ran qui entraîne"
	line "des #MON depuis 50"
	line "ans. Il prétend"
	line "être bon pour"
	line "geler ses"
	line "adversaires avec"
	line "des attaques de"
	line "glace. Tu devrais"
	line "le faire fondre"
	line "avec ton ambition"
	line "brûlante!"
	done
else
	text "Pryce is a veteran"
	line "who has trained"

	para "#mon for some"
	line "50 years."

	para "He's said to be"
	line "good at freezing"

	para "opponents with"
	line "ice-type moves."

	para "That means you"
	line "should melt him"

	para "with your burning"
	line "ambition!"
	done
endc

MahoganyGymGuyWinText:
if DEF(_LOCALE_FR)
	text "FREDO, c'est quel-"
	line "qu'un, mais toi"
	line "t'es pas mauvais"
	line "non plus! C'était"
	line "un combat chaud"
	line "qui a soudé"
	line "l'écart entre deux"
	line "générations!"
	done
else
	text "Pryce is some-"
	line "thing, but you're"
	cont "something else!"

	para "That was a hot"
	line "battle that"

	para "bridged the gen-"
	line "eration gap!"
	done
endc
