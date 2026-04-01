BluesHouse1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, PALLET_TOWN, 2
	warp_event  3,  7, PALLET_TOWN, 2
	warp_event  7,  0, BLUES_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_UP, RedsHouse1FTVScript

	def_object_events
	object_event  2,  3, SPRITE_DAISY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, DaisyScript, -1

DaisyScript:
	readvar VAR_HOUR
	ifequalfwd 15, .Massage
	checkflag ENGINE_TEA_IN_BLUES_HOUSE
	iftrue .After
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Nina: Mon petit"
	line "frère est le"

	para "Champion de"
	line "l'Arène de"
	cont "Jadielle."

	para "Mais il est"
	line "souvent absent,"
	cont "et ca pose"

	para "beaucoup de"
	line "problèmes aux"
	cont "Dresseurs."
	done
else
	text "Daisy: Hi! My kid"
	line "brother is the Gym"

	para "Leader in Viridian"
	line "City."

	para "But he goes out"
	line "of town so often,"

	para "it causes problems"
	line "for the trainers."
	done
endc

.Massage:
	faceplayer
	opentext
	writetext .IntroText
	yesorno
	iffalse .NoMassage
	writetext .QuestionText
	waitbutton
	special Special_DaisyMassage
	ifequal 0, .NoMassage
	ifequal 1, .EggMassage
	setflag ENGINE_TEA_IN_BLUES_HOUSE
	writetext .OkayText
	waitbutton
	closetext
	special FadeOutPalettes
	special LoadMapPalettes
	special SaveMusic
	playmusic MUSIC_HEAL
	pause 60
	special FadeInPalettes_EnableDynNoApply
	special RestoreMusic
	opentext
	writetext .LooksContentText
	special PlayCurMonCry
	promptbutton
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Nina: Et voilà!"
	line "Regarde"
	cont "comme il"
	cont "est beau!"

	para "Huhuhu..."
	line "C'est un joli"
	cont "petit #mon."
	done
else
	text "Daisy: There you"
	line "go! All done."

	para "See? Doesn't it"
	line "look nice?"

	para "It's such a cute"
	line "#mon."
	done
endc

.IntroText:
if DEF(_LOCALE_FR)
	text "Nina: Bienvenue!"
	line "Tu tombes"
	cont "bien, je"
	cont "fais du thé."

	para "En veux-tu?"

	para "Oh, vous êtes"
	line "tout crottés."

	para "Je peux te"
	line "bichonner"
	cont "un #mon."

	para "S'il est propre,"
	line "il sera plus"
	cont "affectueux"

	para "avec toi..."
	line "Qu'en penses-tu?"
	done
else
	text "Daisy: Hi! Good"
	line "timing. I'm about"
	cont "to have some tea."

	para "Would you like to"
	line "join me?"

	para "Oh, your #mon"
	line "are a bit dirty."

	para "Would you like me"
	line "to groom one?"
	done
endc

.After:
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Nina: Je me fais"
	line "toujours du thé"

	para "à cette heure."
	line "Reviens"
	cont "quand tu veux!"
	done
else
	text "Daisy: I always"
	line "have tea around"

	para "this time. Come"
	line "join me."
	done
endc

.NoMassage:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Nina: Tu ne veux"
	line "pas que je"
	cont "m'en occupe?"

	para "Très bien."

	para "Une tasse"
	line "de thé,"
	cont "peut-être?"
	done
else
	text "Daisy: You don't"
	line "want to have one"

	para "groomed? OK, we'll"
	line "just have tea."
	done
endc

.QuestionText:
if DEF(_LOCALE_FR)
	text "Nina: Lequel"
	line "veux-tu"
	cont "me confier?"
	done
else
	text "Daisy: Which one"
	line "should I groom?"
	done
endc

.OkayText:
if DEF(_LOCALE_FR)
	text "Nina: OK,"
	line "je m'en"
	cont "occupe!"
	done
else
	text "Daisy: OK, I'll"
	line "get it looking"
	cont "nice in no time."
	done
endc

.LooksContentText:
	text_ram wStringBuffer3
if DEF(_LOCALE_FR)
	text " a l'air"
	line "content."
	done
else
	text " looks"
	line "content."
	done
endc

.EggMassage:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Nina: Huhuhu..."
	line "Je ne peux"
	cont "pas m'occuper"
	cont "d'un Oeuf!"
	done
else
	text "Daisy: Oh, sorry."
	line "I honestly can't"
	cont "groom an Egg."
	done
endc
