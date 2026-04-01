Route19BeachHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_19, 2
	warp_event  3,  7, ROUTE_19, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route19BeachHouseVictorScript, -1
	object_event  6,  4, SPRITE_SURFING_PIKACHU, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route19BeachHouseSurfingPikachuScript, -1

	object_const_def
	const ROUTE19BEACHHOUSE_VICTOR

Route19BeachHouseVictorScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_VICTOR
	iftruefwd .AfterScript
	writetext .GreetingText
	waitbutton
	special CheckForSurfingPikachu
	iffalsefwd .NoPikachu
	writetext .ChallengeText
	yesorno
	iffalsefwd .NoBattle
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked ROUTE19BEACHHOUSE_VICTOR
	loadtrainer VICTOR, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_VICTOR
	opentext
.AfterScript:
	jumpopenedtext .AfterText

.NoPikachu:
	jumpopenedtext .NoPikachuText

.NoBattle:
	jumpopenedtext .NoBattleText

.GreetingText:
if DEF(_LOCALE_FR)
	text "Salut, mon pote!"
	line "Moi c'est Victor."

	para "J'adore surfer,"
	line "et Puka aussi."
	cont "C'est mon Pikachu!"
	done
else
	text "Hey there, friend!"
	line "The name's Victor."

	para "I love to Surf,"
	line "and so does Puka."
	cont "That's my Pikachu!"
	done
endc

.ChallengeText:
if DEF(_LOCALE_FR)
	text "Whoa!"

	para "Ton Pikachu sait"
	line "surfer! Alors,"
	cont "j'suis pas seul…"

	para "Génial! Tu as"
	line "droit à un"

	para "combat de Surf"
	line "avec moi et Puka!"

	para "On y va?"
	done
else
	text "Whoa!"

	para "Your Pikachu knows"
	line "how to Surf! So,"
	cont "I'm not alone…"

	para "Great! You earned"
	line "the right to a"

	para "Surfing battle"
	line "with me and Puka!"

	para "Give it a go?"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "La mer unit tous"
	line "les surfeurs!"
	cont "En garde!"
	done
else
	text "The sea unites"
	line "all in surfdom!"
	cont "Let's go!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Je savais que"
	line "tu pouvais"
	cont "le faire!"
	done
else
	text "I knew you could"
	line "do it!"
	done
endc

.AfterText:
if DEF(_LOCALE_FR)
	text "J'ai entendu dire"
	line "que certains Pika-"

	para "chu de Johto ont"
	line "appris à surfer"
	cont "tout seuls."

	para "C'est peut-être"
	line "de là que vient"
	cont "le mien."

	para "J'ai trouvé Puka"
	line "échoué sur la"
	cont "plage il y a des"

	para "années, et depuis,"
	line "on est"
	cont "partenaires."
	done
else
	text "I hear some Pika-"
	line "chu in Johto"

	para "taught themselves"
	line "to Surf."

	para "Maybe that's where"
	line "mine came from."

	para "I found Puka wash-"
	line "ed ashore years"
	cont "ago. We've been"

	para "partners ever"
	line "since then."
	done
endc

.NoPikachuText:
if DEF(_LOCALE_FR)
	text "Toi aussi,"
	line "tu peux le faire!"

	para "Va trouver un"
	line "Pikachu Surfeur!"

	para "Montre-moi que tu"
	line "aimes"
	cont "surfer aussi!"
	done
else
	text "You can do it,"
	line "too!"

	para "Go out there and"
	line "find a Surfing"
	cont "Pikachu!"

	para "Show me that you"
	line "love Surfing too!"
	done
endc

.NoBattleText:
if DEF(_LOCALE_FR)
	text "Oh… Viens surfer"
	line "quand tu veux,"
	cont "mon pote!"
	done
else
	text "Shucks. Come Surf"
	line "anytime, friend!"
	done
endc

Route19BeachHouseSurfingPikachuScript:
	faceplayer
	showcrytext .Text, PIKACHU
	end

.Text:
if DEF(_LOCALE_FR)
	text "Puka: Pi-kaa!"
	done
else
	text "Puka: Pi-kaa!"
	done
endc
