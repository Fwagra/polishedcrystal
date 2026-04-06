EmbeddedTower_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6, 23, ROUTE_47, 6
	warp_event  7, 23, ROUTE_47, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  9, SPRITE_STEVEN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, EmbeddedTowerSteven1Script, EVENT_EMBEDDED_TOWER_STEVEN_1
	object_event  4, 11, SPRITE_STEVEN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, EmbeddedTowerSteven2Script, EVENT_EMBEDDED_TOWER_STEVEN_2

	object_const_def
	const EMBEDDEDTOWER_STEVEN1
	const EMBEDDEDTOWER_STEVEN2

EmbeddedTowerSteven1Script:
	faceplayer
	opentext
	checkevent EVENT_BEAT_STEVEN
	iftruefwd .Beaten
	checkevent EVENT_LISTENED_TO_STEVEN_INTRO
	iftruefwd .HeardIntro
	writetext EmbeddedTowerSteven1IntroText
	waitbutton
	setevent EVENT_LISTENED_TO_STEVEN_INTRO
.HeardIntro
	writetext EmbeddedTowerSteven1TowerText
	waitbutton
	checkevent EVENT_BEAT_ELITE_FOUR
	iffalse_jumpopenedtext EmbeddedTowerSteven1NotNowText
	writetext EmbeddedTowerSteven1ChallengeText
	yesorno
	iffalse_jumpopenedtext EmbeddedTowerSteven1NoText
	writetext EmbeddedTowerSteven1YesText
	waitbutton
	closetext
	winlosstext EmbeddedTowerSteven1WinText, 0
	setlasttalked EMBEDDEDTOWER_STEVEN1
	loadtrainer STEVEN, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_STEVEN
	opentext
.Beaten:
	checkevent EVENT_GOT_MUSCLE_BAND_FROM_STEVEN
	iftrue_jumpopenedtext EmbeddedTowerSteven1AfterText
	writetext EmbeddedTowerSteven1ItemText
	waitbutton
	verbosegiveitem MUSCLE_BAND
	iffalse_endtext
	setevent EVENT_GOT_MUSCLE_BAND_FROM_STEVEN
.GotMuscleBand
	jumpopenedtext EmbeddedTowerSteven1AfterText

EmbeddedTowerSteven2Script:
	checkevent EVENT_BEAT_STEVEN
	iftrue_jumptextfaceplayer EmbeddedTowerSteven2AfterText
	faceplayer
	opentext
	writetext EmbeddedTowerSteven2ChallengeText
	yesorno
	iffalse_jumpopenedtext EmbeddedTowerSteven2NoText
	writetext EmbeddedTowerSteven2YesText
	waitbutton
	closetext
	winlosstext EmbeddedTowerSteven2WinText, 0
	setlasttalked EMBEDDEDTOWER_STEVEN2
	loadtrainer STEVEN, 2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_STEVEN
	opentext
	jumpopenedtext EmbeddedTowerSteven2AfterText

EmbeddedTowerSteven1IntroText:
if DEF(_LOCALE_FR)
	text "Bonjour! Je suis"
	line "Pierre. J'adore"

	para "les pierres rares."
	line "Je viens de Hoenn,"

	para "une belle région"
	line "au bord d'un océan"

	para "d'une clarté"
	line "incroyable."

	para "Tu devrais y faire"
	line "un tour."
	done
else
	text "Hello! I'm Steven."
	line "Rare stones are"
	cont "my passion."

	para "I'm from the Hoenn"
	line "region. It's a"

	para "beautiful place,"
	line "with the clearest"

	para "ocean you can"
	line "imagine."

	para "You should visit"
	line "sometime."
	done
endc

EmbeddedTowerSteven1TowerText:
if DEF(_LOCALE_FR)
	text "Pierre: Je cherche"
	line "des pierres pour"

	para "ma collection."
	line "Voici la Tour"

	para "Enfouie. Des gens"
	line "de Hoenn l'ont"

	para "bâtie pour lier"
	line "la mer, la terre"

	para "et le ciel."
	done
else
	text "Steven: I'm here in"
	line "search of stones"
	cont "for my collection."

	para "This is the"
	line "Embedded Tower."

	para "It was built by"
	line "people from Hoenn"

	para "to bind together"
	line "the sea, the land,"
	cont "and the sky."
	done
endc

EmbeddedTowerSteven1NotNowText:
if DEF(_LOCALE_FR)
	text "Pierre:"
	line "Tes #mon sont"

	para "en pleine forme."
	line "Quand tu auras"

	para "vaincu le Conseil"
	line "4, reviens te"

	para "battre contre moi."
	done
else
	text "Steven: Your"
	line "#mon are look-"
	cont "ing pretty good."

	para "If you can beat"
	line "the Elite Four,"

	para "come back here to"
	line "battle with me."
	done
endc

EmbeddedTowerSteven1ChallengeText:
if DEF(_LOCALE_FR)
	text "Pierre:"
	line "Tes #mon sont"

	para "en pleine forme."
	line "On est tous les"

	para "deux là: un duel?"
	done
else
	text "Steven: Your"
	line "#mon are look-"
	cont "ing pretty good."

	para "Since we're both"
	line "here, why don't we"
	cont "have a battle?"
	done
endc

EmbeddedTowerSteven1NoText:
EmbeddedTowerSteven2NoText:
if DEF(_LOCALE_FR)
	text "Pierre: Hum."
	line "Si tu changes"

	para "d'avis, je serai"
	line "toujours là."
	done
else
	text "Steven: Hmm."
	line "If you change"

	para "your mind, I'll"
	line "be right here."
	done
endc

EmbeddedTowerSteven1YesText:
EmbeddedTowerSteven2YesText:
if DEF(_LOCALE_FR)
	text "Pierre: Montre-moi"
	line "tout ce que tu"

	para "as! En garde!"
	done
else
	text "Steven: I want"
	line "you to hit me"

	para "with it all!"
	line "Now, bring it!"
	done
endc

EmbeddedTowerSteven1WinText:
EmbeddedTowerSteven2WinText:
if DEF(_LOCALE_FR)
	text "Tu es vraiment un"
	line "noble Dresseur de"
	cont "#mon!"
	done
else
	text "You are a truly"
	line "noble #mon"
	cont "trainer!"
	done
endc

EmbeddedTowerSteven1ItemText:
if DEF(_LOCALE_FR)
	text "Pierre: Bravo!"

	para "L'amour que tu"
	line "portes à tes"

	para "#mon… Et ceux"
	line "qui y répondent"

	para "de toutes leurs"
	line "forces…"

	para "Vous êtes un tout"
	line "et créez une"

	para "puissance encore"
	line "plus grande."

	para "Ainsi tu as gagné."
	line "Prends ce Band."

	para "Muscle, il te"
	line "sera utile."
	done
else
	text "Steven: Congratu-"
	line "lations!"

	para "The feelings you"
	line "have for your"
	cont "#mon…"

	para "And the #mon"
	line "that responded to"

	para "those feelings"
	line "with all their"
	cont "might…"

	para "They came toge-"
	line "ther as one and"

	para "created an even"
	line "greater power."

	para "And thus, you"
	line "were able to"
	cont "grasp victory!"

	para "I'm sure you can"
	line "benefit from this"
	cont "item."
	done
endc

EmbeddedTowerSteven1AfterText:
if DEF(_LOCALE_FR)
	text "Pierre: A une"
	line "prochaine fois!"
	done
else
	text "Steven: May our"
	line "paths cross again."
	done
endc

EmbeddedTowerSteven2ChallengeText:
if DEF(_LOCALE_FR)
	text "Pierre:"
	line "Te revoilà,"
	cont "<PLAYER>!"

	para "J'ai trouvé de"
	line "belles pierres"

	para "pour compléter"
	line "ma collection."

	para "Quoi de neuf?"

	para "Tu as encore battu"
	line "le Conseil 4?"

	para "Bravo! On refait"
	line "un duel?"
	done
else
	text "Steven: We meet"
	line "again, <PLAYER>!"

	para "I've found some"
	line "excellent stones"
	cont "for my collection."

	para "So what have you"
	line "been doing?"

	para "You battled the"
	line "Elite Four and won"
	cont "again? Great job!"

	para "Why don't we have"
	line "another battle?"
	done
endc

EmbeddedTowerSteven2AfterText:
if DEF(_LOCALE_FR)
	text "Pierre: Au final,"
	line "tu restes le plus"

	para "fort. Mais je ne"
	line "regrette pas ce"

	para "combat. Chaque"
	line "fois qu'on se bat,"

	para "j'apprends sur les"
	line "#mon!"
	done
else
	text "Steven: In the"
	line "end, you are still"
	cont "the strongest."

	para "But I don't regret"
	line "our battle."

	para "Because each time"
	line "that I battle you,"

	para "I learn more about"
	line "#mon!"
	done
endc
