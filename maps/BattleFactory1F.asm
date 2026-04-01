BattleFactory1F_MapScriptHeader:
	def_scene_scripts
	scene_script BattleFactory1FContinueChallenge

	def_callbacks

	def_warp_events
	warp_event 12, 11, VERMILION_CITY, 15
	warp_event 13, 11, VERMILION_CITY, 16
	warp_event 12,  1, BATTLE_FACTORY_HALLWAY, 1

	def_coord_events

	def_bg_events
	bg_event 14,  5, BGEVENT_READ, BattleFactory1FRulesScript
	bg_event 10,  5, BGEVENT_JUMPTEXT, BattleFactory1FStreakText
	bg_event 25,  6, BGEVENT_READ, PokemonJournalThortonScript

	def_object_events
	object_event 12,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleFactory1FReceptionistScript, -1
	pc_nurse_event  6,  6
	object_event 18,  6, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_BP, MART_BATTLEFACTORY_1, -1
	object_event 20,  6, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_BP, MART_BATTLEFACTORY_2, -1
	object_event 22,  6, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_BP, MART_BATTLEFACTORY_3, -1

	object_const_def
	const BATTLEFACTORY1F_RECEPTIONIST

BattleFactory1FContinueChallenge:
; Triggers (usefully) if we're in an ongoing Battle Factory run.
	; Only trigger this once.
	setscene 1

	; Check current battle status to see if we need to resume or reset winstreak
	special Special_BattleTower_GetChallengeState
	ifequalfwd BATTLETOWER_CHALLENGE_IN_PROGRESS, .LeftWithoutSaving
	ifequalfwd BATTLETOWER_SAVED_AND_LEFT, .ResumeChallenge
	ifequalfwd BATTLETOWER_LOST_CHALLENGE, .LostChallenge
	ifequalfwd BATTLETOWER_WON_CHALLENGE, .WonChallenge
	end

.ResumeChallenge:
	; We saved in-between rounds. Resume Battle Factory challenge.
	opentext
	writethistext
if DEF(_LOCALE_FR)
		text "Nous vous"
		line "attendions."
		prompt
else
		text "We've been waiting"
		line "for you."
		prompt
endc

	sdefer Script_ReturnToRentalChallenge
	end

.LeftWithoutSaving:
	; The player reset the game in the middle of a battle.
	; This counts as a battle loss, and will reset the winstreak.
	sdefer .LeftWithoutSaving2
	end
.LeftWithoutSaving2:
	opentext
	writethistext
if DEF(_LOCALE_FR)
		text "Excusez-moi!"
		line "Vous n'avez pas"
		cont "SAUVE avant de"
		cont "quitter la Salle"
		cont "de Combat."
		para "Votre défi ne"
		line "sera donc pas"
		cont "pris en compte."
		done
else
		text "Excuse me!"
		line "You didn't save"

		para "before exiting"
		line "the Battle Room."

		para "I'm awfully sorry,"
		line "but your challenge"

		para "will be declared"
		line "invalid."
		done
endc
	waitbutton
	sjumpfwd Script_CommitBattleFactoryResult

.LostChallenge:
	opentext
	sdefer Script_CommitBattleFactoryResult
	end

.WonChallenge:
	sdefer .WonChallenge2
	end
.WonChallenge2:
	opentext
	writethistext
if DEF(_LOCALE_FR)
		text "Félicitations!"
		line "Tous les dresseurs"
		para "ont été vaincus!"
		line "Et hop! Cadeau!"
		prompt
else
		text "Congratulations!"

		para "You've beaten all"
		line "the trainers!"

		para "For that, you get"
		line "this great prize!"
		prompt
endc
	verbosegiveitem MINT_LEAF
	; fallthrough
Script_CommitBattleFactoryResult:
	special Special_BattleTower_CommitChallengeResult
	iffalsefwd .WeHopeToServeYouAgain
	setevent EVENT_BEAT_THORTON
.WeHopeToServeYouAgain:
	writethistext
if DEF(_LOCALE_FR)
		text "A bientôt,"
		line "j'espère."
		done
else
		text "We hope to serve"
		line "you again."
		done
endc
	waitbutton
	endtext

BattleFactory1FRulesScript:
	opentext
	writethistext
if DEF(_LOCALE_FR)
		text "Les règles de"
		line "l'Usine de Combat"
		cont "sont ici."
		para "Lire les règles?"
		done
else
		text "Battle Factory"
		line "rules are written"
		cont "here."

		para "Read the rules?"
		done
endc
	yesorno
	iffalse_endtext
	jumpthisopenedtext
if DEF(_LOCALE_FR)
		text "On te donne"
		line "six #mon"
		cont "de location."
		para "Trois #mon"
		line "peuvent"
		cont "combattre."
		para "Ils doivent"
		line "être différents."
		para "Leurs objets"
		line "doivent aussi"
		cont "être différents."
		para "Après un combat,"
		line "tu peux échanger"
		cont "un #mon avec"
		cont "l'adversaire."
		done
else
		text "You are given six"
		line "rental #mon."

		para "Three #mon may"
		line "enter battles."

		para "All three must be"
		line "different."

		para "The items they"
		line "hold must also be"
		cont "different."

		para "After winning a"
		line "battle, you may"
		cont "trade a #mon"
		cont "with the opponent."
		done
endc

BattleFactory1FStreakText:
if DEF(_LOCALE_FR)
	text "Série: "
	text_decimal wBattleFactoryCurStreak, 2, 5
	text " vic."
	line "Record: "
	text_decimal wBattleFactoryTopStreak, 2, 5
	text " vic."
	cont "Echanges: "
	text_decimal wBattleFactorySwapCount, 1, 2
	done
else
	text "Streak: "
	text_decimal wBattleFactoryCurStreak, 2, 5
	text " wins"
	line "Record: "
	text_decimal wBattleFactoryTopStreak, 2, 5
	text " wins"
	cont "Swaps this run: "
	text_decimal wBattleFactorySwapCount, 1, 2
	done
endc

BattleFactory1FReceptionistScript:
	opentext
	writethistext
if DEF(_LOCALE_FR)
		text "Bienvenue à"
		line "l'Usine de Combat!"
		para "Je peux te guider"
		line "vers l'Etage de"
		cont "Combat."
		done
else
		text "Battle Factory"
		line "welcomes you!"

		para "I can show you to"
		line "the Battle Floor."
		done
endc
	promptbutton
	checkevent EVENT_BATTLE_FACTORY_INTRO
	iftruefwd .BattleFactoryMenu

	; only ask once, so set the flag regardless
	setevent EVENT_BATTLE_FACTORY_INTRO
	writethistext
if DEF(_LOCALE_FR)
		text "Veux-tu en"
		line "savoir plus sur"
		cont "ce lieu?"
		done
else
		text "Would you like to"
		line "hear about this"
		cont "facility?"
		done
endc
	yesorno
	iffalsefwd .BattleFactoryMenu

.Explanation:
	writethistext
if DEF(_LOCALE_FR)
		text "A l'Usine de"
		line "Combat, tu"
		cont "combats avec"
		cont "des #mon"
		cont "de location."
		para "Bats 7 dresseurs"
		line "de suite pour"
		cont "des Points."
		para "Pour arrêter,"
		line "il faut"
		cont "SAUVER."
		para "Sinon, tu ne"
		line "pourras pas"
		cont "reprendre."
		prompt
else
		text "Battle Factory is"
		line "a facility where"
		cont "you battle using"
		cont "rental #mon."

		para "Countless #mon"
		line "trainers gather"

		para "from all over to"
		line "hold battles on"
		cont "the Battle Floor."

		para "Each challenge"
		line "has 7 trainers."

		para "Beat them all to"
		line "get Battle Points."

		para "To interrupt a"
		line "session, you must"

		para "save. If not, you"
		line "won't be able to"

		para "resume your Floor"
		line "challenge."
		prompt
endc
	; fallthrough
.BattleFactoryMenu:
	; Setscene here in case the player aborted a quicksave prompted by challenge
	setscene $1
	writethistext
if DEF(_LOCALE_FR)
		text "Aller à l'Etage"
		line "de Combat?"
		done
else
		text "Want to head onto"
		line "the Battle Floor?"
		done
endc
	loadmenu MenuDataHeader_BattleInfoCancel
	verticalmenu
	closewindow
	ifequalfwd $1, .Challenge
	ifequal $2, .Explanation
	writethistext
if DEF(_LOCALE_FR)
		text "A bientôt,"
		line "j'espère."
		prompt
else
		text "We hope to serve"
		line "you again."
		prompt
endc
	endtext

.Challenge:
	writethistext
if DEF(_LOCALE_FR)
		text "Avant d'entrer"
		line "à l'Etage de"
		cont "Combat,"
		para "la partie sera"
		line "SAUVEE."
		done
else
		text "Before entering"
		line "the Battle Floor,"

		para "your progress will"
		line "be saved."
		done
endc
	yesorno
	iffalse .BattleFactoryMenu
	; Done here to ensure it's saved in case the player resets later.
	; The scene script running after the player saves but before the
	; challenge starts is harmless since there's no challenge prepared.
	setscene 0
	special Special_TryQuickSave
	iffalse .BattleFactoryMenu

	; Set this early in case the player leaves before picking their team.
	; This prevents them from re-rolling without forfeiting a streak.
	setval BATTLETOWER_CHALLENGE_IN_PROGRESS
	special Special_BattleTower_SetChallengeState
	special Special_BattleTower_SetupRentalMode

	; Initializes opponent trainers
	special Special_BattleTower_BeginChallenge
	; fallthrough
Script_ReturnToRentalChallenge:
	; From this point onwards, resetting the game should count as a streak loss
	setscene 0
	setval BATTLETOWER_CHALLENGE_IN_PROGRESS
	special Special_BattleTower_SetChallengeState

	; Everything ready to go for challenge start
	writethistext
if DEF(_LOCALE_FR)
		text "Par ici pour"
		line "l'Etage de"
		cont "Combat."
		done
else
		text "Right this way to"
		line "the Battle Floor."
		done
endc
	waitbutton
	closetext

	follow BATTLEFACTORY1F_RECEPTIONIST, PLAYER
	applymovement BATTLEFACTORY1F_RECEPTIONIST, .WalkToHallway
	stopfollow
	special Special_BattleTower_MaxVolume
	warpsound
	disappear BATTLEFACTORY1F_RECEPTIONIST
	applyonemovement PLAYER, step_up
	warpcheck
	end

.WalkToHallway:
	step_up
	step_up
	step_up
	step_up
	step_end

PokemonJournalThortonScript:
	setflag ENGINE_READ_THORTON_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "Dossier spécial:"
	line "Chef d'Usine"
	cont "Cardus!"

	para "Cardus ne croit"
	line "qu'en ce qu'il"
	cont "peut prouver,"

	para "chiffres à"
	line "l'appui,"
	cont "avec ses"
	cont "inventions."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "Factory Head"
	cont "Thorton!"

	para "Thorton is said to"
	line "only believe in"

	para "what he can prove"
	line "numerically with"
	cont "his inventions."
	done
endc
