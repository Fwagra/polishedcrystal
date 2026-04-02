Route27RestHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_27, 1
	warp_event  3,  7, ROUTE_27, 1

	def_coord_events

	def_bg_events
	bg_event  7,  1, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events
	object_event  2,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, Route27RestHouseGranny, -1

Route27RestHouseGranny:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_SKILL_SWAP_INTRO
	iftruefwd .HeardIntro
	writetext .IntroText
	setevent EVENT_LISTENED_TO_SKILL_SWAP_INTRO
	sjumpfwd .Continue
.HeardIntro
	writetext .HeardIntroText
.Continue
	promptbutton
	special GetFirstPokemonHappiness
	ifgreater FRIEND_BALL_HAPPINESS - 1, .Loyal
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Si ton #mon"
	line "ne te fait pas"
	cont "plus"

	para "confiance, ça"
	line "risque d'être dur."

	para "La confiance"
	line "unit #mon"
	cont "et dresseurs."
	done
else
	text "If it doesn't come"
	line "to trust you some"

	para "more, it could be"
	line "tough going."

	para "Trust is the tie"
	line "that binds #mon"
	cont "and trainers."
	done
endc

.Loyal:
	writetext .QuestionText
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	yesorno
	iffalsefwd .TutorRefused
	setval SKILL_SWAP
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpopenedtext .RefusedText

.NoSilverLeaf
	waitbutton
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Tu n'as trouvé"
	line "aucune FEUIL.ARG…"
	done
else
	text "You've not found"
	line "any Silver Leaves…"
	done
endc

.TeachMove
	takeitem SILVER_LEAF
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "DON D'ORGANE est"
	line "une attaque qui"

	para "échange ton talent"
	line "avec celui"
	cont "de l'ennemi."

	para "C'est pour les"
	line "dresseurs"
	cont "confirmés."

	para "Utilise-la si"
	line "tu l'oses."
	cont "Bonne chance!"
	done
else
	text "Skill Swap is a"
	line "move that swaps"

	para "your ability with"
	line "that of your"
	cont "opponent."

	para "It's for advanced"
	line "trainers only."

	para "Use it if you"
	line "dare. Good luck!"
	done
endc

.IntroText:
if DEF(_LOCALE_FR)
	text "Tu vas où avec"
	line "tes #mon?"

	para "A la LIGUE"
	line "#mon?"

	para "Tes #mon sont"
	line "assez fidèles"
	cont "pour gagner?"

	para "Voyons voir..."
	done
else
	text "Where are you off"
	line "to with #mon?"

	para "The #mon"
	line "League?"

	para "Are your #mon"
	line "loyal enough for"
	cont "you to win?"

	para "Let me see…"
	done
endc

.HeardIntroText:
if DEF(_LOCALE_FR)
	text "Montre-moi ton"
	line "#mon..."
	done
else
	text "Let me see your"
	line "#mon…"
	done
endc

.QuestionText:
if DEF(_LOCALE_FR)
	text "Ah! Ton #mon"
	line "te fait vraiment"
	cont "confiance."

	para "Ca fait plaisir de"
	line "voir un bon"
	cont "dresseur."

	para "Je peux lui"
	line "apprendre ma"
	cont "technique secrète,"

	para "DON D'ORGANE,"
	line "si tu veux."
	done
else
	text "Ah! Your #mon"
	line "trusts you very"
	cont "much."

	para "It's nice to see a"
	line "good trainer."

	para "I can teach it my"
	line "secret technique,"

	para "Skill Swap, if"
	line "you'd like."
	done
endc

.RefusedText:
if DEF(_LOCALE_FR)
	text "Bonne chance pour"
	line "la suite."
	done
else
	text "Good luck on your"
	line "journey."
	done
endc
