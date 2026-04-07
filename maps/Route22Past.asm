Route22Past_MapScriptHeader:
	def_scene_scripts
	scene_script Route22PastTrigger0

	def_callbacks

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  8, SPRITE_CELEBI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  7, SPRITE_LYRA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5,  2, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  2,  2, SPRITE_GIOVANNI, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1

	object_const_def
	const ROUTE22PAST_CELEBI
	const ROUTE22PAST_LYRA
	const ROUTE22PAST_RIVAL
	const ROUTE22PAST_GIOVANNI

Route22PastTrigger0:
	sdefer Route22PastCelebiEventScript
	end

Route22PastCelebiEventScript:
	pause 30
	applymovement PLAYER, Route22Past_PlayerLooksAroundMovementData
	showemote EMOTE_SHOCK, ROUTE22PAST_LYRA, 15
	showtext Route22PastLyraWhereAreWeText
	applymovement ROUTE22PAST_LYRA, Route22Past_LyraLooksAroundMovementData
	showtext Route22PastLyraIlexForestDisappearedText
	applymovement ROUTE22PAST_LYRA, Route22Past_LyraStepDownMovementData
	turnobject PLAYER, LEFT
	showtext Route22PastLyraPokeGearText
	applymovement ROUTE22PAST_LYRA, Route22Past_LyraStepDownTurnHeadRigthMovementData
	turnobject PLAYER, DOWN
	showtext Route22PastLyraExplainsTimeTravelText
	showemote EMOTE_SHOCK, ROUTE22PAST_LYRA, 15
	applymovement ROUTE22PAST_LYRA, Route22Past_LyraMoveUpToHearMovementData
	showtext Route22PastLyraHearsSomeoneText
	applymovement PLAYER, Route22Past_PlayerStepUpToLyraMovementData
	follow ROUTE22PAST_LYRA, PLAYER
	applymovement ROUTE22PAST_LYRA, Route22Past_LyraApproachesRivalMovementData
	turnobject ROUTE22PAST_LYRA, UP
	turnobject PLAYER, UP
	stopfollow
	applyonemovement ROUTE22PAST_CELEBI, step_up
	special Special_FadeOutMusic
	applyonemovement ROUTE22PAST_RIVAL, slow_step_left
	showtext Route22PastRivalQuestionsGiovanniText
	turnobject ROUTE22PAST_GIOVANNI, RIGHT
	showtext Route22PastGiovanniRivalArgumentText
	applyonemovement ROUTE22PAST_RIVAL, slow_step_left
	showtext Route22PastRivalProtestsText
	turnobject ROUTE22PAST_GIOVANNI, LEFT
	showtext Route22PastGiovanniGoodbyeText
	applymovement ROUTE22PAST_GIOVANNI, Route22Past_GiovanniLeavesMovementData
	pause 15
	applyonemovement ROUTE22PAST_RIVAL, slow_step_left
	showtext Route22PastRivalRantText
	special Special_FadeOutMusic
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement ROUTE22PAST_RIVAL, ROUTE22PAST_RIVALRunsIntoPlayerMovementData
	showemote EMOTE_SHOCK, ROUTE22PAST_RIVAL, 15
	showtext Route22PastRivalInsultText
	playsound SFX_TACKLE
	applymovement PLAYER, ROUTE22PAST_RIVALShovesPlayerDownMovementData
	turnobject ROUTE22PAST_LYRA, DOWN
	applymovement ROUTE22PAST_RIVAL, ROUTE22PAST_RIVALLeavesMovementData
	special RestartMapMusic
	applymovement ROUTE22PAST_LYRA, Route22Past_LyraMeetsPlayerMovementData
	showtext Route22PastLyraConclusionText
	cry CELEBI
	applymovement ROUTE22PAST_CELEBI, Route22Past_CelebiHopsMovementData
	waitsfx
	playsound SFX_GAME_FREAK_LOGO_GS
	special FadeOutPalettes
	special LoadMapPalettes
	pause 30
	special FadeInPalettes_EnableDynNoApply
	waitsfx
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement ROUTE22PAST_LYRA, Route22Past_LyraLooksAroundAgainMovementData
	turnobject ROUTE22PAST_LYRA, DOWN
	showtext Route22PastLyraOhNoText
	playsound SFX_PROTECT
	applymovement ROUTE22PAST_CELEBI, Route22Past_CelebiFloatsMovementData
	waitsfx
	playsound SFX_GAME_FREAK_LOGO_GS
	special FadeOutPalettes
	pause 30
	waitsfx
	clearevent EVENT_GIOVANNIS_CAVE_CELEBI
	clearevent EVENT_GIOVANNIS_CAVE_LYRA
	clearevent EVENT_GIOVANNIS_CAVE_GIOVANNI
	setmapscene GIOVANNIS_CAVE, $1
	warp GIOVANNIS_CAVE, 15, 5
	end

Route22Past_PlayerLooksAroundMovementData:
	turn_head_left
	step_sleep_8
	step_sleep_8
	step_sleep_8
	turn_head_right
	step_sleep_8
	step_sleep_8
	step_sleep_8
	turn_head_up
	step_sleep_8
	step_sleep_8
	step_sleep_8
	step_end

Route22Past_LyraLooksAroundMovementData:
	slow_step_up
	step_sleep_8
	step_sleep_8
	step_sleep_8
Route22Past_LyraLooksAroundAgainMovementData:
	turn_head_left
	step_sleep_8
	step_sleep_8
	step_sleep_8
	turn_head_right
	step_sleep_8
	step_sleep_8
	step_sleep_8
	step_end

Route22Past_LyraStepDownMovementData:
	slow_step_down
	step_end

Route22Past_LyraStepDownTurnHeadRigthMovementData:
	slow_step_down
	turn_head_right
	step_end

Route22Past_LyraMoveUpToHearMovementData:
	slow_step_up
	slow_step_up
	step_end

Route22Past_PlayerStepUpToLyraMovementData:
	slow_step_up
	step_end

Route22Past_LyraApproachesRivalMovementData:
	slow_step_up
	slow_step_up
	slow_step_left
	step_end

Route22Past_GiovanniLeavesMovementData:
	slow_step_left
	slow_step_left
	step_end

ROUTE22PAST_RIVALRunsIntoPlayerMovementData:
	step_right
	step_right
	step_right
	step_down
	step_end

ROUTE22PAST_RIVALShovesPlayerDownMovementData:
	turn_head_up
	fix_facing
	jump_step_down
	step_sleep_6
	turn_head_left
	step_right
	remove_fixed_facing
	step_end

ROUTE22PAST_RIVALLeavesMovementData:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

Route22Past_LyraMeetsPlayerMovementData:
	step_right
	step_down
	step_down
	turn_head_right
	step_end

Route22Past_CelebiHopsMovementData:
	step_left
	turn_head_down
	step_end

Route22Past_CelebiFloatsMovementData:
	turn_head_down
	fix_facing
	slow_step_up
	slow_step_up
	slow_step_up
	remove_fixed_facing
	step_end

Route22PastLyraWhereAreWeText:
if DEF(_LOCALE_FR)
	text "Lyra: Où est-ce"
	line "qu'on est…?"
	done
else
	text "Lyra: Where are"
	line "we…?"
	done
endc

Route22PastLyraIlexForestDisappearedText:
if DEF(_LOCALE_FR)
	text "Lyra: La Forêt"
	line "d'Acajou a"
	cont "disparu!"

	para "…Non, attends."
	line "On a été trans-"
	cont "portés ailleurs…?"
	done
else
	text "Lyra: Ilex Forest"
	line "has disappeared!"

	para "…That's not it."
	line "We've been trans-"
	cont "ported somewhere"
	cont "else…?"
	done
endc

Route22PastLyraPokeGearText:
if DEF(_LOCALE_FR)
	text "Lyra: <PLAYER>, la"
	line "radio du #GEAR"

	para "dit que la date"
	line "est celle d'il y a"
	cont "trois ans!"
	done
else
	text "Lyra: <PLAYER>, my"
	line "#gear radio"

	para "said the date is"
	line "from three years"
	cont "ago!"
	done
endc

Route22PastLyraExplainsTimeTravelText:
if DEF(_LOCALE_FR)
	text "C'est… Je vois…"
	line "CELEBI?"

	para "Tout s'explique!"
	line "CELEBI a dû"
	cont "utiliser son"
	cont "pouvoir pour"

	para "nous renvoyer"
	line "dans le passé!"
	done
else
	text "Is that… am I"
	line "looking at…"
	cont "Celebi?"

	para "That explains it!"
	line "Celebi must have"
	cont "used its power to"

	para "take us back in"
	line "time!"
	done
endc

Route22PastLyraHearsSomeoneText:
if DEF(_LOCALE_FR)
	text "<PLAYER>, j'entends"
	line "quelqu'un."

	para "Allons voir qui"
	line "c'est!"
	done
else
	text "<PLAYER>, I hear"
	line "someone else."

	para "Let's find out"
	line "who it is!"
	done
endc

Route22PastRivalQuestionsGiovanniText:
if DEF(_LOCALE_FR)
	text "<RIVAL>: Tu m'as"
	line "dit… que tu étais"

	para "le numéro 1!"

	para "Tu vas abandonner?"

	para "Tu vas faire quoi"
	line "maintenant?"
	done
else
	text "<RIVAL>: You told"
	line "me… you were the"

	para "number one in the"
	line "world!"

	para "Are you gonna"
	line "quit?"

	para "What are you"
	line "going to do now?"
	done
endc

Route22PastGiovanniRivalArgumentText:
if DEF(_LOCALE_FR)
	text "…… …… …… …Oh,"
	line "c'est toi. Je suis"
	line "venu pour trouver"
	line "un #MON"
	line "légen- daire… Mais"
	line "y'a rien ici!"
	line "Venir dans ce trou"
	line "paumé pour rien"
	line "trouver, moi ça"
	line "m'énerve la tête!"
	line "Je vais t'en faire"
	line "baver!"
	done
else
	text "…… …… ……"

	para "One must acknow-"
	line "ledge one's defeat"

	para "before he can move"
	line "on…"

	para "I will go solo…"
	line "for now…"

	para "So that one day I"
	line "will form a"

	para "stronger organ-"
	line "ization!"

	para "<RIVAL>: What"
	line "aspect of you was"
	cont "number one?"

	para "Gathering so many"
	line "only to be"

	para "defeated by a"
	line "mere child!"

	para "…… …… ……"

	para "Putting together"
	line "the potential of"

	para "many is how you"
	line "produce a huge"
	cont "power…"

	para "That's what an"
	line "organization is!"

	para "I failed… to make"
	line "the best use of"

	para "my subordinates'"
	line "potential…"

	para "But you shall wit-"
	line "ness one day the"

	para "revival of me and"
	line "my Team Rocket!"
	done
endc

Route22PastRivalProtestsText:
if DEF(_LOCALE_FR)
	text "<RIVAL>: Je te"
	line "comprends pas!"

	para "Tu racontes n'im-"
	line "porte quoi!"
	done
else
	text "<RIVAL>: I don't"
	line "understand you!"

	para "You don't make"
	line "any sense!"
	done
endc

Route22PastGiovanniGoodbyeText:
if DEF(_LOCALE_FR)
	text "…… …… …… …Oh,"
	line "c'est toi. Je suis"
	line "venu pour trouver"
	line "un #MON"
	line "légen- daire… Mais"
	line "y'a rien ici!"
	line "Venir dans ce trou"
	line "paumé pour rien"
	line "trouver, moi ça"
	line "m'énerve la tête!"
	line "Je vais t'en faire"
	line "baver!"
	done
else
	text "…… …… ……"

	para "One day, you will"
	line "understand."
	done
endc

Route22PastRivalRantText:
if DEF(_LOCALE_FR)
	text "<RIVAL>: Je veux"
	line "pas te comprendre!"

	para "Je serai jamais"
	line "comme toi."

	para "Lâche quand tu es"
	line "seul, et"

	para "tyran quand tu es"
	line "devant d'autres"
	cont "lâches!"

	para "Je vais devenir"
	line "fort!"

	para "Je vais devenir"
	line "plus fort, seul!"

	para "Tout seul!"
	done
else
	text "<RIVAL>: I don't"
	line "want to understand"
	cont "you!"

	para "I will never"
	line "become someone"
	cont "like you."

	para "A coward when"
	line "you're alone and"

	para "acting like a"
	line "tyrant when you're"

	para "in front of other"
	line "cowards!"

	para "I will become"
	line "strong!"

	para "I will become a"
	line "stronger man all"
	cont "by myself!"

	para "All by myself!"
	done
endc

Route22PastRivalInsultText:
if DEF(_LOCALE_FR)
	text "…Mais kess-tu"
	line "mates?"
	done
else
	text "<RIVAL>: …What are"
	line "you staring at?"
	done
endc

Route22PastLyraConclusionText:
if DEF(_LOCALE_FR)
	text "Lyra: Pour qui il"
	line "se prend?"

	para "C'était inutile!"

	para "Mais ils parlaient"
	line "du retour de la"
	cont "Team Rocket…"

	para "La Team Rocket a"
	line "été chassée de"
	cont "Kanto"

	para "par un enfant, il"
	line "y a trois ans."

	para "Donc… c'est bien"
	line "le passé!"
	done
else
	text "Lyra: Who does he"
	line "think he is?"

	para "That was"
	line "unnecessary!"

	para "But they were"
	line "talking about the"

	para "revival of Team"
	line "Rocket…"

	para "Team Rocket was"
	line "removed from Kanto"

	para "by a child three"
	line "years ago."

	para "So this really"
	line "is the past!"
	done
endc

Route22PastLyraOhNoText:
if DEF(_LOCALE_FR)
	text "Lyra: Oh non!"
	line "Ca recommence…!"

	para "C'est le voyage"
	line "temporel de"
	cont "CELEBI!"
	done
else
	text "Lyra: Oh no!"
	line "It's happening"
	cont "again…!"

	para "It's Celebi's"
	line "Time Travel!"
	done
endc
