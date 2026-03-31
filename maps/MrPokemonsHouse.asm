MrPokemonsHouse_MapScriptHeader:
	def_scene_scripts
	scene_script MrPokemonsHouseTrigger0

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_30, 2
	warp_event  3,  7, ROUTE_30, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_JUMPTEXT, MrPokemonsHouse_ForeignMagazinesText
	bg_event  1,  1, BGEVENT_JUMPTEXT, MrPokemonsHouse_ForeignMagazinesText
	bg_event  6,  1, BGEVENT_JUMPTEXT, MrPokemonsHouse_BrokenComputerText
	bg_event  7,  1, BGEVENT_JUMPTEXT, MrPokemonsHouse_BrokenComputerText
	bg_event  6,  4, BGEVENT_JUMPTEXT, MrPokemonsHouse_StrangeCoinsText
	bg_event  3,  1, BGEVENT_READ, MrPokemonsHouse_CabinetScript

	def_object_events
	object_event  3,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, MrPokemonsHouse_MrPokemonScript, -1
	object_event  6,  5, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MR_POKEMONS_HOUSE_OAK
	object_event  4,  4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GOT_POKEDEX_FROM_OAK

	object_const_def
	const MRPOKEMONSHOUSE_GENTLEMAN
	const MRPOKEMONSHOUSE_OAK
	const MRPOKEMONSHOUSE_POKEDEX

MrPokemonsHouseTrigger0:
	sdefer .MrPokemonEvent
	end

.MrPokemonEvent:
	showemote EMOTE_SHOCK, MRPOKEMONSHOUSE_GENTLEMAN, 15
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, DOWN
	showtext MrPokemonIntroText1
	applymovement PLAYER, MrPokemonsHouse_PlayerWalksToMrPokemon
	opentext
	writetext MrPokemonIntroText2
	promptbutton
	waitsfx
	verbosegivekeyitem MYSTERY_EGG
	setevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	blackoutmod CHERRYGROVE_CITY
if !DEF(DEBUG)
	writetext MrPokemonIntroText3
	promptbutton
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, RIGHT
	writetext MrPokemonIntroText4
	promptbutton
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, DOWN
	turnobject MRPOKEMONSHOUSE_OAK, LEFT
	writetext MrPokemonIntroText5
	waitbutton
endc
	closetext
	sjumpfwd MrPokemonsHouse_OakScript

MrPokemonsHouse_MrPokemonScript:
	faceplayer
	opentext
	checkkeyitem RED_SCALE
	iftruefwd .RedScale
	checkitem ODD_SOUVENIR
	iftrue_jumpopenedtext MrPokemonText_OddSouvenir
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue_jumpopenedtext MrPokemonText_AlwaysNewDiscoveries
	jumpopenedtext MrPokemonText_ImDependingOnYou

.RedScale:
	writetext MrPokemonText_GimmeTheScale
	yesorno
	iffalse_jumpopenedtext MrPokemonText_Disappointed
	special SpecialGiveShinyDitto
	iffalse_jumpopenedtext MrPokemonText_PartyAndBoxFull
	writetext MrPokemonText_GotShinyDitto
	playsound SFX_KEY_ITEM
	waitsfx
	ifequalfwd 1, .in_party
	special Special_CurBoxFullCheck
	iffalsefwd .BoxNotFull
	farwritetext _CurBoxFullText
.BoxNotFull
	special GetCurBoxName
	writetext MrPokemonText_SentToPC
	promptbutton
.in_party
	takekeyitem RED_SCALE
	setevent EVENT_TRADED_RED_SCALE
	jumpopenedtext MrPokemonText_AlwaysNewDiscoveries

MrPokemonsHouse_OakScript:
	playmusic MUSIC_PROF_OAK
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakWalksToPlayer
	turnobject PLAYER, RIGHT
	showtext MrPokemonsHouse_OakText1
	turnobject MRPOKEMONSHOUSE_OAK, UP
	pause 10
	applymovement MRPOKEMONSHOUSE_POKEDEX, MrPokemonsHouse_OakTakesPokedex
	disappear MRPOKEMONSHOUSE_POKEDEX
	pause 10
	turnobject MRPOKEMONSHOUSE_OAK, LEFT
	pause 10
	opentext
	givespecialitem POKEDEX
	setflag ENGINE_POKEDEX
	writetext MrPokemonsHouse_OakText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakExits
	playsound SFX_EXIT_BUILDING
	disappear MRPOKEMONSHOUSE_OAK
	waitsfx
	special RestartMapMusic
	pause 15
	turnobject PLAYER, UP
	showtext MrPokemonsHouse_MrPokemonHealText
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	showtext MrPokemonText_ImDependingOnYou
	setevent EVENT_RIVAL_NEW_BARK_TOWN
	setevent EVENT_PLAYERS_HOUSE_1F_NEIGHBOR
	clearevent EVENT_PLAYERS_NEIGHBORS_HOUSE_NEIGHBOR
	setscene $1
	setmapscene CHERRYGROVE_CITY, $1
	setmapscene ELMS_LAB, $3
	specialphonecall SPECIALCALL_ROBBED
	clearevent EVENT_COP_IN_ELMS_LAB
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftruefwd .RivalTakesChikorita
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftruefwd .RivalTakesCyndaquil
	setevent EVENT_TOTODILE_POKEBALL_IN_ELMS_LAB
	end

.RivalTakesChikorita:
	setevent EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
	end

.RivalTakesCyndaquil:
	setevent EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
	end

MrPokemonsHouse_CabinetScript:
	opentext
	writetext MrPokemonsHouse_CabinetText
	checkevent EVENT_TRADED_RED_SCALE
	iffalsefwd .NoRedScale
	promptbutton
	writetext MrPokemonsHouse_RedScaleCabinetText
.NoRedScale
	waitbutton
	closetext
	end

MrPokemonsHouse_PlayerWalksToMrPokemon:
	step_right
	step_up
	step_end

MrPokemonsHouse_OakWalksToPlayer:
	step_down
	step_left
	step_left
	step_end

MrPokemonsHouse_OakTakesPokedex:
	fix_facing
	slide_step_down
	remove_fixed_facing
	step_end

MrPokemonsHouse_OakExits:
	step_down
	step_left
	turn_head_down
	step_sleep_2
	step_end

MrPokemonIntroText1:
if DEF(_LOCALE_FR)
	text "Hello! Tu dois"
	line "être <PLAYER>."

	para "Le Prof.Orme a dit"
	line "que tu viendrais."
	done
else
	text "Hello, hello! You"
	line "must be <PLAYER>."

	para "Prof.Elm said that"
	line "you would visit."
	done
endc

MrPokemonIntroText2:
if DEF(_LOCALE_FR)
	text "Voilà ce que je"
	line "voudrais que le"
	cont "Prof.Orme examine."
	done
else
	text "This is what I"
	line "want Prof.Elm to"
	cont "examine."
	done
endc

MrPokemonIntroText3:
if DEF(_LOCALE_FR)
	text "Je connais un cou-"
	line "ple d'amis qui"
	cont "dirige une"

	para "PENSION pour"
	line "#mon."

	para "Ils m'ont donné"
	line "cet OEUF."

	para "Il m'a paru louche"
	line "alors j'ai écrit"
	cont "au Prof.Orme."

	para "En ce qui concerne"
	line "les évolutions de"
	cont "#mon,"

	para "le Prof.Orme est"
	line "incollable."
	done
else
	text "I know a couple"
	line "who run a #mon"
	cont "Day-Care service."

	para "They gave me that"
	line "Egg."

	para "I was intrigued,"
	line "so I sent mail to"
	cont "Prof.Elm."

	para "For #mon evolu-"
	line "tion, Prof.Elm is"
	cont "the authority."
	done
endc

MrPokemonIntroText4:
if DEF(_LOCALE_FR)
	text "Même le Prof.Chen"
	line "le reconnaît."
	done
else
	text "Even Prof.Oak here"
	line "recognizes that."
	done
endc

MrPokemonIntroText5:
if DEF(_LOCALE_FR)
	text "A mon avis, le"
	line "Prof.Orme aura"
	cont "une explication."
	done
else
	text "If my assumption"
	line "is correct, Prof."
	cont "Elm will know it."
	done
endc

MrPokemonsHouse_MrPokemonHealText:
if DEF(_LOCALE_FR)
	text "Tu retournes voir"
	line "le Prof.Orme?"

	para "Tiens. Tes #mon"
	line "devraient se"
	cont "reposer."
	done
else
	text "You are returning"
	line "to Prof.Elm?"

	para "Here. Your #mon"
	line "should have some"
	cont "rest."
	done
endc

MrPokemonText_OddSouvenir:
if DEF(_LOCALE_FR)
	text "Oh! Ce souvenir!"

	para "J'en ai eu un"
	line "lors de mon"
	cont "voyage aux"

	para "Iles Orange."

	para "J'y ai vu aussi"
	line "des #mon"
	cont "bizarres!"

	para "Hmm… Je me"
	line "demande…"

	para "Y a-t-il un"
	line "lien entre ce"
	cont "souvenir"

	para "et ces formes"
	line "étranges de"
	cont "#mon?"
	done
else
	text "Oh! That souvenir!"

	para "I got one of those"
	line "on my trip to the"
	cont "Orange Islands."

	para "I saw some oddly-"
	line "formed #mon"
	cont "there too!"

	para "Hmm… I wonder…"

	para "Is there a conn-"
	line "ection between"

	para "that souvenir and"
	line "those unusual"
	cont "forms of #mon?"
	done
endc

MrPokemonText_ImDependingOnYou:
if DEF(_LOCALE_FR)
	text "Je compte"
	line "sur toi!"
	done
else
	text "I'm depending on"
	line "you!"
	done
endc

MrPokemonText_AlwaysNewDiscoveries:
if DEF(_LOCALE_FR)
	text "C'est beau la vie!"
	line "Il y a toujours"

	para "quelque chose"
	line "à découvrir!"
	done
else
	text "Life is delight-"
	line "ful! Always, new"

	para "discoveries to be"
	line "made!"
	done
endc

MrPokemonsHouse_OakText1:
if DEF(_LOCALE_FR)
	text "Chen: Ahaa!"
	line "C'est toi"
	cont "<PLAYER>!"

if !DEF(DEBUG)
	para "Moi c'est Chen!"
	line "Je suis un"
	cont "chercheur"

	para "#mon."

	para "Je suis venu"
	line "rendre visite"
	cont "à mon"

	para "vieil ami…"
	line "M.#mon!"

	para "On m'a dit que"
	line "tu rendais"
	cont "service au"

	para "Prof.Orme,"
	line "alors je"
	cont "t'attendais."

	para "Oh! C'est quoi"
	line "ça?"
	cont "Un #mon rare!"

	para "Voyons…"

	para "Hmm… Je vois!"

	para "Je comprends"
	line "pourquoi le"
	cont "Prof.Orme"

	para "t'a confié un"
	line "#mon pour"
	cont "cette mission."

	para "Pour des"
	line "chercheurs"
	cont "comme moi"

	para "et le Prof.Orme,"
	line "les #mon"
	cont "sont des amis."

	para "Il a tout de"
	line "suite compris"
	cont "que tu"

	para "ferais attention"
	line "à ton #mon."

	para "…Ah!"

	para "On peut te"
	line "faire"
	cont "confiance."

	para "Ca te dirait de"
	line "me rendre"
	cont "service?"

	para "Regarde ça:"
	line "c'est une"
	cont "nouvelle"

	para "version du"
	line "#dex."

	para "Il enregistre"
	line "automati-"
	cont "quement les"

	para "données sur"
	line "les #mon vus"
	cont "ou pris."

	para "C'est une"
	line "encyclo-"
	cont "pédie"

	para "moderne!"
endc
	done
else
	text "Oak: Aha! So"
	line "you're <PLAYER>!"

if !DEF(DEBUG)
	para "I'm Oak! A #mon"
	line "researcher."

	para "I was just visit-"
	line "ing my old friend"
	cont "Mr.#mon."

	para "I heard you were"
	line "running an errand"

	para "for Prof.Elm, so I"
	line "waited here."

	para "Oh! What's this?"
	line "A rare #mon!"

	para "Let's see…"

	para "Hm, I see!"

	para "I understand why"
	line "Prof.Elm gave you"

	para "a #mon for this"
	line "errand."

	para "To researchers"
	line "like Prof.Elm and"

	para "I, #mon are our"
	line "friends."

	para "He saw that you"
	line "would treat your"

	para "#mon with love"
	line "and care."

	para "…Ah!"

	para "You seem to be"
	line "dependable."

	para "How would you like"
	line "to help me out?"

	para "See? This is the"
	line "latest version of"
	cont "#dex."

	para "It automatically"
	line "records data on"

	para "#mon you've"
	line "seen or caught."

	para "It's a hi-tech"
	line "encyclopedia!"
endc
	done
endc

MrPokemonsHouse_OakText2:
if DEF(_LOCALE_FR)
	text "Rencontre un maxi-"
	line "mum de #mon et"

	para "complète le"
	line "#dex!"

if !DEF(DEBUG)
	para "Bon. Je dois"
	line "y aller."

	para "J'ai une"
	line "émission de"
	cont "radio à"

	para "faire à"
	line "Doublonville."

	para "<PLAYER>, je"
	line "compte sur"
	cont "toi!"
endc
	done
else
	text "Go meet many kinds"
	line "of #mon and"

	para "complete that"
	line "#dex!"

if !DEF(DEBUG)
	para "But I've stayed"
	line "too long."

	para "I have to get to"
	line "Goldenrod for my"
	cont "usual radio show."

	para "<PLAYER>, I'm"
	line "counting on you!"
endc
	done
endc

MrPokemonText_GimmeTheScale:
if DEF(_LOCALE_FR)
	text "Oh? Cette"
	line "ECAILLE!"

	para "C'est quoi?"
	line "Un Léviator"
	cont "rouge?"

	para "C'est dingue!"
	line "Je la veux…"

	para "<PLAYER>, veux-tu"
	line "l'échanger?"

	para "Je peux te donner"
	line "un #mon rare."
	done
else
	text "Hm? That Scale!"
	line "What's that?"
	cont "A red Gyarados?"

	para "It must have kept"
	line "its coloration as"
	cont "a Magikarp!"

	para "That could be"
	line "one of a kind!"
	cont "I, I want it…"

	para "<PLAYER>, would you"
	line "care to trade it?"

	para "I can offer you"
	line "a rare #mon."
	done
endc

MrPokemonText_GotShinyDitto:
if DEF(_LOCALE_FR)
	text "<PLAYER> reçoit"
	line "un #mon."
	done
else
	text "<PLAYER> received a"
	line "#mon."
	done
endc

MrPokemonText_SentToPC:
if DEF(_LOCALE_FR)
	text "Le #mon a été"
	line "envoyé au PC"
	cont "de "
	text_ram wStringBuffer1
	text "."
	done
else
	text "The #mon was"
	line "sent to "
	text_ram wStringBuffer1
	text "."
	done
endc

MrPokemonText_PartyAndBoxFull:
if DEF(_LOCALE_FR)
	text "Tu n'as plus de"
	line "place pour ça,"
	cont "même au PC!"
	done
else
	text "You don't have any"
	line "room for this,"
	cont "even in your Box!"
	done
endc

MrPokemonText_Disappointed:
if DEF(_LOCALE_FR)
	text "C'est dommage."
	line "C'est si rare…"
	done
else
	text "That's disappoint-"
	line "ing. That happens"
	cont "to be very rare."
	done
endc

MrPokemonsHouse_ForeignMagazinesText:
if DEF(_LOCALE_FR)
	text "Il y a plein de"
	line "magazines"
	cont "étrangers."

	para "On ne comprend"
	line "même pas les"
	cont "titres."
	done
else
	text "It's packed with"
	line "foreign magazines."

	para "Can't even read"
	line "their titles…"
	done
endc

MrPokemonsHouse_BrokenComputerText:
if DEF(_LOCALE_FR)
	text "Un gros ordinateur"
	line "tout cassé…"
	done
else
	text "It's a big com-"
	line "puter. Hmm. It's"
	cont "broken."
	done
endc

MrPokemonsHouse_StrangeCoinsText:
if DEF(_LOCALE_FR)
	text "Un tas de pièces"
	line "bizarres!"

	para "Elles sont peut-"
	line "être d'un autre"
	cont "pays…"
	done
else
	text "A whole pile of"
	line "strange coins!"

	para "Maybe they're from"
	line "another country…"
	done
endc

MrPokemonsHouse_CabinetText:
if DEF(_LOCALE_FR)
	text "Une collection"
	line "d'objets"
	cont "rares!"
	done
else
	text "A collection of"
	line "rare curiosities"
	cont "from all over!"
	done
endc

MrPokemonsHouse_RedScaleCabinetText:
if DEF(_LOCALE_FR)
	text "Parmi eux, il"
	line "y a l'Ecaille"
	cont "Rouge!"
	done
else
	text "One of them is the"
	line "shiny Red Scale!"
	done
endc
