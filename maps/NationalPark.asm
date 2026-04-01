NationalPark_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 35, 18, ROUTE_36_NATIONAL_PARK_GATE, 1
	warp_event 35, 19, ROUTE_36_NATIONAL_PARK_GATE, 2
	warp_event 12, 47, ROUTE_35_NATIONAL_PARK_GATE, 1
	warp_event 13, 47, ROUTE_35_NATIONAL_PARK_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 16, 44, BGEVENT_JUMPTEXT, NationalParkRelaxationSquareText
	bg_event 29, 31, BGEVENT_JUMPTEXT, NationalParkBattleNoticeText
	bg_event 14,  4, BGEVENT_JUMPTEXT, NationalParkTrainerTipsText
	bg_event  8, 47, BGEVENT_ITEM + FULL_HEAL, EVENT_NATIONAL_PARK_HIDDEN_FULL_HEAL

	def_object_events
	object_event 17, 24, SPRITE_PICNICKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, NationalParkLassText, -1
	object_event 16,  4, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, NationalParkPokefanFText, -1
	object_event 29, 40, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, NationalParkTeacher1Script, -1
	object_event 28,  6, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NationalParkGameboyKidScript, -1
	object_event 13, 41, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerSchoolgirlEliza, -1
	object_event 12, 41, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerSchoolboyJohnny, -1
	object_event 19, 41, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 2, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, NationalParkTeacher2Text, -1
	pokemon_event 28, 40, PERSIAN, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_BROWN, NationalParkPersianText, -1
	object_event 29, 23, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyJack1, -1
	object_event 20, 29, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerPokefanfBeverly1, -1
	object_event 18,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerPokefanmWilliam, -1
	object_event 10, 14, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerLassKrise, -1
	object_event 28, 13, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBugManiacLou, -1
	object_event  4, 19, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, OfficermKeithScript, -1
	itemball_event 37, 12, SHINY_STONE, 1, EVENT_NATIONAL_PARK_SHINY_STONE
	tmhmball_event  3, 43, TM_DIG, EVENT_NATIONAL_PARK_TM_DIG

NationalParkTeacher1Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_QUICK_CLAW
	iftruefwd .GotQuickClaw
	writetext NationalParkTeacher1Text
	promptbutton
	verbosegiveitem QUICK_CLAW
	iffalsefwd .NoRoom
	setevent EVENT_GOT_QUICK_CLAW
.GotQuickClaw:
	writetext NationalParkTeacher1Text_GotQuickClaw
	waitbutton
.NoRoom:
	endtext

OfficermKeithScript:
	checktime 1 << NITE
	iffalse_jumptextfaceplayer OfficermKeithDaytimeText
	checkevent EVENT_BEAT_OFFICERM_KEITH
	iftrue_jumptextfaceplayer OfficermKeithAfterText
	faceplayer
	opentext
	special SaveMusic
	playmusic MUSIC_OFFICER_ENCOUNTER
	writetext OfficermKeithSeenText
	waitbutton
	closetext
	winlosstext OfficermKeithWinText, 0
	loadtrainer OFFICERM, KEITH
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_OFFICERM_KEITH
	endtext

GenericTrainerBugManiacLou:
	generictrainer BUG_MANIAC, LOU, EVENT_BEAT_BUG_MANIAC_LOU, BugManiacLouSeenText, BugManiacLouBeatenText

if DEF(_LOCALE_FR)
	text "J'étais juste un"
	line "Attrape-Insecte,"

	para "mais j'ai évolué"
	line "en Insectophile!"
	done
else
	text "I used to be just"
	line "a Bug Catcher,"

	para "but I evolved into"
	line "a Bug Maniac!"
	done
endc

GenericTrainerSchoolgirlEliza:
	generictrainer SCHOOLGIRL, ELIZA, EVENT_BEAT_SCHOOLGIRL_ELIZA, SchoolgirlElizaSeenText, SchoolgirlElizaBeatenText

if DEF(_LOCALE_FR)
	text "Je m'en fiche!"
	line "J'adore toujours"
	cont "Mystherbe."
	done
else
	text "I don't care!"
	line "I still love"
	cont "Oddish."
	done
endc

GenericTrainerSchoolboyJohnny:
	generictrainer SCHOOLBOY, JOHNNY, EVENT_BEAT_SCHOOLBOY_JOHNNY, SchoolboyJohnnySeenText, SchoolboyJohnnyBeatenText

if DEF(_LOCALE_FR)
	text "Ouais, mais moi"
	line "je préfère"
	cont "Chétiflor."
	done
else
	text "Yeah, well, I"
	line "still prefer"
	cont "Bellsprout."
	done
endc

NationalParkGameboyKidScript:
	showtextfaceplayer NationalParkGameboyKidText
	turnobject LAST_TALKED, DOWN
	end

TrainerSchoolboyJack1:
	trainer SCHOOLBOY, JACK1, EVENT_BEAT_SCHOOLBOY_JACK, SchoolboyJack1SeenText, SchoolboyJack1BeatenText, 0, SchoolboyJack1Script

SchoolboyJack1Script:
	loadvar VAR_CALLERID, PHONE_SCHOOLBOY_JACK
	opentext
	checkflag ENGINE_JACK_READY_FOR_REMATCH
	iftruefwd .Rematch
	checkcellnum PHONE_SCHOOLBOY_JACK
	iftruefwd .NumberAccepted
	checkevent EVENT_JACK_ASKED_FOR_PHONE_NUMBER
	iftruefwd .AskAgain
	writetext SchoolboyJackTradeMonText
	promptbutton
	setevent EVENT_JACK_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjumpfwd .RequestNumber

.AskAgain:
	scall .AskNumber2
.RequestNumber:
	askforphonenumber PHONE_SCHOOLBOY_JACK
	ifequalfwd $1, .PhoneFull
	ifequalfwd $2, .NumberDeclined
	gettrainername SCHOOLBOY, JACK1, STRING_BUFFER_3
	scall .RegisteredNumber
	sjumpfwd .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext SchoolboyJack1BeatenText, 0
	readmem wJackFightCount
	ifequalfwd 4, .Fight4
	ifequalfwd 3, .Fight3
	ifequalfwd 2, .Fight2
	ifequalfwd 1, .Fight1
	ifequalfwd 0, .LoadFight0
.Fight4:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftruefwd .LoadFight4
.Fight3:
	checkevent EVENT_BEAT_ELITE_FOUR
	iftruefwd .LoadFight3
.Fight2:
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftruefwd .LoadFight2
.Fight1:
	checkflag ENGINE_FLYPOINT_OLIVINE
	iftruefwd .LoadFight1
.LoadFight0:
	loadtrainer SCHOOLBOY, JACK1
	startbattle
	reloadmapafterbattle
	loadmem wJackFightCount, 1
	clearflag ENGINE_JACK_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer SCHOOLBOY, JACK2
	startbattle
	reloadmapafterbattle
	loadmem wJackFightCount, 2
	clearflag ENGINE_JACK_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer SCHOOLBOY, JACK3
	startbattle
	reloadmapafterbattle
	loadmem wJackFightCount, 3
	clearflag ENGINE_JACK_READY_FOR_REMATCH
	end

.LoadFight3:
	loadtrainer SCHOOLBOY, JACK4
	startbattle
	reloadmapafterbattle
	loadmem wJackFightCount, 4
	clearflag ENGINE_JACK_READY_FOR_REMATCH
	end

.LoadFight4:
	loadtrainer SCHOOLBOY, JACK5
	startbattle
	reloadmapafterbattle
	clearflag ENGINE_JACK_READY_FOR_REMATCH
	end

.AskNumber1:
	jumpstd asknumber1m

.AskNumber2:
	jumpstd asknumber2m

.RegisteredNumber:
	jumpstd registerednumberm

.NumberAccepted:
	jumpstd numberacceptedm

.NumberDeclined:
	jumpstd numberdeclinedm

.PhoneFull:
	jumpstd phonefullm

.RematchStd:
	jumpstd rematchm

GenericTrainerPokefanmWilliam:
	generictrainer POKEFANM, WILLIAM, EVENT_BEAT_POKEFANM_WILLIAM, PokefanmWilliamSeenText, PokefanmWilliamBeatenText

if DEF(_LOCALE_FR)
	text "J'ai perdu, mais"
	line "mes #mon"
	cont "gagnent"

	para "le prix des plus"
	line "adorables."
	done
else
	text "I lost the battle,"
	line "but my #mon win"

	para "the prize for"
	line "being most lovely."
	done
endc

TrainerPokefanfBeverly1:
	trainer POKEFANF, BEVERLY1, EVENT_BEAT_POKEFANF_BEVERLY, PokefanfBeverly1SeenText, PokefanfBeverly1BeatenText, 0, PokefanfBeverly1Script

PokefanfBeverly1Script:
	loadvar VAR_CALLERID, PHONE_POKEFAN_BEVERLY
	opentext
	checkflag ENGINE_BEVERLY_HAS_NUGGET
	iftruefwd .GiveNugget
	checkcellnum PHONE_POKEFAN_BEVERLY
	iftruefwd .NumberAccepted
	checkpoke MARILL
	iffalsefwd .NoMarill
	checkevent EVENT_BEVERLY_ASKED_FOR_PHONE_NUMBER
	iftruefwd .AskAgain
	writetext PokefanBeverlyCuteMonText
	promptbutton
	setevent EVENT_BEVERLY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjumpfwd .RequestNumber

.AskAgain:
	scall .AskNumber2
.RequestNumber:
	askforphonenumber PHONE_POKEFAN_BEVERLY
	ifequalfwd $1, .PhoneFull
	ifequalfwd $2, .NumberDeclined
	gettrainername POKEFANF, BEVERLY1, STRING_BUFFER_3
	scall .RegisteredNumber
	sjumpfwd .NumberAccepted

.GiveNugget:
	scall .Gift
	verbosegiveitem NUGGET
	iffalsefwd .NoRoom
	clearflag ENGINE_BEVERLY_HAS_NUGGET
	sjumpfwd .NumberAccepted

.NoRoom:
	sjumpfwd .PackFull

.NoMarill:
	jumpopenedtext PokefanFBeverlyMarillFriendText

.AskNumber1:
	jumpstd asknumber1f

.AskNumber2:
	jumpstd asknumber2f

.RegisteredNumber:
	jumpstd registerednumberf

.NumberAccepted:
	jumpstd numberacceptedf

.NumberDeclined:
	jumpstd numberdeclinedf

.PhoneFull:
	jumpstd phonefullf

.Gift:
	jumpstd giftf

.PackFull:
	jumpstd packfullf

GenericTrainerLassKrise:
	generictrainer LASS, KRISE, EVENT_BEAT_LASS_KRISE, LassKriseSeenText, LassKriseBeatenText

if DEF(_LOCALE_FR)
	text "Tu me regardais"
	line "car je suis"
	cont "mignonne!"
	done
else
	text "I thought you were"
	line "staring at me"
	cont "because I'm cute!"
	done
endc

NationalParkLassText:
if DEF(_LOCALE_FR)
	text "Regarde mon sac!"

	para "J'y ai accroché"
	line "mes Badges."
	done
else
	text "Look! Check out my"
	line "bag!"

	para "I pinned my Badges"
	line "onto it."
	done
endc

NationalParkPokefanFText:
if DEF(_LOCALE_FR)
	text "C'est du Courrier"
	line "de ma fille."
	cont "Ca me remonte."
	done
else
	text "This is Mail I got"
	line "from my daughter."
	cont "It cheers me up."
	done
endc

NationalParkTeacher1Text:
if DEF(_LOCALE_FR)
	text "Attention, s'il"
	line "vous plaît!"

	para "…Oups, je pense"
	line "encore comme une"
	cont "instit'."

	para "Tu es dresseur"
	line "#mon, non?"

	para "Tu te donnes du"
	line "mal, alors…"

	para "Prends ca."
	done
else
	text "Pay attention,"
	line "please!"

	para "…Oops, I have to"
	line "quit thinking like"

	para "a teacher all the"
	line "time."

	para "You must be a"
	line "#mon trainer."

	para "Since you're work-"
	line "ing so hard, I"

	para "want you to have"
	line "this."
	done
endc

NationalParkTeacher1Text_GotQuickClaw:
if DEF(_LOCALE_FR)
	text "Donne la Vive"
	line "Griffe"
	cont "a un #mon."

	para "Parfois, il"
	line "attaquera en"
	cont "premier."
	done
else
	text "Let a #mon hold"
	line "that Quick Claw."

	para "Sometimes it will"
	line "strike first"
	cont "during battle."
	done
endc

SchoolgirlElizaSeenText:
if DEF(_LOCALE_FR)
	text "Mystherbe est"
	line "trop mignon!"

	para "Pas vrai?"
	done
else
	text "Oddish is just"
	line "the cutest!"

	para "Don't you agree?"
	done
endc

SchoolgirlElizaBeatenText:
if DEF(_LOCALE_FR)
	text "Mon pauvre"
	line "Mystherbe…"
	done
else
	text "My poor Oddish…"
	done
endc

SchoolboyJohnnySeenText:
if DEF(_LOCALE_FR)
	text "Chétiflor est"
	line "trop cool!"

	para "Hein?"
	done
else
	text "Bellsprout is just"
	line "the coolest!"

	para "Aren't I right?"
	done
endc

SchoolboyJohnnyBeatenText:
if DEF(_LOCALE_FR)
	text "Chétiflor, non…"
	done
else
	text "Bellsprout, no…"
	done
endc

NationalParkTeacher2Text:
if DEF(_LOCALE_FR)
	text "Ces enfants"
	line "devraient se"
	cont "battre dans"
	cont "l'herbe."

	para "Ils gâchent ma"
	line "balade tranquille…"
	done
else
	text "Those kids should"
	line "battle inside the"
	cont "grass."

	para "They're disturbing"
	line "my quiet walk…"
	done
endc

NationalParkPersianText:
if DEF(_LOCALE_FR)
	text "Persian: Fufushaa!"
	done
else
	text "Persian: Fufushaa!"
	done
endc

NationalParkGameboyKidText:
if DEF(_LOCALE_FR)
	text "J'étudie mon"
	line "#dex."

	para "Je veux faire un"
	line "#dex vivant,"

	para "avec un exemplaire"
	line "de chaque #mon."
	done
else
	text "I'm studying my"
	line "#dex."

	para "I want to collect"
	line "a living #-"

	para "dex with one of"
	line "each #mon."
	done
endc

SchoolboyJack1SeenText:
if DEF(_LOCALE_FR)
	text "Le monde"
	line "des #mon"
	line "est profond."

	para "Il reste plein de"
	line "choses inconnues."

	para "Mais j'en sais"
	line "plus que toi!"
	done
else
	text "The world of"
	line "#mon is deep."

	para "There are still"
	line "lots of things we"
	cont "don't know."

	para "But I know more"
	line "than you do!"
	done
endc

SchoolboyJack1BeatenText:
if DEF(_LOCALE_FR)
	text "Qu-quoi?!"
	done
else
	text "Wha-wha-what?"
	done
endc

SchoolboyJackTradeMonText:
if DEF(_LOCALE_FR)
	text "Il y a tant"
	line "a apprendre."

	para "Par exemple…"

	para "Il existe"
	line "{d:NUM_TMS} CT."

	para "Les #mon"
	line "échangés"
	cont "montent plus vite."
	done
else
	text "There is a lot"
	line "to learn."

	para "For example…"

	para "There are"
	line "{d:NUM_TMS}"
	line "of TMs."

	para "Traded #mon"
	line "level up faster."
	done
endc

PokefanfBeverly1SeenText:
if DEF(_LOCALE_FR)
	text "Mes #mon sont"
	line "adorables."

	para "Laisse-moi te dire"
	line "comme j'en suis"
	cont "fière."
	done
else
	text "My #mon are"
	line "simply darling."

	para "Let me tell you"
	line "how proud my"
	cont "darlings make me."
	done
endc

PokefanfBeverly1BeatenText:
if DEF(_LOCALE_FR)
	text "Je te bats en"
	line "fierté, mais…"
	done
else
	text "I can beat you in"
	line "pride, but…"
	done
endc

PokefanBeverlyCuteMonText:
if DEF(_LOCALE_FR)
	text "Tes #mon sont"
	line "mignons aussi."
	done
else
	text "I must say, your"
	line "#mon are quite"
	cont "cute, too."
	done
endc

PokefanmWilliamSeenText:
if DEF(_LOCALE_FR)
	text "On adore nos"
	line "#mon,"
	line "même s'ils nous"
	cont "détestent."

	para "Etre fan, c'est"
	line "ca!"
	done
else
	text "We adore our #-"
	line "mon, even if they"
	cont "dislike us."

	para "That's what being"
	line "a fan is about."
	done
endc

PokefanmWilliamBeatenText:
if DEF(_LOCALE_FR)
	text "M-mes #mon!"
	done
else
	text "M-my #mon!"
	done
endc

PokefanFBeverlyMarillFriendText:
if DEF(_LOCALE_FR)
	text "Mon amie a un"
	line "Marill!"

	para "Je les trouve"
	line "trop craquants."

	para "Oh, j'aimerais en"
	line "avoir un…"
	done
else
	text "My friend keeps a"
	line "Marill!"

	para "I find them very"
	line "endearing."

	para "Oh, I wish for a"
	line "Marill of my own…"
	done
endc

LassKriseSeenText:
if DEF(_LOCALE_FR)
	text "Allo? Pourquoi tu"
	line "me regardes?"

	para "Oh, un combat?"
	done
else
	text "Hello? Why are you"
	line "staring at me?"

	para "Oh, a battle?"
	done
endc

LassKriseBeatenText: ; text > text
if DEF(_LOCALE_FR)
	text "…Mmmh…"
	done
else
	text "…Hmmm…"
	done
endc

BugManiacLouSeenText:
if DEF(_LOCALE_FR)
	text "Personne ne bat"
	line "ma passion pour"
	cont "les #mon"
	cont "Insecte!"
	done
else
	text "Nobody can beat"
	line "my passion for"
	cont "bug #mon!"
	done
endc

BugManiacLouBeatenText:
if DEF(_LOCALE_FR)
	text "Comment est-ce"
	line "possible?!"
	done
else
	text "How can this be?!"
	done
endc

OfficermKeithSeenText:
if DEF(_LOCALE_FR)
	text "Halte! Que fais-tu"
	line "dehors si tard?"
	done
else
	text "Halt! What are"
	line "you doing out"
	cont "this late?"
	done
endc

OfficermKeithWinText:
if DEF(_LOCALE_FR)
	text "Tu sais te"
	line "défendre!"
	done
else
	text "You know how to"
	line "defend yourself!"
	done
endc

OfficermKeithAfterText:
if DEF(_LOCALE_FR)
	text "Le parc reste"
	line "ouvert la nuit,"

	para "car des Agents"
	line "comme moi le"
	cont "protègent!"
	done
else
	text "The park stays"
	line "open at night,"

	para "because Officers"
	line "like me keep it"
	cont "safe!"
	done
endc

OfficermKeithDaytimeText:
if DEF(_LOCALE_FR)
	text "Tu profites du"
	line "parc?"

	para "Prends toujours un"
	line "#mon avec toi"

	para "si tu vas dans"
	line "les hautes herbes!"
	done
else
	text "Enjoying the"
	line "park, are you?"

	para "Always take a"
	line "#mon with you"

	para "if you go in the"
	line "tall grass!"
	done
endc

NationalParkRelaxationSquareText:
if DEF(_LOCALE_FR)
	text "Place Détente"
	line "Parc Naturel"
	done
else
	text "Relaxation Square"
	line "National Park"
	done
endc

NationalParkBattleNoticeText:
if DEF(_LOCALE_FR)
	text "Qu'est-ce que"
	line "cette affiche?"

	para "Veuillez combattre"
	line "seulement dans"
	cont "l'herbe."

	para "Bureau du Gardien"
	line "du Parc Naturel"
	done
else
	text "What is this"
	line "notice?"

	para "Please battle only"
	line "in the grass."

	para "National Park"
	line "Warden's Office"
	done
endc

NationalParkTrainerTipsText:
if DEF(_LOCALE_FR)
	text "ASTUCE"

	para "Les #mon"
	line "sont plus"
	line "heureux grâce"

	para "aux coupes, aux"
	line "bénédictions,"

	para "aux photos et aux"
	line "friandises."
	done
else
	text "Trainer Tips"

	para "#mon become"
	line "happier from"

	para "haircuts, bless-"
	line "ings, photographs,"
	cont "and other treats."
	done
endc
