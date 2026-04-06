LavRadioTower1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, LavRadioTower1FUpstairsScript

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 7
	warp_event  3,  7, LAVENDER_TOWN, 7
	warp_event 15,  0, LAV_RADIO_TOWER_2F, 255

	def_coord_events

	def_bg_events
	bg_event 11,  0, BGEVENT_JUMPTEXT, LavRadioTower1FDirectoryText
	bg_event  5,  0, BGEVENT_JUMPTEXT, LavRadioTower1FPokeFluteSignText

	def_object_events
	object_event  6,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, LavRadioTower1FReceptionistText, -1
	object_event 15,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, LavRadioTower1FOfficerText, -1
	object_event  1,  3, SPRITE_POKEMANIAC, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, LavRadioTower1FSuperNerd1Text, -1
	object_event  9,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, LavRadioTower1FGentlemanScript, -1
	object_event 14,  6, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LavRadioTower1FSuperNerd2Script, -1

LavRadioTower1FUpstairsScript:
	checkevent EVENT_EXORCISED_LAV_RADIO_TOWER
	iftruefwd .Exorcised
	warpmod 1, HAUNTED_RADIO_TOWER_2F
	endcallback

.Exorcised:
	warpmod 1, LAV_RADIO_TOWER_2F
	endcallback

LavRadioTower1FGentlemanScript:
	faceplayer
	opentext
	checkflag ENGINE_EXPN_CARD
	iftrue_jumpopenedtext .GotExpnCardText
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iffalse_jumpopenedtext .OffTheAirText
	writetext .ReturnedMachinePartText
	promptbutton
	givespecialitem EXPN_CARD
	setflag ENGINE_EXPN_CARD
	jumpthisopenedtext

.GotExpnCardText:
if DEF(_LOCALE_FR)
	text "Avec ceci, tu peux"
	line "écouter la radio"

	para "depuis KANTO."
	line "Gahahahaha!"
	done
else
	text "With that thing,"
	line "you can tune into"

	para "the radio programs"
	line "here in Kanto."

	para "Gahahahaha!"
	done
endc

.OffTheAirText:
if DEF(_LOCALE_FR)
	text "Oh, non, non, non!"

	para "Nous ne sommes"
	line "plus à l'antenne"

	para "depuis la fermetu-"
	line "re de la CENTRALE."

	para "Je cours à la ca-"
	line "tastrophe si je ne"

	para "peux plus émettre!"
	line "J'suis ruiné!"
	done
else
	text "Oh, no, no, no!"

	para "We've been off the"
	line "air ever since the"

	para "Power Plant shut"
	line "down."

	para "All my efforts to"
	line "start this station"

	para "would be wasted if"
	line "I can't broadcast."

	para "I'll be ruined!"
	done
endc

.ReturnedMachinePartText:
if DEF(_LOCALE_FR)
	text "Ah! C'est toi"
	line "<PLAYER> qui a"

	para "réparé la"
	line "CENTRALE?"

	para "Grâce à toi, j'ai"
	line "pu garder mon job."

	para "Tu es trop cool!"
	line "Prends ça!"
	done
else
	text "Ah! So you're the"
	line "<PLAYER> who solved"

	para "the Power Plant's"
	line "problem?"

	para "Thanks to you, I"
	line "never lost my job."

	para "I tell you, you're"
	line "a real lifesaver!"

	para "Please take this"
	line "as my thanks."
	done
endc

LavRadioTower1FSuperNerd2Script:
	checkflag ENGINE_EXPN_CARD
	iftrue_jumptextfaceplayer LavRadioTower1FSuperNerd2Text_GotExpnCard
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Hé toi!"

	para "Je suis le"
	line "DIRECTEUR"

	para "MUSICAL!"
	line "Hein? Ton #gear"

	para "ne peut pas capter"
	line "les émissions de"

	para "radio…"
	line "Quel dommage!"

	para "Avec une Carte Ext."
	line "tu peux améliorer"

	para "ton matériel!"
	line "Va en trouver un!"
	done
else
	text "Hey there!"

	para "I am the super"
	line "Music Director!"

	para "Huh? Your #gear"
	line "can't tune into my"

	para "music programs."
	line "How unfortunate!"

	para "If you get a Expn."
	line "Card upgrade, you"

	para "can tune in. You'd"
	line "better get one!"
	done
endc

LavRadioTower1FReceptionistText:
if DEF(_LOCALE_FR)
	text "Bienvenue!"
	line "Tu peux visiter"

	para "cet étage tant que"
	line "tu le veux."
	done
else
	text "Welcome!"
	line "Feel free to look"

	para "around anywhere on"
	line "this floor."
	done
endc

LavRadioTower1FOfficerText:
if DEF(_LOCALE_FR)
	text "Seul le rez-de-"
	line "chaussée est à"

	para "visiter."
	line "Depuis l'attaque"

	para "de la TOUR RADIO"
	line "de JOHTO par un"

	para "gang criminel, on"
	line "a renforcé les me-"

	para "sures de sécurité."
	done
else
	text "Sorry, but you can"
	line "only tour the"
	cont "ground floor."

	para "Ever since Johto's"
	line "Radio Tower was"

	para "taken over by a"
	line "criminal gang, we"

	para "have had to step"
	line "up our security."
	done
endc

LavRadioTower1FSuperNerd1Text:
if DEF(_LOCALE_FR)
	text "Les gens travail-"
	line "lent dur ici, à"

	para "la TOUR RADIO."
	line "Ils se donnent à"

	para "fond pour faire de"
	line "bonnes émis-"

	para "sions."
	done
else
	text "Many people are"
	line "hard at work here"

	para "in the Radio"
	line "Tower."

	para "They must be doing"
	line "their best to put"
	cont "on good shows."
	done
endc

LavRadioTower1FSuperNerd2Text_GotExpnCard:
if DEF(_LOCALE_FR)
	text "Salut!"

	para "Je suis le super"
	line "directeur musical!"

	para "Je choisis les"
	line "mélodies qui"

	para "partent sur les"
	line "ondes."

	para "Ne fais pas le"
	line "coin-coin: capte"
	cont "ta musique!"
	done
else
	text "Hey there!"

	para "I am the super"
	line "Music Director!"

	para "I'm responsible"
	line "for the gorgeous"

	para "melodies that go"
	line "out over the air."

	para "Don't be square."
	line "Grab your music"
	cont "off the air!"
	done
endc

LavRadioTower1FDirectoryText:
if DEF(_LOCALE_FR)
	text "RDC RECEPTION"
	line "1ER VENTES"

	para "2EME PERSONNEL"
	line "3EME PRODUCTION"

	para "4EME BUREAU"
	line "     DIRECTION"
	done
else
	text "1F Reception"
	line "2F Sales"

	para "3F Personnel"
	line "4F Production"

	para "5F Director's"
	line "   Office"
	done
endc

LavRadioTower1FPokeFluteSignText:
if DEF(_LOCALE_FR)
	text "Remonte le moral"
	line "des #mon avec"

	para "les doux sons de"
	line "la # Flute,"

	para "chaîne 20."
	done
else
	text "Perk Up #mon"
	line "with Mellow Sounds"

	para "of the # Flute"
	line "on Channel 20"
	done
endc

; TODO: use this text
LavRadioTower1FReferenceLibraryText:
if DEF(_LOCALE_FR)
	text "Whoa! Plein de"
	line "cassettes et de"

	para "CD #mon!"
	line "Ca doit être une"

	para "librairie offi-"
	line "cielle."
	done
else
	text "Wow! A full rack"
	line "of #mon CDs and"
	cont "videos."

	para "This must be the"
	line "reference library."
	done
endc
