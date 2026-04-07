ShamoutiTunnel_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 33,  9, SHAMOUTI_ISLAND, 3
	warp_event  5, 17, WARM_BEACH, 2

	def_coord_events

	def_bg_events
	bg_event 21,  5, BGEVENT_ITEM + NUGGET, EVENT_SHAMOUTI_TUNNEL_HIDDEN_NUGGET
	bg_event 32,  4, BGEVENT_ITEM + LEAF_STONE, EVENT_SHAMOUTI_TUNNEL_HIDDEN_LEAF_STONE

	def_object_events
	object_event 15, 17, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, OreManiacScript, -1
	object_event 24, 14, SPRITE_TAMER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerTamerOswald, -1
	object_event 24,  5, SPRITE_FIREBREATHER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerFirebreatherTala, -1
	object_event  6,  7, SPRITE_LADY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSightseerfNoelle, -1
	object_event  3, 16, SPRITE_SIGHTSEER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSightseermChester, -1
	itemball_event  3,  4, X_SPEED, 1, EVENT_SHAMOUTI_TUNNEL_X_SPEED
	itemball_event 12, 17, SMOOTH_ROCK, 1, EVENT_SHAMOUTI_TUNNEL_SMOOTH_ROCK

OreManiacScript:
	faceplayer
	opentext
	writetext .GreetingText
	promptbutton
	special Special_ChooseItem
	iffalse_jumpopenedtext .NoItemText
	special GetOreManiacPrice
	iffalse_jumpopenedtext .WrongItemText
	special ItemManiac_SelectQuantity
	iffalse_jumpopenedtext .NoItemText
	special MultiplyMoneyByQuantity
	writetext .OfferText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .NoItemText
	special TakeItemFromMemWithQuantity
	waitsfx
	playsound SFX_TRANSACTION
	special Give_hMoneyTemp
	special PlaceMoneyTopRight
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Marché conclu!"
	line "J'ai eu un minerai"
	cont "que j'peux adorer!"
	done
else
	text "The deal is done!"
	line "I've scored an ore"
	cont "I can adore!"
	done
endc

.GreetingText:
if DEF(_LOCALE_FR)
	text "Minerai, minerai…"
	line "Minerais adorés!"

	para "Je paie bien les"
	line "minerais rares."

	para "Tu n'as pas un"
	line "joli minerai"
	cont "qui m'fait vibrer?"
	done
else
	text "Ore, ore, ore…"
	line "Ores that I adore!"

	para "I'll pay you well"
	line "for rare ores."

	para "Don't you have an"
	line "adorable ore that"
	cont "shakes my core?"
	done
endc

.OfferText:
if DEF(_LOCALE_FR)
	text "Ce minerai… il me"
	line "fait vibrer!"

	para "Tu le vends pour"
	line "¥"
	text_decimal hMoneyTemp, 3, 7
	text "?"
	done
else
	text "That ore, it's"
	line "shaking me!"

	para "Will you sell it"
	line "for ¥"
	text_decimal hMoneyTemp, 3, 7
	text "?"
	done
endc

.WrongItemText:
if DEF(_LOCALE_FR)
	text "Hein? C'est quoi"
	line "ça?"

	para "Un minerai si"
	line "nul ne me fait"
	cont "pas vibrer!"
	done
else
	text "Huh? What on earth"
	line "is this?"

	para "You can't shake my"
	line "core with an ore"
	cont "so poor!"
	done
endc

.NoItemText:
if DEF(_LOCALE_FR)
	text "Hmmm. Mon coeur ne"
	line "bouge pas."

	para "J'espère que tu"
	line "m'en vendras un"
	cont "un jour."
	done
else
	text "Hmmm. My core won't"
	line "change."

	para "I hope you sell"
	line "one to me someday."
	done
endc

GenericTrainerTamerOswald:
	generictrainer TAMER, OSWALD, EVENT_BEAT_TAMER_OSWALD, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Je suis dompteur,"
	line "mais au début,"

	para "au cirque,"
	line "j'étais à la"

	para "trapeze #-"
	line "MON."
	done
else
	text "I'm a Tamer now,"
	line "but when I first"

	para "started out in"
	line "the circus I was"

	para "in the #mon"
	line "trapeze act."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Je suis né pour"
	line "le cirque."

	para "Et je suis aussi"
	line "un vrai battant."
	done
else
	text "I was born a"
	line "circus man."

	para "Now I'm also a"
	line "fierce battler."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "J'ai pas su"
	line "dompter tes #MON…"
	done
else
	text "I couldn't tame"
	line "your #mon…"
	done
endc

GenericTrainerFirebreatherTala:
	generictrainer FIREBREATHER, TALA, EVENT_BEAT_FIREBREATHER_TALA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Mon numéro de feu"
	line "plait aux"
	cont "touristes."

	para "Certains laissent"
	line "même des dons!"
	done
else
	text "My fire-breathing"
	line "act is really"

	para "popular with the"
	line "tourists."

	para "Some even leave"
	line "donations!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Approchez!"
	line "Approchez!"

	para "Mon grand numéro"
	line "de cracheur de"
	cont "feu!"
	done
else
	text "Roll up, roll up,"
	line "for my spectacular"
	cont "fire-breathing"
	cont "extravaganza!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Déjà à bout"
	line "de souffle!"
	done
else
	text "Burned out"
	line "already!"
	done
endc

GenericTrainerSightseerfNoelle:
	generictrainer SIGHTSEERF, NOELLE, EVENT_BEAT_SIGHTSEERF_NOELLE, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Je fais un album"
	line "photo pour mes"
	cont "parents."

	para "Hé, regarde pas!"
	line "C'est privé!"
	done
else
	text "I'm making a photo"
	line "album to show my"
	cont "parents."

	para "Hey, don't look!"
	line "It's private!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Oh là là!"
	line "Tu as des #MON"

	para "que je n'ai"
	line "jamais vus!"

	para "Je peux prendre"
	line "une photo?"
	done
else
	text "Oh my gosh!"
	line "You have #mon"

	para "that I haven't"
	line "seen before!"

	para "Can I take a"
	line "photo?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Clic!"
	done
else
	text "Aww… I lost?"
	line "No problem!"

	para "Selfie! ♥"
	line "Click!"
	done
endc

GenericTrainerSightseermChester:
	generictrainer SIGHTSEERM, CHESTER, EVENT_BEAT_SIGHTSEERM_CHESTER, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Tu viens de"
	line "Johto? Je n'y"
	cont "suis jamais allé!"

	para "On se verra peut-"
	line "être à la Tour"
	cont "de Combat."
	done
else
	text "So you're from"
	line "Johto? I haven't"
	cont "been there!"

	para "Maybe I'll see"
	line "you in the Battle"
	cont "Tower."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Je voyage"
	line "dans le monde."

	para "Quelle région je"
	line "visite ensuite?"
	done
else
	text "I'm traveling"
	line "around the world."

	para "Which region"
	line "should I visit"
	cont "next?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Quelle belle"
	line "expérience!"
	done
else
	text "What a great"
	line "experience!"
	done
endc

