OaksLab_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 11, PALLET_TOWN, 3
	warp_event  5, 11, PALLET_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  7,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  8,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  9,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  0,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  1,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  2,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  3,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  6,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  7,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  8,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  9,  7, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  4,  0, BGEVENT_JUMPTEXT, OaksLabPoster1Text
	bg_event  5,  0, BGEVENT_JUMPTEXT, OaksLabPoster2Text
	bg_event  0,  1, BGEVENT_JUMPTEXT, OaksLabPCText

	def_object_events
	object_event  4,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, Oak, -1
	object_event  7,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, EEVEE, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, NO_FORM, EeveeDollScript, EVENT_DECO_EEVEE_DOLL
	object_event  1,  8, SPRITE_AROMA_LADY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, OaksAssistant1Text, -1
	object_event  8,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OaksAssistant2Text, -1
	object_event  1,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, OaksAssistant3Text, -1
	object_event  2,  1, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptext, OaksLabPokedexText, -1

	object_const_def
	const OAKSLAB_OAK
	const OAKSLAB_EEVEE_DOLL

Oak:
	faceplayer
	opentext
	checkevent EVENT_OPENED_MT_SILVER
	iftruefwd .GiveStarter
	checkevent EVENT_TALKED_TO_OAK_IN_KANTO
	iftruefwd .GiveStarter
	writetext OakWelcomeKantoText
	promptbutton
	setevent EVENT_TALKED_TO_OAK_IN_KANTO
.GiveStarter:
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftruefwd .CheckBadges
	checkevent EVENT_GOT_A_POKEMON_FROM_IVY
	iffalsefwd .CheckBadges
	writetext OakLabGiveStarterText
	promptbutton
	waitsfx
	checkevent EVENT_GOT_BULBASAUR_FROM_IVY
	iftruefwd .Charmander
	checkevent EVENT_GOT_CHARMANDER_FROM_IVY
	iftruefwd .Squirtle
	givepoke BULBASAUR, PLAIN_FORM, 10, SITRUS_BERRY
	iffalsefwd .PartyAndBoxFull
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	sjumpfwd .CheckBadges

.Charmander:
	givepoke CHARMANDER, PLAIN_FORM, 10, SITRUS_BERRY
	iffalsefwd .PartyAndBoxFull
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	sjumpfwd .CheckBadges

.Squirtle:
	givepoke SQUIRTLE, PLAIN_FORM, 10, SITRUS_BERRY
	iffalsefwd .PartyAndBoxFull
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	sjumpfwd .CheckBadges

.PartyAndBoxFull:
	writetext OakLabPartyAndBoxFullText
	waitbutton
.CheckBadges:
	checkevent EVENT_OPENED_MT_SILVER
	iftruefwd .CheckPokedex
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .BattleOak
	readvar VAR_BADGES
	ifequalfwd 16, .Complain1
	ifequalfwd  8, .Complain2
	writetext OakYesKantoBadgesText
	promptbutton
.CheckPokedex:
	checkkeyitem CATCH_CHARM
	iftruefwd .GotCatchCharm
	writetext OakLabCatchMoreText
	promptbutton
	verbosegivekeyitem CATCH_CHARM
	writetext OakLabCatchCharmText
	waitbutton
.GotCatchCharm
	writetext OakLabDexCheckText
	waitbutton
	special ProfOaksPCBoot
	checkkeyitem OVAL_CHARM
	iftruefwd .NoOvalCharm
	setval16 NUM_POKEMON
	special CountSeen
	iffalsefwd .NoOvalCharm
	writetext OakLabSeenAllText
	promptbutton
	verbosegivekeyitem OVAL_CHARM
	writetext OakLabOvalCharmText
	waitbutton
.NoOvalCharm
	checkkeyitem SHINY_CHARM
	iftruefwd .NoShinyCharm
	setval16 NUM_POKEMON
	special CountCaught
	iffalsefwd .NoShinyCharm
	writetext OakLabCaughtAllText
	promptbutton
	verbosegivekeyitem SHINY_CHARM
	writetext OakLabShinyCharmText
	waitbutton
.NoShinyCharm
	jumpopenedtext OakLabGoodbyeText

.BattleOak:
	checkevent EVENT_LISTENED_TO_OAK_INTRO
	iftruefwd .HeardIntro
	writetext OakMightBeReadyText
	waitbutton
	setevent EVENT_LISTENED_TO_OAK_INTRO
.HeardIntro:
	writetext OakChallengeText
	yesorno
	iffalsefwd .NotReady
	writetext OakSeenText
	waitbutton
	closetext
	winlosstext OakWinText, 0
	setlasttalked OAKSLAB_OAK
	loadtrainer PROF_OAK, 1
	startbattle
	reloadmapafterbattle
	opentext
	writetext OakOpenMtSilverText
	promptbutton
	setevent EVENT_BEAT_PROF_OAK
	setevent EVENT_OPENED_MT_SILVER
	sjump .CheckPokedex

.NotReady:
	writetext OakRefusedText
	promptbutton
	sjump .CheckPokedex

.Complain1:
	writetext OakNoEliteFourRematchText
	promptbutton
	sjump .CheckPokedex

.Complain2:
	writetext OakNoKantoBadgesText
	promptbutton
	sjump .CheckPokedex

EeveeDollScript:
	turnobject OAKSLAB_OAK, RIGHT
	opentext
	writetext ProfOakEeveeDollTradeText
	waitbutton
	checkitem EVERSTONE
	iffalse_jumpopenedtext NoEverstoneText
	writetext WantToTradeText
	yesorno
	iffalse_jumpopenedtext NoTradeText
	takeitem EVERSTONE
	disappear OAKSLAB_EEVEE_DOLL
	setevent EVENT_DECO_EEVEE_DOLL
	writetext EeveeDollText
	playsound SFX_ITEM
	pause 60
	waitbutton
	writetext EeveeDollSentText
	waitbutton
	jumpopenedtext ProfOakAfterTradeText

OakWelcomeKantoText:
if DEF(_LOCALE_FR)
	text "CHEN: Ah, <PLAYER>!"
	line "Merci d'avoir vo-"

	para "yagé jusqu'à"
	line "KANTO."

	para "Que penses-tu des"
	line "dresseurs du coin?"
	cont "Plutôt forts, non?"
	done
else
	text "Oak: Ah, <PLAYER>!"
	line "It's good of you"

	para "to come all this"
	line "way to Kanto."

	para "What do you think"
	line "of the trainers"

	para "out here?"
	line "Pretty tough, huh?"
	done
endc

OakLabGiveStarterText:
if DEF(_LOCALE_FR)
	text "CHEN: Ah, le PROF."
	line "IVY t'a salué?"

	para "Merci d'avoir"
	line "transmis son"
	cont "message, <PLAYER>."

	para "C'est une bonne"
	line "amie."

	para "Si elle t'a donné"
	line "un #mon, moi"
	cont "aussi!"

	para "On voit rarement"
	line "ce #mon à KANTO"
	cont "ou JOHTO."
	done
else
	text "Oak: Oh, so Prof."
	line "Ivy says hello?"

	para "Thanks for convey-"
	line "ing her message,"
	cont "<PLAYER>."

	para "She's a good friend"
	line "of mine."

	para "If she gave you a"
	line "#mon, let me do"
	cont "the same!"

	para "You don't see this"
	line "#mon very often"
	cont "in Kanto or Johto."
	done
endc

OakLabPartyAndBoxFullText:
if DEF(_LOCALE_FR)
	text "Hmm? Tu n'as pas"
	line "de place, et ta"
	cont "BOITE est pleine."
	done
else
	text "Hm, you don't have"
	line "room for it, and"
	line "your Box is full."
	done
endc

OakLabDexCheckText:
if DEF(_LOCALE_FR)
	text "Et ton #dex?"
	line "Ca avance?"

	para "Voyons ça..."
	done
else
	text "How is your #-"
	line "dex coming?"

	para "Let's see…"
	done
endc

OakLabCatchMoreText:
if DEF(_LOCALE_FR)
	text "Merci pour ton"
	line "aide avec le"

	para "#dex."

	para "Voilà une"
	line "récompense!"
	done
else
	text "I want to thank"
	line "you for being of"

	para "such help with"
	line "filling out the"
	cont "#dex."

	para "Take this as a"
	line "reward for your"
	cont "hard work!"
	done
endc

OakLabCatchCharmText:
if DEF(_LOCALE_FR)
	text "Le CHARME CAPTURE"
	line "augmente tes"

	para "chances de capture"
	line "critique."

	para "C'est quand ta"
	line "#ball est"

	para "lancée pile comme"
	line "il faut, et a plus"
	cont "de chances!"
	done
else
	text "Holding a Catch"
	line "Charm will improve"

	para "your chances of a"
	line "critical capture."

	para "That's when your"
	line "# Ball is"

	para "thrown just right"
	line "and is more likely"
	cont "to succeed!"
	done
endc

OakLabSeenAllText:
if DEF(_LOCALE_FR)
	text "Tu rencontres des"
	line "nouveaux #mon"

	para "à bon rythme!"

	para "Voilà une"
	line "récompense!"
	done
else
	text "You've been meeting"
	line "new #mon at a"

	para "good clip, haven't"
	line "you?"

	para "Take this as a"
	line "reward for your"
	cont "hard work!"
	done
endc

OakLabOvalCharmText:
if DEF(_LOCALE_FR)
	text "Le CHARME OEUF"
	line "augmente tes"

	para "chances de trouver"
	line "un OEUF à la"
	cont "PENSION."
	done
else
	text "Holding an Oval"
	line "Charm will improve"

	para "your chances of"
	line "finding an Egg at"
	cont "the Day-Care."
	done
endc

OakLabCaughtAllText:
if DEF(_LOCALE_FR)
	text "J'ai eu raison de"
	line "te donner ce"
	cont "#dex."

	para "C'est la preuve de"
	line "tes efforts..."

	para "Et du soutien de"
	line "tous ceux qui"
	cont "t'ont aidé..."

	para "Et des liens que"
	line "tu as tissés"
	cont "avec tes #mon!"

	para "Voilà une"
	line "récompense!"
	done
else
	text "I was completely"
	line "justified in"

	para "giving you that"
	line "#dex."

	para "It is a testament"
	line "to your effort…"

	para "And to the support"
	line "of the many who"
	cont "helped you…"

	para "And to the bonds"
	line "you have built"
	cont "with your #mon!"

	para "Take this as a"
	line "reward for your"
	cont "hard work!"
	done
endc

OakLabShinyCharmText:
if DEF(_LOCALE_FR)
	text "Le CHARME CHROMA"
	line "augmente tes"

	para "chances de trouver"
	line "un #mon chroma!"
	done
else
	text "Holding a Shiny"
	line "Charm will improve"

	para "your chances of"
	line "finding a shiny"
	cont "#mon!"
	done
endc

OakLabGoodbyeText:
if DEF(_LOCALE_FR)
	text "N'hésite pas à"
	line "passer si tu es"
	cont "dans la région."
	done
else
	text "If you're in the"
	line "area, I hope you"
	cont "come visit again."
	done
endc

OakMightBeReadyText:
if DEF(_LOCALE_FR)
	text "CHEN: Incroyable,"
	line "<PLAYER>!"

	para "Tu as rebattu le"
	line "CONSEIL 4!"

	para "Tu es peut-être"
	line "prêt pour le"
	cont "MONT ARGENT."
	done
else
	text "Oak: Incredible,"
	line "<PLAYER>!"

	para "You won against"
	line "the Elite Four"
	cont "a second time!"

	para "You just might be"
	line "ready to ascend"
	cont "Mt.Silver."
	done
endc

OakChallengeText:
if DEF(_LOCALE_FR)
	text "CHEN: Le MONT"
	line "ARGENT est une"

	para "haute montagne,"
	line "pleine de #mon"
	cont "sauvages."

	para "C'est trop"
	line "dangereux, donc"
	cont "interdit."

	para "Je veux voir"
	line "ton niveau."

	para "Prêt pour"
	line "un combat?"
	done
else
	text "Oak: Mt.Silver is"
	line "a tall mountain"

	para "that is home to"
	line "many wild #mon."

	para "It's too dangerous"
	line "for your average"

	para "trainer, so it's"
	line "off limits."

	para "I'll need to see"
	line "your skills for"
	cont "myself."

	para "Are you ready for"
	line "a battle?"
	done
endc

OakRefusedText:
if DEF(_LOCALE_FR)
	text "CHEN: Reviens"
	line "quand tu es prêt."
	done
else
	text "Oak: Come back"
	line "when you're ready."
	done
endc

OakSeenText:
if DEF(_LOCALE_FR)
	text "CHEN: Donne tout!"
	done
else
	text "Oak: Put every-"
	line "thing you have"
	cont "into this battle!"
	done
endc

OakWinText:
if DEF(_LOCALE_FR)
	text "J'avais raison!"
	done
else
	text "I was right in my"
	line "assessment of you!"
	done
endc

OakOpenMtSilverText:
if DEF(_LOCALE_FR)
	text "CHEN: Super,"
	line "<PLAYER>!"

	para "Je vais faire en"
	line "sorte que tu"

	para "puisses aller au"
	line "MONT ARGENT."

	para "C'est rare, mais"
	line "on peut faire une"

	para "exception pour"
	line "toi, <PLAYER>."

	para "Va au PLATEAU"
	line "INDIGO. Tu pourras"

	para "accéder ensuite au"
	line "MONT ARGENT."

	para "…"

	para "J'ai laissé RED"
	line "s'entraîner au"

	para "MONT ARGENT après"
	line "sa 1re défaite."

	para "Mais il n'est"
	line "pas revenu..."
	done
else
	text "Oak: Spectacular,"
	line "<PLAYER>!"

	para "I'll make arrange-"
	line "ments so that you"

	para "can go to Mt."
	line "Silver."

	para "It's unusual, but"
	line "we can make an"

	para "exception in your"
	line "case, <PLAYER>."

	para "Go up to Indigo"
	line "Plateau. You can"

	para "reach Mt.Silver"
	line "from there."

	para "…"

	para "I let Red train on"
	line "Mt.Silver after"

	para "his first defeat"
	line "as Champion."

	para "But he hasn't"
	line "come back…"
	done
endc

OakNoKantoBadgesText:
if DEF(_LOCALE_FR)
	text "CHEN: Hmm? Tu ne"
	line "collectionnes pas"
	cont "les BADGES de"
	cont "KANTO?"

	para "Les CHAMPIONS"
	line "d'ARENE de KANTO"

	para "sont aussi forts"
	line "que ceux de JOHTO."

	para "Je te conseille de"
	line "les affronter."
	done
else
	text "Oak: Hmm? You're"
	line "not collecting"
	cont "Kanto Gym Badges?"

	para "The Gym Leaders in"
	line "Kanto are as tough"

	para "as any you battled"
	line "in Johto."

	para "I recommend that"
	line "you challenge"
	cont "them."
	done
endc

OakNoEliteFourRematchText:
if DEF(_LOCALE_FR)
	text "CHEN: Woah!"
	line "C'est génial, ça!"

	para "Tu as gagné les"
	line "BADGES de KANTO!"
	cont "Bravo!"

	para "Le CONSEIL 4 te"
	line "combattra à fond."

	para "Bonne chance,"
	line "<PLAYER>!"
	done
else
	text "Oak: Wow! That's"
	line "excellent!"

	para "You collected the"
	line "Badges of Gyms in"
	cont "Kanto. Well done!"

	para "Now you can cha-"
	line "llenge the Elite"

	para "Four with their"
	line "best #mon."

	para "Keep trying hard,"
	line "<PLAYER>!"
	done
endc

OakYesKantoBadgesText:
if DEF(_LOCALE_FR)
	text "CHEN: Tu"
	line "collectionnes les"
	cont "BADGES de KANTO."

	para "C'est dur, mais tu"
	line "as de l'expérience"
	cont "maintenant."

	para "Quand tu as les 8,"
	line "reviens me voir."

	para "Bonne chance,"
	line "<PLAYER>!"
	done
else
	text "Oak: Ah, you're"
	line "collecting Kanto"
	cont "Gym Badges."

	para "I imagine that"
	line "it's hard, but the"

	para "experience is sure"
	line "to help you."

	para "After you earn all"
	line "eight, you can"
	cont "challenge the"

	para "Elite Four at"
	line "their best."

	para "Keep trying hard,"
	line "<PLAYER>!"
	done
endc

OaksAssistant1Text:
if DEF(_LOCALE_FR)
	text "La CHRONIQUE PKMN"
	line "du PROF à la radio"

	para "ne passe pas ici,"
	line "à KANTO."

	para "C'est bête..."
	line "Je l'aime tant."
	done
else
	text "The Prof's #mon"
	line "Talk radio program"

	para "isn't aired here"
	line "in Kanto."

	para "It's a shame--I'd"
	line "like to hear it."
	done
endc

OaksAssistant2Text:
if DEF(_LOCALE_FR)
	text "Grâce à ton tra-"
	line "vail sur le #-"
	cont "dex, les recher-"

	para "ches du PROF ont"
	line "bien progressé."
	done
else
	text "Thanks to your"
	line "work on the #-"
	cont "dex, the Prof's"

	para "research is coming"
	line "along great."
	done
endc

OaksAssistant3Text:
if DEF(_LOCALE_FR)
	text "Ne le répète pas,"
	line "mais la CHRONIQUE"

	para "#mon du PROF."
	line "CHEN n'est pas en"
	cont "direct."
	done
else
	text "Don't tell anyone,"
	line "but Prof.Oak's"

	para "#mon Talk isn't"
	line "a live broadcast."
	done
endc

OaksLabPoster1Text:
if DEF(_LOCALE_FR)
	text "Appuyer sur START"
	line "pour le MENU."
	done
else
	text "Press Start to"
	line "open the Menu."
	done
endc

OaksLabPoster2Text:
if DEF(_LOCALE_FR)
	text "L'option SAUVER"
	line "est sur le MENU."

	para "Utilise-la assez"
	line "souvent."
	done
else
	text "The Save option is"
	line "on the Menu."

	para "Use it in a timely"
	line "manner."
	done
endc

OaksLabPCText:
if DEF(_LOCALE_FR)
	text "Il y a un e-mail"
	line "sur le PC."

	para "…"

	para "PROF.CHEN, comment"
	line "ça va bien?"
	cont "Ca bosse dur?"

	para "Moi je bosse comme"
	line "un barbare."

	para "On raconte que"
	line "<PLAYER> est une"
	cont "vraie terreur..."

	para "Et dire que c'est"
	line "grâce à nous."

	para "ORME du BOURG GEON"
	line "8-)"
	done
else
	text "There's an e-mail"
	line "message on the PC."

	para "…"

	para "Prof.Oak, how is"
	line "your research"
	cont "coming along?"

	para "I'm still plugging"
	line "away."

	para "I heard rumors"
	line "that <PLAYER> is"

	para "getting quite a"
	line "reputation."

	para "I'm delighted to"
	line "hear that."

	para "Elm in New Bark"
	line "Town 8-)"
	done
endc

ProfOakEeveeDollTradeText:
if DEF(_LOCALE_FR)
	text "CHEN: Oh, tu"
	line "admires ma"
	cont "POUPEE EVOLI?"

	para "Je te l'échange"
	line "contre une PIERRE"
	cont "STASE."
	done
else
	text "Oak: Oh, are you"
	line "admiring my"
	cont "Eevee Doll?"

	para "I'll trade it"
	line "to you for an"
	cont "Everstone."
	done
endc

NoEverstoneText:
if DEF(_LOCALE_FR)
	text "Mais tu n'en as"
	line "pas..."
	done
else
	text "But you don't have"
	line "one of those…"
	done
endc

WantToTradeText:
if DEF(_LOCALE_FR)
	text "Tu veux échanger?"
	done
else
	text "Do you want to"
	line "trade?"
	done
endc

NoTradeText:
if DEF(_LOCALE_FR)
	text "Elle est toujours"
	line "là si tu changes"
	cont "d'avis."
	done
else
	text "It will still be"
	line "here if you change"
	cont "your mind."
	done
endc

EeveeDollText:
if DEF(_LOCALE_FR)
	text "<PLAYER> reçoit"
	line "POUPEE EVOLI."
	done
else
	text "<PLAYER> received"
	line "Eevee Doll."
	done
endc

EeveeDollSentText:
if DEF(_LOCALE_FR)
	text "POUPEE EVOLI"
	line "envoyée chez toi."
	done
else
	text "Eevee Doll"
	line "was sent home."
	done
endc

ProfOakAfterTradeText:
if DEF(_LOCALE_FR)
	text "PROF.CHEN: Pose-la"
	line "quelque part et"
	cont "profites-en!"
	done
else
	text "Prof.Oak: Set it"
	line "somewhere you can"
	cont "appreciate it!"
	done
endc

OaksLabPokedexText:
if DEF(_LOCALE_FR)
	text "C'est le #dex"
	line "du PROF.CHEN."
	done
else
	text "It's Prof.Oak's"
	line "#dex."
	done
endc
