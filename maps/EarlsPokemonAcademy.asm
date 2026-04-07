EarlsPokemonAcademy_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3, 15, VIOLET_CITY, 3
	warp_event  4, 15, VIOLET_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PokemonJournalWalkerScript
	bg_event  1,  1, BGEVENT_READ, PokemonJournalWalkerScript
	bg_event  3,  0, BGEVENT_READ, AcademyBlackboard
	bg_event  4,  0, BGEVENT_READ, AcademyBlackboard

	def_object_events
	object_event  4,  2, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AcademyEarl, EVENT_EARLS_ACADEMY_EARL
	object_event  2,  4, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, AcademyNotebook, -1
	object_event  2,  5, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, EarlsPokemonAcademyYoungster1Text, -1
	object_event  4,  7, SPRITE_CHILD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, EarlsPokemonAcademyYoungster2Text, -1
	object_event  3, 11, SPRITE_GAMER_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyGameboyKid1Script, -1
	object_event  4, 11, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyGameboyKid2Script, -1

	object_const_def
	const EARLSPOKEMONACADEMY_EARL

AcademyEarl:
	givekeyitem TYPE_CHART ; failsafe in case Violet City Earl is gone already in a save
	applymovement EARLSPOKEMONACADEMY_EARL, AcademyEarlSpinMovement
	faceplayer
	opentext
	writetext AcademyEarlIntroText
	yesorno
	iffalsefwd .Part1
	writetext AcademyEarlTeachHowToWinText
	yesorno
	iffalse_jumpopenedtext AcademyEarlNoMoreToTeachText
.Part1:
	writetext AcademyEarlTeachMoreText
	yesorno
	iffalse_jumpopenedtext AcademyEarlNoMoreToTeachText
	jumpopenedtext AcademyEarlTeachHowToRaiseWellText

EarlsPokemonAcademyGameboyKid1Script:
	showtextfaceplayer EarlsPokemonAcademyGameboyKid1Text
	turnobject LAST_TALKED, DOWN
	end

EarlsPokemonAcademyGameboyKid2Script:
	showtextfaceplayer EarlsPokemonAcademyGameboyKid2Text
	turnobject LAST_TALKED, DOWN
	end

AcademyBlackboard:
	opentext
	writetext AcademyBlackboardText
.Loop:
	loadmenu .MenuHeader
	_2dmenu
	closewindow
	ifequalfwd $1, .Poison
	ifequalfwd $2, .Paralysis
	ifequalfwd $3, .Sleep
	ifequalfwd $4, .Burn
	ifequalfwd $5, .Freeze
	endtext

.Poison:
	writetext AcademyPoisonText
	waitbutton
	sjump .Loop

.Paralysis:
	writetext AcademyParalysisText
	waitbutton
	sjump .Loop

.Sleep:
	writetext AcademySleepText
	waitbutton
	sjump .Loop

.Burn:
	writetext AcademyBurnText
	waitbutton
	sjump .Loop

.Freeze:
	writetext AcademyFreezeText
	waitbutton
	sjump .Loop

.MenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 0, 11, 8
	dw .Data
	db 1 ; default option

.Data:
	db $80 ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dba .Text
	dbw BANK(AcademyBlackboard), 0

.Text:
	db "Psn@"
	db "Par@"
	db "Slp@"
	db "Brn@"
	db "Frz@"
	db "Quit@"

AcademyNotebook:
	opentext
	writetext AcademyNotebookText
	yesorno
	iffalsefwd .Done
	writetext AcademyNotebookText1
	yesorno
	iffalsefwd .Done
	writetext AcademyNotebookText2
	yesorno
	iffalsefwd .Done
	writetext AcademyNotebookText3
	waitbutton
.Done:
	endtext

PokemonJournalWalkerScript:
	setflag ENGINE_READ_WALKER_JOURNAL
	jumpthistext

	text "#mon Journal"

	para "Special Feature:"
	line "Ex-Leader Walker!"

	para "Falkner's father"
	line "Walker is rumored"

	para "to be wandering"
	line "around Johto as"
	cont "a vagabond."
	done

AcademyEarlSpinMovement:
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
	turn_head_down
	step_end

AcademyEarlIntroText:
if DEF(_LOCALE_FR)
	text "THEOPHILE est mon"
	line "nom! Sensationnels"
	line "sont les #MON! Te"
	line "transmettre"
	line "quelques petits"
	line "conseils au niveau"
	line "me maintiendra!"
	line "Que veux-tu"
	line "savoir? Comment"
	line "devenir fort?"
	done
else
	text "Earl, I am!"

	para "Wonderful are"
	line "#mon, yes!"

	para "Teach you I will"
	line "to be a better"
	cont "trainer!"

	para "What you want to"
	line "know? Want to be"
	cont "a winner is you?"
	done
endc

AcademyEarlTeachHowToWinText:
if DEF(_LOCALE_FR)
	text "Très bien! Ton"
	line "éducation je"
	line "ferai! En combat,"
	line "le premier #MON de"
	line "ta liste sort le"
	line "premier! Changer"
	line "l'ordre de la"
	line "liste peut t'aider"
	line "à gagner ou"
	line "perdre! Tu veux en"
	line "savoir plus?"
	done
else
	text "Good! Teach you,"
	line "I will!"

	para "In battle, #mon"
	line "top on list jump"
	cont "out first!"

	para "Change order in"
	line "list, make battle"
	cont "easy, maybe!"

	para "More from me you"
	line "want to hear?"
	done
endc

AcademyEarlTeachMoreText:
if DEF(_LOCALE_FR)
	text "Alors, on veut"
	line "savoir comment"
	line "bien élever ses"
	line "p'tits #MON?"
	done
else
	text "So, want to know"
	line "how to raise"
	cont "#mon well?"
	done
endc

AcademyEarlTeachHowToRaiseWellText:
if DEF(_LOCALE_FR)
	text "Qu'il en soit"
	line "ainsi. Ton"
	line "éducation je"
	line "ferai! Tout #MON"
	line "qui participe au"
	line "combat, même"
	line "brièvement, ga-"
	line "gne des points"
	line "d'EXP. Mets en"
	line "première ligne un"
	line "#MON faible et"
	line "change- le"
	line "rapidement! De"
	line "cette façon, les"
	line "#MON fai- bles"
	line "seront bons!"
	done
else
	text "Fine! Teach you,"
	line "I will!"

	para "If #mon come"
	line "out in battle even"

	para "briefly, some Exp."
	line "Points it gets."

	para "At top of list put"
	line "weak #mon."

	para "Switch in battle"
	line "quick!"

	para "This way, weak"
	line "#mon strong"
	cont "become!"
	done
endc

AcademyEarlNoMoreToTeachText:
if DEF(_LOCALE_FR)
	text "Bon élève que tu"
	line "es! Je n'ai plus"
	line "rien à t'appren-"
	line "dre! Sois gentil"
	line "avec tes #MON!"
	done
else
	text "Oh! Smart student"
	line "you are! Nothing"
	cont "more do I teach!"

	para "Good to #mon"
	line "you must be!"
	done
endc

EarlsPokemonAcademyYoungster1Text:
if DEF(_LOCALE_FR)
	text "Je prends note de"
	line "ce cours bien"
	line "utile. C'est"
	line "sûrement utile de"
	line "copier ce qu'il y"
	line "a au tableau."
	done
else
	text "I'm taking notes"
	line "of the teacher's"
	cont "lecture."

	para "I'd better copy"
	line "the stuff on the"
	cont "blackboard too."
	done
endc

EarlsPokemonAcademyGameboyKid1Text:
if DEF(_LOCALE_FR)
	text "J'ai échangé mon"
	line "meilleur #MON avec"
	line "celui du gars à"
	line "côté de moi."
	done
else
	text "I traded my best"
	line "#mon to the"
	cont "guy beside me."
	done
endc

EarlsPokemonAcademyGameboyKid2Text:
if DEF(_LOCALE_FR)
	text "Hein? Le #MON que"
	line "je viens d'avoir"
	line "tient quelque"
	line "chose!"
	done
else
	text "Huh? The #mon I"
	line "just got is hold-"
	cont "ing something!"
	done
endc

EarlsPokemonAcademyYoungster2Text:
if DEF(_LOCALE_FR)
	text "Un #MON tenant une"
	line "BAIE se soi- gnera"
	line "tout seul en"
	line "combat. Beaucoup"
	line "d'autres objets"
	line "peuvent être tenus"
	line "par les #MON…"
	line "Ecrire… C'est dur…"
	done
else
	text "A #mon holding"
	line "a Berry will heal"
	cont "itself in battle."

	para "Many other items"
	line "can be held by"
	cont "#mon…"

	para "It sure is tough"
	line "taking notes…"
	done
endc

AcademyBlackboardText:
if DEF(_LOCALE_FR)
	text "Le tableau indique"
	line "les changements de"
	line "statut des #MON"
	line "pendant les"
	line "combats."
	done
else
	text "The blackboard"
	line "describes #mon"

	para "status changes in"
	line "battle."
	done
endc

AcademyPoisonText:
if DEF(_LOCALE_FR)
	text "Empoisonné, votre"
	line "#MON perd"
	line "régulièrement des"
	line "PV. Le poison agit"
	line "même après le"
	line "combat et vous"
	line "perdrez des PV en"
	line "marchant. Seul"
	line "remède connu à ce"
	line "jour: l'ANTIDOTE."
	done
else
	text "If poisoned, a"
	line "#mon steadily"
	cont "loses HP."

	para "Poison lingers"
	line "after the battle,"

	para "and HP is lost as"
	line "you walk."

	para "To cure it, use an"
	line "Antidote."
	done
endc

AcademyParalysisText:
if DEF(_LOCALE_FR)
	text "La paralysie"
	line "réduit la vitesse"
	line "et peut empêcher"
	line "de lancer une"
	line "attaque. Elle dure"
	line "même après le"
	line "combat."
	line "L'ANTI-PARA peut"
	line "l'annuler."
	done
else
	text "Paralysis reduces"
	line "speed and may"
	cont "prevent movement."

	para "It remains after"
	line "battle, so use"
	cont "a ParalyzeHeal."
	done
endc

AcademySleepText:
if DEF(_LOCALE_FR)
	text "Endormi, votre"
	line "#MON ne peut pas"
	line "réagir. Un #MON"
	line "endormi ne se"
	line "réveille pas après"
	line "le combat."
	line "Réveillez-le avec"
	line "un REVEIL."
	done
else
	text "If asleep, your"
	line "#mon can't make"
	cont "a move."

	para "A sleeping #mon"
	line "doesn't wake up"
	cont "after battle."

	para "Wake it up with"
	line "an Awakening."
	done
endc

AcademyBurnText:
if DEF(_LOCALE_FR)
	text "Une brûlure con-"
	line "somme des PV. Elle"
	line "réduit aussi la"
	line "force d'attaque."
	line "La brûlure conti-"
	line "nue même après le"
	line "combat. Utilisez"
	line "de l'ANTI-BRULE"
	line "pour la soigner."
	done
else
	text "A burn steadily"
	line "consumes HP."

	para "It also reduces"
	line "attack power."

	para "A burn lingers"
	line "after battle."

	para "Use a Burn Heal as"
	line "the cure."
	done
endc

AcademyFreezeText:
if DEF(_LOCALE_FR)
	text "Si votre #MON est"
	line "gelé, il ne pourra"
	line "rien faire. Le gel"
	line "continue après le"
	line "combat. Mieux"
	line "qu'un radia- teur,"
	line "l'ANTIGEL le"
	line "réchauffera!"
	done
else
	text "If your #mon is"
	line "frozen, it can't"
	cont "do a thing."

	para "It remains frozen"
	line "after battle."

	para "Thaw it out with"
	line "an Ice Heal."
	done
endc

AcademyNotebookText:
if DEF(_LOCALE_FR)
	text "C'est le cahier de"
	line "ce gamin… Attrapez"
	line "les #MON en"
	line "lançant les #"
	line "BALLS. Vous pouvez"
	line "trans- porter six"
	line "#MON avec vous."
	line "Continuer à lire?"
	done
else
	text "It's this kid's"
	line "notebook…"

	para "Catch #mon"
	line "using # Balls."

	para "Up to six can be"
	line "in your party."

	para "Keep reading?"
	done
endc

AcademyNotebookText1:
if DEF(_LOCALE_FR)
	text "Avant de lancer"
	line "une # BALL,"
	line "affaiblissez le"
	line "#MON. Un #MON"
	line "brûlé ou"
	line "empoisonné est"
	line "plus facile à"
	line "attraper."
	line "Continuer à lire?"
	done
else
	text "Before throwing a"
	line "# Ball, weaken"
	cont "the target first."

	para "A poisoned or"
	line "burned #mon is"
	cont "easier to catch."

	para "Keep reading?"
	done
endc

AcademyNotebookText2:
if DEF(_LOCALE_FR)
	text "Certaines capaci-"
	line "tés peuvent em-"
	line "brouiller l'esprit"
	line "du #MON adverse."
	line "Une fois confus,"
	line "le #MON peut"
	line "s'attaquer lui-"
	line "même. Fuir le"
	line "combat annule tout"
	line "effet de"
	line "confusion."
	line "Continuer à lire?"
	done
else
	text "Some moves may"
	line "cause confusion."

	para "Confusion may make"
	line "a #mon attack"
	cont "itself."

	para "Leaving battle"
	line "clears up any"
	cont "confusion."

	para "Keep reading?"
	done
endc

AcademyNotebookText3:
if DEF(_LOCALE_FR)
	text "Les personnes qui"
	line "attrapent et uti-"
	line "lisent les #MON"
	line "pour les combats"
	line "sont des dresseurs"
	line "de #MON. Leur but"
	line "est de défier et"
	line "vaincre tous les"
	line "dresseurs et"
	line "CHAMPIONS d'ARENES"
	line "#MON. La page"
	line "suivante"
	line "est…blanche!"
	line "Gamin: Maiiheuu…"
	line "J'ai rien écrit"
	line "d'autre…"
	done
else
	text "People who catch"
	line "and use #mon"

	para "in battle are"
	line "#mon trainers."

	para "They are expected"
	line "to visit #mon"

	para "Gyms and defeat"
	line "other trainers."

	para "The next page"
	line "is… Blank!"

	para "Boy: E-he-he…"

	para "I haven't written"
	line "any more…"
	done
endc
