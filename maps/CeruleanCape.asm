CeruleanCape_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CeruleanCapeFlyPoint

	def_warp_events
	warp_event  9,  5, BILLS_HOUSE, 1
	warp_event 38, 29, DIM_CAVE_2F, 1

	def_coord_events
	coord_event  4,  6, 1, CeruleanCapeDateInterruptedTrigger1
	coord_event  4,  7, 1, CeruleanCapeDateInterruptedTrigger2
	coord_event  9, 12, 1, CeruleanCapeDateInterruptedTrigger3

	def_bg_events
	bg_event  7,  5, BGEVENT_JUMPTEXT, BillsHouseSignText
	bg_event 27, 20, BGEVENT_ITEM + PEARL_STRING, EVENT_CERULEAN_CAPE_HIDDEN_PEARL_STRING
	bg_event 18,  3, BGEVENT_ITEM + BOTTLE_CAP, EVENT_CERULEAN_CAPE_HIDDEN_BOTTLE_CAP

	def_object_events
	object_event  8,  9, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CERULEAN_CAPE_BOYFRIEND
	object_event  8, 10, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CERULEAN_CAPE_BOYFRIEND
	object_event 25,  8, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerSwimmermRomeo, -1
	object_event 41, 16, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerSwimmermMalcolm, -1
	object_event 25, 27, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerSwimmermArmand, -1
	object_event 19, 12, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBeautyBridget, -1
	object_event  1, 21, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBeautyVeronica, -1
	object_event  0, 27, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerGentlemanCamus, -1
	object_event 41, 26, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerGentlemanGeoffrey, -1
	object_event 16, 32, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerGuitaristfMorgan, -1
	object_event  7, 26, SPRITE_LADY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerLadyJessica, -1
	object_event 32, 11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerFisherLeroy, -1
	object_event -4, 8, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_25_COOLTRAINER_M_BEFORE
	object_event -2, 8, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CooltrainermKevinAfterBattleText, EVENT_ROUTE_25_COOLTRAINER_M_AFTER
	object_event 21, 19, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_TOP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptext, CeruleanCapeSailboatText, -1
	object_event 21, 19, SPRITE_SAILBOAT, SPRITEMOVEDATA_SAILBOAT_BOTTOM, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptext, CeruleanCapeSailboatText, -1
	itemball_event 31, 12, SHELL_BELL, 1, EVENT_CERULEAN_CAPE_SHELL_BELL

	object_const_def
	const CERULEANCAPE_MISTY
	const CERULEANCAPE_BOYFRIEND

CeruleanCapeFlyPoint:
	setflag ENGINE_FLYPOINT_CERULEAN_CAPE
	endcallback

CeruleanCapeDateInterruptedTrigger1:
	showemote EMOTE_HEART, CERULEANCAPE_MISTY, 15
	pause 30
	showemote EMOTE_SHOCK, CERULEANCAPE_BOYFRIEND, 10
	turnobject CERULEANCAPE_MISTY, DOWN
	applyonemovement CERULEANCAPE_BOYFRIEND, big_step_down
	disappear CERULEANCAPE_BOYFRIEND
	pause 15
	playmusic MUSIC_BEAUTY_ENCOUNTER
	turnobject CERULEANCAPE_MISTY, UP
	pause 5
	applymovement CERULEANCAPE_MISTY, Route25MistyApproachesPlayerMovement1
	showtext Route25MistyDateText
	applymovement CERULEANCAPE_MISTY, Route25MistyLeavesPlayerMovement1
	sjumpfwd CeruleanCapeDateFinishScript

CeruleanCapeDateInterruptedTrigger2:
	showemote EMOTE_HEART, CERULEANCAPE_MISTY, 15
	pause 30
	showemote EMOTE_SHOCK, CERULEANCAPE_BOYFRIEND, 10
	turnobject CERULEANCAPE_MISTY, DOWN
	applymovement CERULEANCAPE_BOYFRIEND, Route25MistysDateLeavesMovement2
	disappear CERULEANCAPE_BOYFRIEND
	pause 15
	playmusic MUSIC_BEAUTY_ENCOUNTER
	turnobject CERULEANCAPE_MISTY, UP
	pause 5
	applymovement CERULEANCAPE_MISTY, Route25MistyApproachesPlayerMovement2
	showtext Route25MistyDateText
	applymovement CERULEANCAPE_MISTY, Route25MistyLeavesPlayerMovement2
CeruleanCapeDateFinishScript:
	turnobject PLAYER, LEFT
	applymovement CERULEANCAPE_MISTY, Route25MistyLeavesMovement
	disappear CERULEANCAPE_MISTY
	clearevent EVENT_TRAINERS_IN_CERULEAN_GYM
	setscene $0
	special RestartMapMusic
	end

CeruleanCapeDateInterruptedTrigger3:
	showemote EMOTE_HEART, CERULEANCAPE_MISTY, 15
	pause 30
	turnobject CERULEANCAPE_BOYFRIEND, DOWN
	showemote EMOTE_SHOCK, CERULEANCAPE_BOYFRIEND, 10
	turnobject CERULEANCAPE_MISTY, DOWN
	applymovement CERULEANCAPE_BOYFRIEND, .RunAwayMovement1
	turnobject CERULEANCAPE_MISTY, UP
	applymovement CERULEANCAPE_BOYFRIEND, .RunAwayMovement2
	disappear CERULEANCAPE_BOYFRIEND
	pause 15
	playmusic MUSIC_BEAUTY_ENCOUNTER
	turnobject CERULEANCAPE_MISTY, DOWN
	pause 5
	applymovement CERULEANCAPE_MISTY, .ApproachMovement
	showtext Route25MistyDateText
	applymovement CERULEANCAPE_MISTY, .LeaveMovement
	disappear CERULEANCAPE_MISTY
	clearevent EVENT_TRAINERS_IN_CERULEAN_GYM
	setscene $0
	special RestartMapMusic
	end

.RunAwayMovement1:
	big_step_right
	big_step_up
	step_end

.RunAwayMovement2:
	big_step_up
	big_step_up
	step_end

.ApproachMovement:
	step_right
	step_down
	step_down
	step_end

.LeaveMovement:
	step_up
	step_up
	step_up
	step_up
	step_end

GenericTrainerSwimmermRomeo:
	generictrainer SWIMMERM, ROMEO, EVENT_BEAT_SWIMMERM_ROMEO, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Etre un bon"
	line "NAGEUR ne fait"

	para "pas de moi un bon"
	line "dresseur…"
	done
else
	text "Being a good"
	line "Swimmer doesn't"

	para "make me a good"
	line "trainer…"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Admire ma forme!"
	line "La victoire est"
	cont "assurée!"
	done
else
	text "Admire my fitness!"
	line "My victory is"
	cont "assured!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "C'est fini?"
	done
else
	text "Oh! That's it?"
	done
endc

GenericTrainerSwimmermMalcolm:
	generictrainer SWIMMERM, MALCOLM, EVENT_BEAT_SWIMMERM_MALCOLM, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Ne me dis pas"
	line "que tu visites"

	para "plein d'ARENES"
	line "#MON, hein?"
	done
else
	text "Don't tell me,"
	line "you visit lots of"

	para "#mon Gyms,"
	line "right?"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Mes #MON et moi"
	line "on nage,"

	para "mais on se bat"
	line "aussi!"
	done
else
	text "My #mon and I"
	line "swim together,"

	para "but we also"
	line "battle!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "J'aimerais être"
	line "comme toi."
	done
else
	text "I wish I were as"
	line "strong as you."
	done
endc

GenericTrainerSwimmermArmand:
	generictrainer SWIMMERM, ARMAND, EVENT_BEAT_SWIMMERM_ARMAND, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "La fille sur la"
	line "plage…"
	cont "Sa musique est"
	cont "bien, mais…"

	para "elle distrait"
	line "les #MON!"
	done
else
	text "That gal on the"
	line "shore… Her music"
	cont "is good, but she's"

	para "distracting the"
	line "#mon!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Pff. La guitariste"
	line "sur la plage,"

	para "elle peut baisser"
	line "un peu?"
	done
else
	text "Ugh. Would that"
	line "Guitarist on the"

	para "shore keep it"
	line "down?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "La guitare m'a"
	line "déconcentré!"
	done
else
	text "The guitar put me"
	line "off my stride!"
	done
endc

GenericTrainerBeautyBridget:
	generictrainer BEAUTY, BRIDGET, EVENT_BEAT_BEAUTY_BRIDGET, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Je trouve la vue"
	line "magnifique."
	cont "Tu es d'accord?"
	done
else
	text "I think the view"
	line "here is beautiful."
	cont "Don't you agree?"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Hé! Tu me caches"
	line "la vue!"
	done
else
	text "Hey! You're block-"
	line "ing my view!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Je voulais juste"
	line "profiter de la"
	cont "vue…"
	done
else
	text "I was just trying"
	line "to enjoy the view…"
	done
endc

GenericTrainerBeautyVeronica:
	generictrainer BEAUTY, VERONICA, EVENT_BEAT_BEAUTY_VERONICA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Traite-moi mal et"
	line "va te faire voir!"

	para "Voilà pourquoi je"
	line "je suis célib'."
	line "…Haha!"
	done
else
	text "Treat me mean and"
	line "I'll tell you where"
	cont "to go!"

	para "Must be why I'm"
	line "single. …Haha!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Je sors peu,"
	line "mais quand je sors"

	para "c'est l'endroit"
	line "parfait."
	done
else
	text "I don't date much,"
	line "but when I do,"

	para "Cerulean Cape is"
	line "the perfect spot."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Les traiter mal,"
	line "ça marche, non?"
	done
else
	text "Treat 'em mean,"
	line "keep 'em keen,"
	cont "right?"
	done
endc

GenericTrainerGentlemanCamus:
	generictrainer GENTLEMAN, CAMUS, EVENT_BEAT_GENTLEMAN_CAMUS, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "J'étais un dres-"
	line "seur talentueux,"

	para "mais je ne suis"
	line "plus qu'un vieux."

	para "Profite tant que"
	line "tu es jeune."
	done
else
	text "I was once a ta-"
	line "lented trainer,"

	para "but now I'm just an"
	line "old has-been."

	para "Enjoy it while"
	line "you're still young."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Te voir rappelle"
	line "ma jeunesse"
	cont "folle."
	done
else
	text "Seeing you reminds"
	line "me of my own wild"
	cont "youth."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Quel combat"
	line "sauvage!"
	done
else
	text "What a wild"
	line "battle!"
	done
endc

GenericTrainerGentlemanGeoffrey:
	generictrainer GENTLEMAN, GEOFFREY, EVENT_BEAT_GENTLEMAN_GEOFFREY, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Un changement vaut"
	line "un repos."

	para "Je me sens si"
	line "rafraîchi!"
	done
else
	text "Sometimes a change"
	line "is as good as a"
	cont "rest."

	para "I feel so refresh-"
	line "ed!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Je voulais"
	line "changer,"
	line "alors je me suis"
	cont "mis aux #MON!"
	done
else
	text "I wanted a change,"
	line "so I got into"
	cont "#mon!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Malgré mon âge,"
	line "je débute encore."
	done
else
	text "Despite my age, I'm"
	line "still a beginner."
	done
endc

GenericTrainerGuitaristfMorgan:
	generictrainer GUITARISTF, MORGAN, EVENT_BEAT_GUITARISTF_MORGAN, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Les falaises font"
	line "un son parfait!"
	done
else
	text "The echoing cliffs"
	line "make the Cape a"
	cont "perfect sound-"
	cont "board!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Ecoute cette"
	line "réverb'!"
	done
else
	text "Listen to that"
	line "reverb!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Quel combat"
	line "rock'n roll!"
	done
else
	text "What a rockin'"
	line "battle!"
	done
endc

TrainerLadyJessica:
	trainer LADY, JESSICA, EVENT_BEAT_LADY_JESSICA, .SeenText, .BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_SPOKE_TO_LADY_JESSICA
	iftruefwd .SpokeAgain
	writetext .AfterText1
	setevent EVENT_SPOKE_TO_LADY_JESSICA
	waitendtext

.SpokeAgain:
	writetext .AfterText2
	clearevent EVENT_SPOKE_TO_LADY_JESSICA
	waitendtext

.SeenText:
if DEF(_LOCALE_FR)
	text "Ah! Toi!"
	line "Un combat,"
	cont "ça te dit?"
	done
else
	text "Ah! You there!"
	line "Care to battle"
	cont "with me?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Oh non! Ma robe"
	line "est trempée!"
	done
else
	text "Oh no! I got my"
	line "dress all wet!"
	done
endc

.AfterText1:
if DEF(_LOCALE_FR)
	text "Je vais acheter"
	line "un meilleur #MON…"
	cont "………………"
	cont "Et une nouvelle"
	cont "robe…"
	done
else
	text "I'll have to buy a"
	line "better #mon…"
	cont "………………"
	cont "And a new dress…"
	done
endc

.AfterText2:
if DEF(_LOCALE_FR)
	text "Pourquoi tu es"
	line "encore là?"

	para "Arrête de me"
	line "regarder!"
	cont "………………"
	cont "Cinglé!"
	done
else
	text "Why are you still"
	line "here?"

	para "Stop staring at"
	line "me!"
	cont "………………"
	cont "Creep!"
	done
endc

GenericTrainerFisherLeroy:
	generictrainer FISHER, LEROY, EVENT_BEAT_FISHER_LEROY, .SeenText, .BeatenText

	text "All I ever catch"
	line "are Magikarp…"

	para "At least they all"
	line "look unique."
	done

.SeenText:
if DEF(_LOCALE_FR)
	text "J'attrape toujours"
	line "le même #MON. Bon"
	line "allez… Un petit"
	line "combat pour me"
	line "changer les idées."
	done
else
	text "I keep catching"
	line "the same #mon…"

	para "Maybe a battle"
	line "will turn things"
	cont "around for me."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Tout cloche pour"
	line "moi…"
	done
else
	text "Nothing ever goes"
	line "right for me now…"
	done
endc

Route25MistysDateLeavesMovement2:
	run_step_down
	run_step_down
	step_end

Route25MistyApproachesPlayerMovement1:
	step_up
Route25MistyApproachesPlayerMovement2:
	step_up
	step_up
	step_left
	step_left
	step_left
	step_end

Route25MistyLeavesPlayerMovement1:
	step_down
	step_left
	step_end

Route25MistyLeavesPlayerMovement2:
	step_up
	step_left
	step_end

Route25MistyLeavesMovement:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

Route25MistyDateText:
if DEF(_LOCALE_FR)
	text "ONDINE: Raaaah!"
	line "Pourquoi tu viens"
	line "nous embêter, toi?"
	line "Tu sais comment ça"
	line "s'appelle un type"
	line "comme toi? Un"
	line "lourd! T'entends?"
	line "Un gros lourd! …"
	line "…Oh? C'est des"
	line "BADGES que tu as?"
	line "C'est les BADGES"
	line "de JOHTO? Si t'en"
	line "as huit, c'est que"
	line "t'es plutôt fort."
	line "Très bien. Viens à"
	line "l'ARENE d'AZURIA."
	line "Je suis ravie de"
	line "te combattre. Moi"
	line "c'est ONDINE, la"
	line "CHAMPIONNE de"
	line "l'ARENE d'AZURIA."
	done
else
	text "Misty: Aww! Why"
	line "did you have to"

	para "show up and bug us"
	line "now?"

	para "Do you know what"
	line "they call people"
	cont "like you?"

	para "Pests! You heard"
	line "me right, pest!"

	para "…"

	para "…Oh? Those Badges"
	line "you have… Are they"
	cont "Johto Gym Badges?"

	para "If you have eight,"
	line "you must be good."

	para "OK, then. Come to"
	line "Cerulean Gym."

	para "I'll be happy to"
	line "take you on."

	para "I'm Misty, the"
	line "Gym Leader in"
	cont "Cerulean."
	done
endc

BillsHouseSignText:
if DEF(_LOCALE_FR)
	text "VILLA MAISON DE"
	line "LEO"
	done
else
	text "Sea Cottage"
	line "Bill's House"
	done
endc

CeruleanCapeSailboatText:
	text "It's a sailboat"
	line "named FriendShip."
	done
