IcePathB3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  5, ICE_PATH_B2F_MAHOGANY_SIDE, 2
	warp_event 15,  5, ICE_PATH_B2F_BLACKTHORN_SIDE, 2

	def_coord_events

	def_bg_events
	bg_event 16,  3, BGEVENT_JUMPTEXT, Text_IcePathB3FIceRock

	def_object_events
	object_event 10,  3, SPRITE_LORELEI, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, LoreleiScript, -1
	itemball_event  5,  7, NEVERMELTICE, 1, EVENT_ICE_PATH_B3F_NEVERMELTICE
	smashrock_event  6, 6

	object_const_def
	const ICEPATHB3F_LORELEI

LoreleiScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_ELITE_FOUR
	iftruefwd LoreleiRematchScript
	checkevent EVENT_BEAT_LORELEI
	iftruefwd LoreleiAfterScript
	checkevent EVENT_INTRODUCED_LORELEI
	iftruefwd LoreleiAfterIntroScript
	writetext LoreleiIntroText
	waitbutton
	setevent EVENT_INTRODUCED_LORELEI
LoreleiAfterIntroScript:
	writetext LoreleiAfterIntroText
	yesorno
	iffalse_jumpopenedtext LoreleiNoBattleText
	writetext LoreleiSeenText
	waitbutton
	closetext
	winlosstext LoreleiBeatenText, 0
	setlasttalked ICEPATHB3F_LORELEI
	loadtrainer LORELEI, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LORELEI
	opentext
	writetext LoreleiRewardText
	promptbutton
	verbosegiveitem ICY_ROCK
	setevent EVENT_GOT_ICY_ROCK_FROM_LORELEI
LoreleiAfterScript:
	readvar VAR_BADGES
	ifequalfwd NUM_JOHTO_BADGES, .AllEightBadges
	writetext LoreleiOneMoreBadgeText
	sjumpfwd .Finish

.AllEightBadges:
	writetext LoreleiAllBadgesText
.Finish
	promptbutton
	jumpthisopenedtext

	text "If you do beat"
	line "them, meet me here"
	cont "for a rematch."
	done

LoreleiRematchScript:
	checkevent EVENT_BEAT_LORELEI_AGAIN
	iftrue_jumpopenedtext LoreleiRematchAfterText
	checkevent EVENT_INTRODUCED_LORELEI
	iftruefwd LoreleiReintroductionScript
	writetext LoreleiIntroText
	waitbutton
	setevent EVENT_INTRODUCED_LORELEI
LoreleiAfterRematchIntroScript:
	writetext LoreleiRematchSeenText
	waitbutton
	closetext
	winlosstext LoreleiRematchBeatenText, 0
	setlasttalked ICEPATHB3F_LORELEI
	loadtrainer LORELEI, 3
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LORELEI_AGAIN
	opentext
	checkevent EVENT_GOT_ICY_ROCK_FROM_LORELEI
	iftrue_jumpopenedtext LoreleiRematchAfterText
	writetext LoreleiRewardText
	promptbutton
	verbosegiveitem ICY_ROCK
	setevent EVENT_GOT_ICY_ROCK_FROM_LORELEI
	jumpthisopenedtext

LoreleiRematchAfterText:
if DEF(_LOCALE_FR)
	text "Ton voyage n'est"
	line "pas fini."

	para "Tu peux gagner"
	line "des BADGES à"
	cont "KANTO,"

	para "attraper de nou-"
	line "veaux #MON,"

	para "te surpasser,"
	line "toi et ton équipe."

	para "Devenir MAITRE"
	line "#MON, c'est"
	cont "pour la vie."
	done
else
	text "Your journey isn't"
	line "over, you know."

	para "You can earn more"
	line "Badges in Kanto,"

	para "catch new species"
	line "of #mon,"

	para "improve yourself"
	line "and your team."

	para "Becoming a"
	line "#mon master is"
	cont "a life's work."
	done
endc

LoreleiReintroductionScript:
	writetext LoreleiRematchIntroAgainText
	waitbutton
	sjump LoreleiAfterRematchIntroScript

Text_IcePathB3FIceRock:
	text "The boulder is"
	line "coated with ice."

	para "It is bone-chill-"
	line "ing to touch."
	done

LoreleiIntroText:
if DEF(_LOCALE_FR)
	text "OLGA: Bonjour."
	line "Je suis OLGA."

	para "Tu vois ce rocher"
	line "glacé?"

	para "Il émet une"
	line "énergie inconnue."

	para "Jamais vue ici."

	para "Experte du type"
	line "Glace, je devais"
	cont "l'étudier."

	para "Et toi, que fais-"
	line "tu ici?"
	done
else
	text "Lorelei: Hello"
	line "there, trainer."
	cont "I am Lorelei."

	para "See that icy rock"
	line "over there?"

	para "It emits an energy"
	line "I've never seen in"
	cont "Kanto."

	para "As an expert on"
	line "Ice-type #mon,"
	cont "I had to investi-"
	cont "gate it."

	para "And what are you"
	line "doing here?"
	done
endc

LoreleiAfterIntroText:
if DEF(_LOCALE_FR)
	text "OLGA: Tu tentes"
	line "la LIGUE #MON."

	para "Je vois. Ironique."

	para "Et si je testais"
	line "ton niveau?"
	done
else
	text "Lorelei: You're"
	line "taking the #mon"

	para "League challenge."
	line "I see."
	cont "How ironic."

	para "Why don't I test"
	line "your skill?"
	done
endc

LoreleiNoBattleText:
	text "If you can't face"
	line "me, you'll never"

	para "be able to beat"
	line "the Champion."
	done

LoreleiSeenText:
	text "Hahaha! Get ready"
	line "to be frozen"
	cont "solid!"
	done

LoreleiBeatenText:
	text "You're better than"
	line "I thought!"
	done

LoreleiRewardText:
if DEF(_LOCALE_FR)
	text "Tu sais gérer le"
	line "type Glace."

	para "Alors prends ça."
	done
else
	text "You know how to"
	line "handle Ice-type"
	cont "#mon."

	para "Then you can use"
	line "this item."
	done
endc

LoreleiRematchIntroAgainText:
	text "Lorelei: Hello"
	line "again, <PLAYER>."
	done

LoreleiRematchSeenText:
	text "So you battled"
	line "the Elite Four?"

	para "I hope you took"
	line "Karen down a peg."

	para "…………You're the"
	line "new Champion."
	cont "I'm impressed."

	para "Then I won't have"
	line "to hold back!"
	done

LoreleiRematchBeatenText:
	text "As expected of"
	line "the Champion!"
	done

LoreleiOneMoreBadgeText:
if DEF(_LOCALE_FR)
	text "Continue. Avec un"
	line "BADGE de plus,"

	para "tu peux défier"
	line "la LIGUE #MON."
	done
else
	text "Go on ahead. You"
	line "can challenge the"

	para "#mon League"
	line "with one more"
	cont "Badge."
	done
endc

LoreleiAllBadgesText:
if DEF(_LOCALE_FR)
	text "Continue. Tu as"
	line "assez de BADGES"

	para "pour défier la"
	line "LIGUE #MON."
	done
else
	text "Go on ahead. You"
	line "have enough Badges"

	para "to challenge the"
	line "#mon League."
	done
endc
