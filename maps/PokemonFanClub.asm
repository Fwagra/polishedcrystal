PokemonFanClub_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 3
	warp_event  3,  7, VERMILION_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  7,  0, BGEVENT_JUMPTEXT, PokemonFanClubListenSignText
	bg_event  9,  0, BGEVENT_JUMPTEXT, PokemonFanClubBraggingSignText
	bg_event  0,  1, BGEVENT_READ, PokemonJournalGreenScript

	def_object_events
	object_event  3,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, CLEFAIRY, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, NO_FORM, ClefairyDollScript, EVENT_VERMILION_FAN_CLUB_DOLL
	object_event  5,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubChairmanScript, -1
	object_event  6,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, PokemonFanClubReceptionistText, -1
	object_event  3,  4, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubClefairyGuyScript, -1
	object_event  7,  2, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, PokemonFanClubTeacherText, -1
	pokemon_event  7,  3, ODDISH, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_GREEN, FanClubOddishText, -1

	object_const_def
	const POKEMONFANCLUB_CLEFAIRY_DOLL

PokemonFanClubChairmanScript:
	checkevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	iftrue_jumptextfaceplayer PokemonFanClubChairmanMoreTalesToTellText
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT_BUT_BAG_WAS_FULL
	iftruefwd .HeardSpeech
	writetext PokemonFanClubChairmanDidYouVisitToHearAboutMyMonText
	yesorno
	iffalse_jumpopenedtext PokemonFanClubChairmanHowDisappointingText
	writetext PokemonFanClubChairmanRapidashText
	promptbutton
.HeardSpeech:
	writetext PokemonFanClubChairmanIWantYouToHaveThisText
	promptbutton
	verbosegiveitem RARE_CANDY
	iffalse_endtext
	setevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	jumpopenedtext PokemonFanClubChairmanItsARareCandyText

PokemonFanClubClefairyGuyScript:
	checkevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	iftrue_jumptextfaceplayer PokemonFanClubClefairyGuyGoingToGetARealClefairyText
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iffalse_jumptextfaceplayer PokemonFanClubClefairyGuyClefairyIsSoAdorableText
	faceplayer
	opentext
	writetext PokemonFanClubClefairyGuyMakingDoWithADollIFoundText
	checkevent EVENT_MET_COPYCAT_FOUND_OUT_ABOUT_LOST_ITEM
	iftruefwd .FoundClefairyDoll
	waitendtext
.FoundClefairyDoll:
	promptbutton
	writetext PokemonFanClubClefairyGuyTakeThisDollBackToGirlText
	promptbutton
	waitsfx
	disappear POKEMONFANCLUB_CLEFAIRY_DOLL
	verbosegivekeyitem LOST_ITEM
	setevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	endtext

PokemonJournalGreenScript:
	setflag ENGINE_READ_GREEN_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "<PK><MN> Trainer Leaf!"

	para "In addition to"
	line "being a powerful"
	cont "trainer, Leaf is"

	para "said to be fascin-"
	line "ated by legendary"
	cont "#mon."
	done

ClefairyDollScript:
	jumpthistext

if DEF(_LOCALE_FR)
	text "C'est un MELOFEE!"
	line "Hein? Ah,"
	line "d'accord. C'est"
	line "une # POUPEE d'un"
	line "MELOFEE."
	done
else
	text "It's a Clefairy!"
	line "Huh?"

	para "Oh, right. It's a"
	line "Clefairy #"
	cont "Doll."
	done
endc

PokemonFanClubChairmanDidYouVisitToHearAboutMyMonText:
if DEF(_LOCALE_FR)
	text "Je suis le PRESI-"
	line "DENT du FAN CLUB"
	line "#MON. J'ai élevé"
	line "plus de 150 #MON."
	line "Je suis très dif-"
	line "ficile quand il"
	line "s'agit de #MON. Tu"
	line "es venu pour en"
	line "apprendre plus sur"
	line "mes #MON?"
	done
else
	text "I'm the Chairman"
	line "of the #mon Fan"
	cont "Club."

	para "I've raised over"
	line "150 #mon."

	para "I'm very fussy"
	line "when it comes to"
	cont "#mon."

	para "Did you visit just"
	line "to hear about my"
	cont "#mon?"
	done
endc

PokemonFanClubChairmanRapidashText:
if DEF(_LOCALE_FR)
	text "Bien! Alors,"
	line "écoute! Mon"
	line "préféré… GALOPA…"
	line "Il est mignon…"
	line "beau…rapide…"
	line "élégant…en feu. Il"
	line "fait pataclop,"
	line "pataclop…quand il"
	line "court…c'est super"
	line "non? Je l'aime…!"
	line "Je lui fais…des"
	line "câlins…des…"
	line "poutoux…des…"
	line "gnangnans…des"
	line "zigouzigoux…"
	line "…Oups! Regarde"
	line "l'heure! Je crois"
	line "qu'il est temps"
	line "d'y aller!"
	done
else
	text "Good!"
	line "Then listen up!"

	para "So… my favorite"
	line "Rapidash…"

	para "It… cute… lovely…"
	line "smart… unbearably…"
	cont "plus… amazing… oh…"
	cont "you think so?…"
	cont "Too much… wild…"
	cont "beautiful… kindly…"
	cont "love it!"

	para "Hug it… when…"
	line "sleeping… warm and"
	cont "cuddly… Oh, and…"
	cont "spectacular…"
	cont "ravishing… simply"
	cont "divine…"
	cont "Oops! Look at the"
	cont "time! I've kept"
	cont "you too long!"
	done
endc

PokemonFanClubChairmanIWantYouToHaveThisText:
if DEF(_LOCALE_FR)
	text "Merci de m'avoir"
	line "écouté… Voilà pour"
	line "toi!"
	done
else
	text "Thanks for hearing"
	line "me out. I want you"
	cont "to have this!"
	done
endc

PokemonFanClubChairmanItsARareCandyText:
if DEF(_LOCALE_FR)
	text "C'est un SUPER"
	line "BONBON qui rend"
	line "les #MON plus"
	line "forts. Moi je"
	line "préfère les"
	line "renforcer en fai-"
	line "sant des combats."
	line "Il est pour toi."
	done
else
	text "It's a Rare Candy"
	line "that makes #mon"
	cont "stronger."

	para "I prefer making my"
	line "#mon stronger"

	para "by battling, so"
	line "you can have it."
	done
endc

PokemonFanClubChairmanMoreTalesToTellText:
if DEF(_LOCALE_FR)
	text "Salut, <PLAYER>!"
	line "Veux-tu que je te"
	line "parle encore de"
	line "mes #MON? Non? Oh…"
	line "J'avais tant de"
	line "belles histoires!"
	done
else
	text "Hello, <PLAYER>!"

	para "Did you come see"
	line "me about my #-"
	cont "mon again?"

	para "No? Oh… I had more"
	line "tales to tell…"
	done
endc

PokemonFanClubChairmanHowDisappointingText:
if DEF(_LOCALE_FR)
	text "Dommage… Reviens"
	line "me voir vite."
	done
else
	text "How disappointing…"

	para "Come back if you"
	line "want to listen."
	done
endc

PokemonFanClubReceptionistText:
if DEF(_LOCALE_FR)
	text "Notre PRESIDENT"
	line "parle un peu trop"
	line "de ses #MON…"
	done
else
	text "Our Chairman is"
	line "very vocal when it"
	cont "comes to #mon…"
	done
endc

PokemonFanClubClefairyGuyClefairyIsSoAdorableText:
if DEF(_LOCALE_FR)
	text "J'aime quand"
	line "MELOFEE gigote son"
	line "doigt quand il"
	line "utilise son"
	line "METRONOME. C'est"
	line "adorable!"
	done
else
	text "I love the way"
	line "Clefairy waggles"

	para "its finger when"
	line "it's trying to use"

	para "Metronome."
	line "It's so adorable!"
	done
endc

PokemonFanClubClefairyGuyMakingDoWithADollIFoundText:
if DEF(_LOCALE_FR)
	text "J'aime MELOFEE,"
	line "mais je ne pourrai"
	line "jamais en attraper"
	line "un… Alors je"
	line "m'amuse avec cette"
	line "# POUPEE."
	done
else
	text "I love Clefairy,"
	line "but I could never"

	para "catch one. So I'm"
	line "making do with a"

	para "# Doll that I"
	line "found."
	done
endc

PokemonFanClubClefairyGuyTakeThisDollBackToGirlText:
if DEF(_LOCALE_FR)
	text "Oh, je vois. La"
	line "fille qui a perdu"
	line "sa # POUPEE est"
	line "triste… OK."
	line "Peux-tu porter"
	line "cette # POUPEE à"
	line "la pauvre petite"
	line "fille triste? Je"
	line "trouverai un vrai"
	line "MELOFEE…"
	done
else
	text "Oh, I see now. The"
	line "girl who lost this"

	para "# Doll is sad…"

	para "OK. Could you take"
	line "this # Doll"

	para "back to that poor"
	line "little girl?"

	para "I'll befriend a"
	line "real Clefairy on"

	para "my own one day."
	line "No worries!"
	done
endc

PokemonFanClubClefairyGuyGoingToGetARealClefairyText:
if DEF(_LOCALE_FR)
	text "J'attraperai un"
	line "MELOFEE et il sera"
	line "mon ami pour la"
	line "vie."
	done
else
	text "You watch. I'm"
	line "going to get a"

	para "real Clefairy as"
	line "my friend."
	done
endc

PokemonFanClubTeacherText:
	text "Look at my darling"
	line "Oddish!"

	para "The leaves on its"
	line "head are so cute!"
	done

FanClubOddishText:
	text "Oddish: Diish!"
	done

PokemonFanClubListenSignText:
if DEF(_LOCALE_FR)
	text "Ecoutons tous les"
	line "autres dresseurs."
	done
else
	text "Let's all listen"
	line "politely to other"
	cont "trainers."
	done
endc

PokemonFanClubBraggingSignText:
if DEF(_LOCALE_FR)
	text "Si quelqu'un se"
	line "vante, vante-toi à"
	line "ton tour!"
	done
else
	text "If someone brags,"
	line "brag right back!"
	done
endc
