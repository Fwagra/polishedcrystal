LakeOfRageMagikarpHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 2
	warp_event  3,  7, LAKE_OF_RAGE, 2

	def_coord_events

	def_bg_events
	bg_event  7,  1, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MagikarpLengthRaterScript, -1

MagikarpLengthRaterScript:
	faceplayer
	opentext
	checkevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	iftruefwd .GetReward
	checkevent EVENT_LAKE_OF_RAGE_ASKED_FOR_MAGIKARP
	iftruefwd .AskedForMagikarp
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftruefwd .ClearedRocketHideout
	checkevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_MAGIKARP
	iftrue_jumpopenedtext MagikarpLengthRaterText_MenInBlack
	writetext MagikarpLengthRaterText_LakeOfRageHistory
	waitbutton
	closetext
	setevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_MAGIKARP
	end

.ClearedRocketHideout:
	writetext MagikarpLengthRaterText_WorldsLargestMagikarp
	waitbutton
	closetext
	setevent EVENT_LAKE_OF_RAGE_ASKED_FOR_MAGIKARP
	end

.AskedForMagikarp:
	setmonval MAGIKARP
	special Special_FindThatSpecies
	iffalse .ClearedRocketHideout
	writetext MagikarpLengthRaterText_YouHaveAMagikarp
	waitbutton
	special CheckMagikarpLength
	iffalse_jumpopenedtext MagikarpLengthRaterText_NotMagikarp
	ifequalfwd $1, .Refused
	ifequalfwd $2, .TooShort
.GetReward:
	writetext MagikarpLengthRaterText_Memento
	promptbutton
	verbosegiveitem ELIXIR
	iffalsefwd .NoRoom
	writetext MagikarpLengthRaterText_Bonus
	waitbutton
	closetext
	clearevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	end

.NoRoom:
	closetext
	setevent EVENT_LAKE_OF_RAGE_ELIXIR_ON_STANDBY
	end

.TooShort:
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Whaou! C'est pas"
	line "mal du tout!"

	para "...J'aimerais pou-"
	line "voir te dire ça"

	para "mais j'en ai déjà"
	line "vu des plus gros."
	done
else
	text "Wow! This one is"
	line "outstanding!"

	para "…I wish I could"
	line "say that, but I've"

	para "seen a bigger one"
	line "before."
	done
endc

.Refused:
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Alors... Tu n'as"
	line "rien pris qui"

	para "vaille la peine"
	line "d'être montré?"
	cont "Peut-être la"
	cont "prochaine fois!"
	done
else
	text "Oh… So you didn't"
	line "get one good"

	para "enough to show me?"
	line "Maybe next time."
	done
endc

MagikarpLengthRaterText_LakeOfRageHistory:
if DEF(_LOCALE_FR)
	text "Le LAC COLERE est"
	line "en fait un cratère"

	para "créé par le"
	line "déchaînement des"
	cont "LEVIATOR."

	para "Le cratère s'est"
	line "peu à peu rempli"

	para "d'eau de pluie et"
	line "un LAC s'est"
	cont "formé."

	para "Cette histoire se"
	line "transmet de géné-"

	para "ration en géné-"
	line "ration. Elle vient"
	cont "d'un de mes"
	cont "grands-pères."

	para "On pouvait attra-"
	line "per de vrais"

	para "MAGICARPE en"
	line "pleine forme ici!"

	para "Je ne comprends"
	line "pas ce qu'il se"
	cont "passe."
	done
else
	text "Lake of Rage is"
	line "actually a crater"

	para "made by rampaging"
	line "Gyarados."

	para "The crater filled"
	line "up with rainwater"

	para "and the lake was"
	line "formed."

	para "That's the story"
	line "passed on from my"

	para "Grandpa's great-"
	line "great-grandpa."

	para "It used to be that"
	line "you could catch"

	para "lively Magikarp"
	line "there, but…"

	para "I don't understand"
	line "what's happening."
	done
endc

MagikarpLengthRaterText_MenInBlack:
if DEF(_LOCALE_FR)
	text "Ce LAC n'est plus"
	line "normal depuis"

	para "l'arrivée des"
	line "hommes en noir."
	done
else
	text "The lake hasn't"
	line "been normal since"

	para "those men wearing"
	line "black arrived."
	done
endc

MagikarpLengthRaterText_WorldsLargestMagikarp:
if DEF(_LOCALE_FR)
	text "Le LAC COLERE est"
	line "redevenu normal."

	para "Les MAGICARPE sont"
	line "de retour."

	para "Mon rêve se"
	line "réalise enfin:"
	cont "voir un monde"
	cont "plein de"
	cont "MAGICARPE."

	para "As-tu une CANNE?"
	line "Aide-moi si tu en"
	cont "as une."
	done
else
	text "Lake of Rage is"
	line "back to normal."

	para "The Magikarp have"
	line "returned."

	para "I may yet realize"
	line "my dream of see-"
	cont "ing the world's"
	cont "largest Magikarp."

	para "Do you have a Rod?"
	line "Please help me if"
	cont "you do."
	done
endc

MagikarpLengthRaterText_YouHaveAMagikarp:
if DEF(_LOCALE_FR)
	text "Ah, tu as un"
	line "MAGICARPE! Laisse-"

	para "moi voir sa"
	line "taille."
	done
else
	text "Ah, you have a"
	line "Magikarp! Let's"

	para "see how big that"
	line "baby is."
	done
endc

MagikarpLengthRaterText_Memento:
if DEF(_LOCALE_FR)
	text "Whaou! Celui-ci"
	line "est démesuré!"

	para "Je te tire mon"
	line "chapeau!"

	para "Accepte ceci en"
	line "récompense!"
	done
else
	text "Wow! This one is"
	line "outstanding!"

	para "I tip my hat to"
	line "you!"

	para "Take this as a"
	line "memento!"
	done
endc

MagikarpLengthRaterText_Bonus:
if DEF(_LOCALE_FR)
	text "Ce qui est impor-"
	line "tant, c'est d'épa-"

	para "ter les autres!"
	line "Suis mes conseils!"
	done
else
	text "The record is the"
	line "important thing."

	para "Think of that as"
	line "a bonus!"
	done
endc

MagikarpLengthRaterText_NotMagikarp:
if DEF(_LOCALE_FR)
	text "Quoi? Ce n'est pas"
	line "un MAGICARPE!"
	done
else
	text "What? That's not a"
	line "Magikarp!"
	done
endc
