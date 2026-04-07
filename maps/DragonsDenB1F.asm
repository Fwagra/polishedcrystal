DragonsDenB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, DragonsDenB1FRivalCallback

	def_warp_events
	warp_event 20,  3, DRAGONS_DEN_1F, 3
	warp_event 19, 29, DRAGON_SHRINE, 1

	def_coord_events
	coord_event 19, 30, 1, DragonsDenB1FClairTrigger

	def_bg_events
	bg_event 18, 24, BGEVENT_JUMPTEXT, DragonsDenShrineSignText
	bg_event 33, 29, BGEVENT_ITEM + REVIVE, EVENT_DRAGONS_DEN_B1F_HIDDEN_REVIVE
	bg_event 21, 17, BGEVENT_ITEM + MAX_POTION, EVENT_DRAGONS_DEN_B1F_HIDDEN_MAX_POTION
	bg_event 31, 15, BGEVENT_ITEM + MAX_ELIXIR, EVENT_DRAGONS_DEN_B1F_HIDDEN_MAX_ELIXIR

	def_object_events
	object_event 14, 30, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DRAGONS_DEN_CLAIR
	object_event 20, 23, SPRITE_RIVAL, SPRITEMOVEDATA_WANDER, 2, 2, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FRivalScript, EVENT_RIVAL_DRAGONS_DEN
	object_event 34, 19, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, KimonoGirlMinaScript, -1
	object_event 20,  8, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerDragonTamerDarin, -1
	object_event  8,  8, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerDragonTamerAdam, -1
	object_event  4, 17, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerAceDuoDanandcara1, -1
	object_event  4, 18, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerAceDuoDanandcara2, -1
	object_event 30, 29, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerTwinsLeaandpia1, -1
	object_event 31, 29, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerTwinsLeaandpia2, -1
	itemball_event 35, 16, DRAGON_FANG, 1, EVENT_DRAGONS_DEN_B1F_DRAGON_FANG
	itemball_event 30,  4, CALCIUM, 1, EVENT_DRAGONS_DEN_B1F_CALCIUM
	itemball_event  5, 20, MAX_ELIXIR, 1, EVENT_DRAGONS_DEN_B1F_MAX_ELIXIR

	object_const_def
	const DRAGONSDENB1F_CLAIR
	const DRAGONSDENB1F_RIVAL
	const DRAGONSDENB1F_KIMONO_GIRL

DragonsDenB1FRivalCallback:
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iftruefwd .CheckDay
	disappear DRAGONSDENB1F_RIVAL
	endcallback

.CheckDay:
	checkevent EVENT_GOT_RIVALS_EGG
	iffalsefwd .AppearRival
	readvar VAR_WEEKDAY
	ifequalfwd TUESDAY, .AppearRival
	ifequalfwd THURSDAY, .AppearRival
	ifequalfwd SATURDAY, .AppearRival
	disappear DRAGONSDENB1F_RIVAL
	endcallback

.AppearRival:
	appear DRAGONSDENB1F_RIVAL
	endcallback

DragonsDenB1FClairTrigger:
	appear DRAGONSDENB1F_CLAIR
	opentext
	writetext .WaitText
	pause 30
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, LEFT
	playmusic MUSIC_CLAIR
	applymovement DRAGONSDENB1F_CLAIR, .WalksToYouMovement
	opentext
	writetext .GiveTMText
	promptbutton
	verbosegivetmhm TM_DRAGON_PULSE
	setevent EVENT_GOT_TM59_DRAGON_PULSE
	writetext .DescribeDragonPulseText
	promptbutton
	writetext ClairPokemonLeagueDirectionsText ; in BlackthornGym1F.asm
	waitbutton
	closetext
	applymovement DRAGONSDENB1F_CLAIR, .WalksAwayMovement
	special Special_FadeOutMusic
	pause 30
	special RestartMapMusic
	disappear DRAGONSDENB1F_CLAIR
	setscene $0
	setmapscene NEW_BARK_TOWN, $1
	clearevent EVENT_LYRA_IN_HER_ROOM
	end

.WaitText:
	text "Wait!"
	done

.GiveTMText:
if DEF(_LOCALE_FR)
	text "SANDRA: Excuse-moi"
	line "pour tout. Tiens."
	line "Pour me faire"
	line "pardonner."
	done
else
	text "Clair: I'm sorry"
	line "about this."

	para "Here, take this as"
	line "my apology."
	done
endc

.DescribeDragonPulseText:
	text "That contains"
	line "Dragon Pulse."

	para "If you don't want"
	line "it, you don't have"
	cont "to take it."
	done

.WalksToYouMovement:
	slow_step_right
	slow_step_right
	slow_step_right
	slow_step_right
	step_end

.WalksAwayMovement:
	slow_step_left
	slow_step_left
	slow_step_left
	slow_step_left
	step_end

DragonsDenShrineSignText:
if DEF(_LOCALE_FR)
	text "AUTEL DRAGON En"
	line "l'honneur des #MON"
	line "dragons ayant vécu"
	line "dans l'ANTRE du"
	line "DRAGON."
	done
else
	text "Dragon Shrine"

	para "A shrine honoring"
	line "the dragon #mon"

	para "said to have lived"
	line "in Dragon's Den."
	done
endc

DragonsDenB1FRivalScript:
	playmusic MUSIC_RIVAL_ENCOUNTER
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftruefwd .RivalTalkAgain
	checkevent EVENT_GOT_RIVALS_EGG
	iftruefwd .RivalTalk
	writetext .Training1Text
	waitbutton
	writetext .GiveEggText
	promptbutton
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftruefwd .GiveChikoritaEgg
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftruefwd .GiveCyndaquilEgg
	giveegg TOTODILE
	sjumpfwd .GotRivalsEgg

.GiveChikoritaEgg:
	giveegg CHIKORITA
	sjumpfwd .GotRivalsEgg

.GiveCyndaquilEgg:
	giveegg CYNDAQUIL
.GotRivalsEgg
	iffalsefwd .PartyAndBoxFull
	writetext .DescribeEggText
	waitbutton
	closetext
	setevent EVENT_GOT_RIVALS_EGG
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setmapscene ELMS_LAB, $7
	special RestartMapMusic
	end

.PartyAndBoxFull:
	writetext .PartyAndBoxFullText
	waitbutton
	closetext
	special RestartMapMusic
	end

.RivalTalk:
	writetext .Training1Text
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	special RestartMapMusic
	end

.RivalTalkAgain:
	writetext .Training2Text
	waitbutton
	closetext
	special RestartMapMusic
	end

.GiveEggText:
if DEF(_LOCALE_FR)
	text "…"
	line "Ecoute."

	para "Le #MON que j'ai…"
	line "pris au LABO…"

	para "Il avait un OEUF."
	line "J'en veux pas."
	cont "Tiens."
	done
else
	text "…"
	line "Listen."

	para "The #mon I…"
	line "took from the Lab…"

	para "It had an Egg."
	line "I don't need it."
	cont "Here. Take it."
	done
endc

.DescribeEggText:
	text "Humph. Are you"
	line "through here?"

	para "Then stay out of"
	line "my way."
	done

.PartyAndBoxFullText:
	text "Humph. You don't"
	line "have any room…"
	cont "Even in your Box…"
	done

.Training1Text:
if DEF(_LOCALE_FR)
	text "…… Quoi? <PLAYER>?"
	line "…Non, je ne me"
	line "battrai pas avec"
	line "toi maintenant…"
	line "Mes #MON ne sont"
	line "pas prêts. Et je"
	line "ne veux pas les"
	line "pousser. Je dois"
	line "être sage pour"
	line "devenir un jour le"
	line "plus grand des"
	line "dresseurs…"
	done
else
	text "…"
	line "What? <PLAYER>?"

	para "…No, I won't"
	line "battle you now…"

	para "My #mon aren't"
	line "ready to beat you."

	para "I can't push them"
	line "too hard now."

	para "I have to be dis-"
	line "ciplined to become"

	para "the greatest #-"
	line "mon trainer…"
	done
endc

.Training2Text:
if DEF(_LOCALE_FR)
	text "……. Pffouiii… Ne"
	line "croise plus jamais"
	line "ma route…"
	done
else
	text "…"

	para "Whew…"

	para "Learn to stay out"
	line "of my way…"
	done
endc

GenericTrainerDragonTamerDarin:
	generictrainer DRAGON_TAMER, DARIN, EVENT_BEAT_DRAGON_TAMER_DARIN, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Le TEMPLE est la"
	line "demeure de notre"
	line "MAITRE, chef du"
	line "clan des dragons."
	line "Tu n'as pas le"
	line "droit d'entrer!"
	done
else
	text "The Shrine ahead"
	line "is home to the"

	para "Master of our"
	line "dragon-user clan."

	para "You're not allowed"
	line "to just go in!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Toi! On ne veut"
	line "pas de toi ici!"
	done
else
	text "You! How dare you"
	line "enter uninvited!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Quelle puissance!"
	done
else
	text "S-strong!"
	done
endc

GenericTrainerDragonTamerAdam:
	generictrainer DRAGON_TAMER, ADAM, EVENT_BEAT_DRAGON_TAMER_ADAM, .SeenText, .BeatenText

	text "Not even the power"
	line "of dragons could"
	cont "stop you."

	para "You may be the"
	line "kind of trainer"

	para "our Master is"
	line "looking for."
	done

.SeenText:
if DEF(_LOCALE_FR)
	text "Tu ne dois pas"
	line "être ici!"
	done
else
	text "You shouldn't be"
	line "in here!"
	done
endc

.BeatenText:
	text "No! I was"
	line "defeated!"
	done

GenericTrainerAceDuoDanandcara1:
	generictrainer ACE_DUO, DANANDCARA1, EVENT_BEAT_ACE_DUO_DAN_AND_CARA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Je vais bientôt"
	line "avoir l'accord du"
	line "MAITRE pour utili-"
	line "ser des dragons."
	line "Et alors, je pour-"
	line "rai rendre mon"
	line "MAITRE fier en"
	line "devenant un grand"
	line "dresseur."
	done
else
	text "Dan: Soon I'll"
	line "get permission"

	para "from our Master to"
	line "use dragons."

	para "When I do, I'm"
	line "going to become an"

	para "admirable dragon"
	line "trainer and gain"

	para "our Master's"
	line "approval."
	done
endc

.SeenText:
	text "Dan: I may not"
	line "use dragons, but"
	cont "I'm still strong!"
	done

.BeatenText:
	text "Dan: You were"
	line "even stronger!"
	done

GenericTrainerAceDuoDanandcara2:
	generictrainer ACE_DUO, DANANDCARA2, EVENT_BEAT_ACE_DUO_DAN_AND_CARA, .SeenText, .BeatenText

	text "Cara: Dragons are"
	line "difficult to"

	para "raise, and very"
	line "powerful."

	para "They're not for"
	line "everyone."
	done

.SeenText:
	text "Cara: Do you want"
	line "to train dragons"
	cont "too?"
	done

.BeatenText:
if DEF(_LOCALE_FR)
	text "Oups!"
	done
else
	text "Cara: Oh yikes,"
	line "I lost!"
	done
endc

GenericTrainerTwinsLeaandpia1:
	generictrainer TWINS, LEAANDPIA1, EVENT_BEAT_TWINS_LEA_AND_PIA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "C'est comme com-"
	line "battre PETER."
	done
else
	text "It was like having"
	line "to battle Lance."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "C'est un étranger"
	line "que l'on ne"
	line "connaît pas."
	done
else
	text "It's a stranger we"
	line "don't know."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Ouille."
	done
else
	text "Ouchies."
	done
endc

GenericTrainerTwinsLeaandpia2:
	generictrainer TWINS, LEAANDPIA1, EVENT_BEAT_TWINS_LEA_AND_PIA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "On va le dire. Le"
	line "MAITRE ne sera pas"
	line "content."
	done
else
	text "We'll tell on you."

	para "Master will be"
	line "angry with you."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Hein? Tu es qui,"
	line "déjà? Moi? Tu"
	line "ignores qui je"
	line "suis? Je suis la"
	line "star musicale,"
	line "Imakuni! Je chante"
	line "le #Rap--tu"
	line "danses! ♪ La di da"
	line "di da, La di da di"
	line "da… ♪ Bouge les"
	line "pieds! Quoi? Des"
	line "#MON? Tu veux te"
	line "battre contre moi?"
	done
else
	text "Who are you?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Pas sympa."
	done
else
	text "Meanie."
	done
endc

KimonoGirlMinaScript:
	checkevent EVENT_GOT_ABILITYPATCH_FROM_KIMONO_GIRL_MINA
	iftrue_jumptextfaceplayer .OutroText
	faceplayer
	checkevent EVENT_BEAT_KIMONO_GIRL_MINA
	iftruefwd .Beaten
	checkevent EVENT_BEAT_KIMONO_GIRL_NAOKO
	iffalse_jumptext .IntroText
	checkevent EVENT_BEAT_KIMONO_GIRL_SAYO
	iffalse_jumptext .IntroText
	checkevent EVENT_BEAT_KIMONO_GIRL_ZUKI
	iffalse_jumptext .IntroText
	checkevent EVENT_BEAT_KIMONO_GIRL_KUNI
	iffalse_jumptext .IntroText
	checkevent EVENT_BEAT_KIMONO_GIRL_MIKI
	iffalse_jumptext .IntroText
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked DRAGONSDENB1F_KIMONO_GIRL
	loadtrainerwithpal KIMONO_GIRL, MINA, TRAINERPAL_MINA
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_KIMONO_GIRL_MINA
.Beaten:
	opentext
	writetext .AfterText
	promptbutton
	verbosegiveitem ABILITYPATCH
	iffalse_jumpopenedtext .BagFullText
	setevent EVENT_GOT_ABILITYPATCH_FROM_KIMONO_GIRL_MINA
	jumpthisopenedtext

.OutroText:
	text "Coming here from"
	line "Ecruteak City"

	para "was worth the"
	line "trouble."

	para "Dragon's Den is an"
	line "ideal place for me"
	cont "to train."
	done

.BagFullText:
	text "…That is, once you"
	line "have freed up some"
	cont "space in your Bag."
	done

.IntroText:
if DEF(_LOCALE_FR)
	text "Je suis une fille"
	line "en kimono. Tu as"
	line "rencontré mes cinq"
	line "cousines danseuses"
	line "à Doublonville?"
	line "Dis-moi si c'est"
	line "le cas."
	done
else
	text "I am a Kimono"
	line "Girl."

	para "Haven't you met my"
	line "five dancing cou-"
	cont "sins in Ecruteak?"

	para "Let me know if"
	line "you do."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Celle qui sait le"
	line "plus parle le"
	cont "moins!"

	para "Laisse-moi te"
	line "défier, toi et tes"
	cont "#MON!"
	done
else
	text "She who knows the"
	line "most speaks the"
	cont "least!"

	para "Allow me to cha-"
	line "llenge you and"
	cont "your #mon!"
	done
endc

.BeatenText:
	text "Oh, you are"
	line "wonderful…"
	done

.AfterText:
	text "You are quite the"
	line "Trainer."

	para "You are worthy of"
	line "this item!"
	done
