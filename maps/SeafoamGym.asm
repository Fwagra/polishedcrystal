SeafoamGym_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 12, 20, SEAFOAM_ISLANDS_1F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10, 20, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamGymGuyScript, EVENT_SEAFOAM_GYM_GYM_GUY
	object_event  7, 16, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerScientistLowell, -1
	object_event 14, 14, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerScientistDennett, -1
	object_event 19, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSupernerdCary, -1
	object_event 12,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerScientistLinden, -1
	object_event 10,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSupernerdWaldo, -1
	object_event  6, 14, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSupernerdMerle, -1
	object_event 12, 11, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, SeafoamGymBlaineScript, -1

	object_const_def
	const SEAFOAMGYM_GYM_GUY

GenericTrainerScientistLowell:
	generictrainer SCIENTIST, LOWELL, EVENT_BEAT_SCIENTIST_LOWELL, ScientistLowellSeenText, ScientistLowellBeatenText

if DEF(_LOCALE_FR)
	text "On est dans une"
	line "grotte, mais on"
	cont "fait la lessive."
	done
else
	text "We may be in a"
	line "cave, but we"
	cont "always do the"
	cont "laundry."
	done
endc

GenericTrainerScientistDennett:
	generictrainer SCIENTIST, DENNETT, EVENT_BEAT_SCIENTIST_DENNETT, ScientistDennettSeenText, ScientistDennettBeatenText

if DEF(_LOCALE_FR)
	text "Avec AUGUSTE, on"
	line "reconstruira"
	cont "notre ARENE!"
	done
else
	text "Together with"
	line "Blaine, we will"
	cont "rebuild our Gym!"
	done
endc

GenericTrainerSupernerdCary:
	generictrainer SUPER_NERD, CARY, EVENT_BEAT_SUPER_NERD_CARY, SupernerdCarySeenText, SupernerdCaryBeatenText

if DEF(_LOCALE_FR)
	text "L'amertume mène"
	line "au progrès."
	done
else
	text "Bitterness leads"
	line "to improvement."
	done
endc

GenericTrainerScientistLinden:
	generictrainer SCIENTIST, LINDEN, EVENT_BEAT_SCIENTIST_LINDEN, ScientistLindenSeenText, ScientistLindenBeatenText

if DEF(_LOCALE_FR)
	text "Tous les savants"
	line "aident pas les"
	cont "méchants."
	done
else
	text "Not all scientists"
	line "help the bad guys."
	done
endc

GenericTrainerSupernerdWaldo:
	generictrainer SUPER_NERD, WALDO, EVENT_BEAT_SUPER_NERD_WALDO, SupernerdWaldoSeenText, SupernerdWaldoBeatenText

if DEF(_LOCALE_FR)
	text "Mais… qu'es-tu…?"
	done
else
	text "Who in the world"
	line "are you?"
	done
endc

GenericTrainerSupernerdMerle:
	generictrainer SUPER_NERD, MERLE, EVENT_BEAT_SUPER_NERD_MERLE, SupernerdMerleSeenText, SupernerdMerleBeatenText

if DEF(_LOCALE_FR)
	text "J'ai pas senti"
	line "à quel point tu"
	cont "étais fort."
	done
else
	text "I failed to"
	line "sense how strong"
	cont "you are."
	done
endc

SeafoamGymBlaineScript:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftruefwd .FightDone
	writetext BlaineIntroText
	waitbutton
	closetext
	winlosstext BlaineWinLossText, 0
	loadtrainer BLAINE, 1
	startbattle
	reloadmapafterbattle
	iftruefwd .ReturnAfterBattle
	appear SEAFOAMGYM_GYM_GUY
.ReturnAfterBattle:
	setevent EVENT_BEAT_BLAINE
	setevent EVENT_BEAT_SCIENTIST_LOWELL
	setevent EVENT_BEAT_SCIENTIST_DENNETT
	setevent EVENT_BEAT_SUPER_NERD_CARY
	setevent EVENT_BEAT_SCIENTIST_LINDEN
	setevent EVENT_BEAT_SUPER_NERD_WALDO
	setevent EVENT_BEAT_SUPER_NERD_MERLE
	opentext
	givebadge VOLCANOBADGE, KANTO_REGION
	callstd kantopostgymevents
.FightDone:
	checkevent EVENT_GOT_TM61_WILL_O_WISP
	iftrue_jumpopenedtext BlaineFightDoneText
	writetext BlaineAfterBattleText
	promptbutton
	verbosegivetmhm TM_WILL_O_WISP
	setevent EVENT_GOT_TM61_WILL_O_WISP
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "C'est FEU FOLLET!"

	para "Ca brûle l'ennemi"
	line "et le"
	cont "faiblit."

	para "J'ai perdu cette"
	line "fois, mais je"
	cont "gagnerai la"
	cont "prochaine!"

	para "Quand je rebâti-"
	line "rai l'ARENE de"
	cont "CRAMOIS'ILE,"

	para "on fera un re-"
	line "match."
	done
else
	text "It's called Will-"
	line "O-Wisp!"

	para "It weakens your"
	line "foe by inflicting"
	cont "a burn."

	para "I did lose this"
	line "time, but I'm going"
	cont "to win next time."

	para "When I rebuild my"
	line "Cinnabar Gym,"

	para "we'll have to have"
	line "a rematch."
	done
endc

SeafoamGymGuyScript:
	checkevent EVENT_TALKED_TO_SEAFOAM_GYM_GUY_ONCE
	iftrue_jumptextfaceplayer SeafoamGymGuyWinText2
	setevent EVENT_TALKED_TO_SEAFOAM_GYM_GUY_ONCE
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Yo! Hein? C'est"
	line "déjà fini? Désolé,"
	line "mec! L'ARENE de"
	line "CRAMOI- S'ILE"
	line "était fermée alors"
	line "je savais pas où"
	line "te trouver. Enfin"
	line "t'es super fort"
	line "même sans mes"
	line "conseils. Je suis"
	line "très fier!"
	done
else
	text "Yo!"

	para "…Huh? It's over"
	line "already?"

	para "Sorry, sorry!"

	para "Cinnabar Gym was"
	line "gone, so I didn't"

	para "know where to find"
	line "you."

	para "But, hey, you're"
	line "plenty strong even"

	para "without my advice."
	line "I knew you'd win!"
	done
endc

ScientistLowellSeenText:
if DEF(_LOCALE_FR)
	text "Cette blouse me"
	line "rend plus malin,"
	cont "j'sais pas"
	cont "pourquoi."
	done
else
	text "This lab coat"
	line "makes me feel"
	cont "smarter for some"
	cont "reason."
	done
endc

ScientistLowellBeatenText:
if DEF(_LOCALE_FR)
	text "Une blouse blanche"
	line "c'est la vie d'un"
	cont "chercheur."
	done
else
	text "A white lab coat"
	line "is a researcher's"
	cont "life."
	done
endc

ScientistDennettSeenText:
if DEF(_LOCALE_FR)
	text "AUGUSTE a perdu"
	line "son ARENE, mais"
	cont "lâche jamais!"
	done
else
	text "Blaine may have"
	line "lost his Gym, but"
	cont "he never gives up!"
	done
endc

ScientistDennettBeatenText:
if DEF(_LOCALE_FR)
	text "La ténacité"
	line "d'AUGUSTE me"
	cont "motive!"
	done
else
	text "Blaine's persever-"
	line "ance motivates me!"
	done
endc

SupernerdCarySeenText:
if DEF(_LOCALE_FR)
	text "Une ARENE dans"
	line "une grotte?"

	para "J'veux l'explorer!"
	done
else
	text "Wow, a Gym in a"
	line "cave like this?"

	para "I'd love to"
	line "explore it."
	done
endc

SupernerdCaryBeatenText:
if DEF(_LOCALE_FR)
	text "Une défaite"
	line "amère…"
	done
else
	text "A bitter"
	line "defeat…"
	done
endc

ScientistLindenSeenText:
if DEF(_LOCALE_FR)
	text "On a perdu l'ARENE"
	line "à CRAMOIS'ILE,"
	cont "alors on est là."
	done
else
	text "We lost the Gym on"
	line "Cinnabar Island,"
	cont "but we came here."
	done
endc

ScientistLindenBeatenText:
if DEF(_LOCALE_FR)
	text "On accepte la"
	line "défaite…"
	done
else
	text "We accept defeat"
	line "gracefully…"
	done
endc

SupernerdWaldoSeenText:
if DEF(_LOCALE_FR)
	text "Je collecte des"
	line "données de combat."

	para "Tu peux m'aider?"
	done
else
	text "I am collecting"
	line "battle records."

	para "Can you help me?"
	done
endc

SupernerdWaldoBeatenText:
if DEF(_LOCALE_FR)
	text "Je te pensais pas"
	line "aussi bon!"
	done
else
	text "I didn't expect"
	line "you to be so good!"
	done
endc

SupernerdMerleSeenText:
if DEF(_LOCALE_FR)
	text "Oh!"
	line "Tu as l'air"
	cont "facile!"
	done
else
	text "Ooh!"
	line "You look easily"
	cont "defeated!"
	done
endc

SupernerdMerleBeatenText:
if DEF(_LOCALE_FR)
	text "Pardon!"
	done
else
	text "Pardon me!"
	done
endc

BlaineIntroText:
if DEF(_LOCALE_FR)
	text "AUGUSTE: Waaah!"
	line "Mon ARENE de CRA-"
	line "MOIS'ILE a brûlé."
	line "Moi et mes #MON de"
	line "feu n'avons plus"
	line "de maison à cause"
	line "du volcan. Waaah!"
	line "Mais je suis tou-"
	line "jours un CHAMPION!"
	line "Et je fais la loi"
	line "dans cette grotte."
	line "Bats-moi et je te"
	line "donnerai un BADGE."
	line "Promis! J'espère"
	line "que tu as de"
	line "l'ANTI-BRULE!"
	done
else
	text "Blaine: Waaah!"

	para "My Gym in Cinnabar"
	line "burned down."

	para "My fire-breathing"
	line "#mon and I are"

	para "homeless because"
	line "of the volcano."

	para "Waaah!"

	para "But I'm back in"
	line "business as a Gym"

	para "Leader here in"
	line "this cave."

	para "If you can beat"
	line "me, I'll give you"
	cont "a Badge."

	para "Ha! You'd better"
	line "have Burn Heal!"
	done
endc

BlaineWinLossText:
if DEF(_LOCALE_FR)
	text "AUGUSTE: Bien."
	line "J'ai perdu. Tu as"
	line "mérité le BADGE"
	line "VOLCAN!"
	done
else
	text "Blaine: Awesome."
	line "I've burned out…"

	para "You've earned the"
	line "Volcano Badge!"
	done
endc

BlaineAfterBattleText:
if DEF(_LOCALE_FR)
	text "Tiens, prends ça"
	line "aussi."
	done
else
	text "Here, I'll give you"
	line "this, too."
	done
endc

BlaineFightDoneText:
if DEF(_LOCALE_FR)
	text "AUGUSTE: Mes #MON"
	line "de feu seront"
	line "invincibles tu"
	line "verras!"
	done
else
	text "Blaine: My fire"
	line "#mon will be"

	para "even stronger."
	line "Just you watch!"
	done
endc

SeafoamGymGuyWinText2:
if DEF(_LOCALE_FR)
	text "Une ARENE #MON"
	line "peut être n'impor-"
	line "te où tant que le"
	line "CHAMPION est là."
	line "Pas besoin d'un"
	line "toit."
	done
else
	text "A #mon Gym can"
	line "be anywhere as"

	para "long as the Gym"
	line "Leader is there."

	para "There's no need"
	line "for a building."
	done
endc
