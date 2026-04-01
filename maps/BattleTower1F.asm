BattleTower1F_MapScriptHeader:
	def_scene_scripts
	scene_script BattleTower1FContinueChallenge

	def_callbacks

	def_warp_events
	warp_event 10, 15, BATTLE_TOWER_OUTSIDE, 3
	warp_event 11, 15, BATTLE_TOWER_OUTSIDE, 4
	warp_event 10,  0, BATTLE_TOWER_ELEVATOR, 1
	warp_event  0,  7, BATTLE_TOWER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 11,  7, BGEVENT_READ, BattleTower1FRulesScript
	bg_event  9,  7, BGEVENT_JUMPTEXT, BattleTower1FStreakText
	bg_event 21,  8, BGEVENT_READ, PokemonJournalPalmerScript

	def_object_events
	object_event 10,  7, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BattleTower1FReceptionistScript, -1
	pc_nurse_event  6,  8
	object_event 14,  8, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_BP, MART_BATTLETOWER_1, -1
	object_event 16,  8, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_BP, MART_BATTLETOWER_2, -1
	object_event 18,  8, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_BP, MART_BATTLETOWER_3, -1
	object_event  6, 14, SPRITE_BURGLAR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BattleTowerPharmacistScript, -1
	object_event 16, 13, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Text_BattleTowerCooltrainerF, -1
	object_event  2, 12, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Text_BattleTowerBugCatcher, -1
	object_event 20, 11, SPRITE_GRANNY, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Text_BattleTowerGranny, -1

	object_const_def
	const BATTLETOWER1F_RECEPTIONIST

BattleTower1FContinueChallenge:
; Triggers (usefully) if we're in an ongoing Battle Tower run.
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
	; We saved in-between rounds. Resume Battle Tower challenge.
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

	sdefer Script_ReturnToBattleTowerChallenge
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

		para "SAUVE avant de"
		line "quitter la Salle"

		para "de Combat."
		line "Désolé, mais"

		para "votre défi sera"
		line "invalide."
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
	sjumpfwd Script_CommitBattleTowerResult

.LostChallenge:
	opentext
	sdefer Script_CommitBattleTowerResult
	end

.WonChallenge:
	sdefer .WonChallenge2
	end

.WonChallenge2:
	opentext
	writethistext
if DEF(_LOCALE_FR)
		text "Félicitations!"

		para "Tous les dresseurs"
		line "ont été vaincus!"

		para "Et hop! Cadeau!"
		prompt
else
		text "Congratulations!"

		para "You've beaten all"
		line "the trainers!"

		para "For that, you get"
		line "this great prize!"
		prompt
endc
	verbosegiveitem ABILITYPATCH
	; fallthrough
Script_CommitBattleTowerResult:
	special Special_BattleTower_CommitChallengeResult
	iffalsefwd .WeHopeToServeYouAgain
	setevent EVENT_BEAT_PALMER
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

BattleTower1FRulesScript:
	opentext
	writethistext
if DEF(_LOCALE_FR)
		text "Règles de la"
		line "Tour de Combat."

		para "Lire les règles?"
		done
else
		text "Battle Tower rules"
		line "are written here."

		para "Read the rules?"
		done
endc
	yesorno
	iffalse_endtext
	jumpthisopenedtext
if DEF(_LOCALE_FR)
		text "Trois #mon"
		line "peuvent"
		cont "combattre."

		para "Ils doivent"
		line "être différents."

		para "Leurs objets"
		line "doivent aussi"
		cont "être différents."

		para "Oeufs et certains"
		line "#mon"
		cont "légendaires"
		cont "sont exclus."
		done
else
		text "Three #mon may"
		line "enter battles."

		para "All three must be"
		line "different."

		para "The items they"
		line "hold must also be"
		cont "different."

		para "Eggs or certain"
		line "Legendary #mon"
		cont "aren't eligible"
		cont "to battle."
		done
endc

BattleTower1FStreakText:
if DEF(_LOCALE_FR)
	text "Série: "
	text_decimal wBattleTowerCurStreak, 2, 5
	text " vic."
	line "Record: "
	text_decimal wBattleTowerTopStreak, 2, 5
	text " vic."
	done
else
	text "Streak: "
	text_decimal wBattleTowerCurStreak, 2, 5
	text " wins"
	line "Record: "
	text_decimal wBattleTowerTopStreak, 2, 5
	text " wins"
	done
endc

BattleTower1FReceptionistScript:
	opentext
	writethistext
if DEF(_LOCALE_FR)
		text "Bienvenue à la"
		line "Tour de Combat!"

		para "Je peux vous"
		line "faire accéder à"
		cont "une Salle de"
		cont "Combat."
		done
else
		text "Battle Tower"
		line "welcomes you!"

		para "I could show you"
		line "to a Battle Room."
		done
endc
	promptbutton
	checkevent EVENT_BATTLE_TOWER_INTRO
	iftruefwd .BattleTowerMenu

	; only ask once, so set the flag regardless
	setevent EVENT_BATTLE_TOWER_INTRO
	writethistext
if DEF(_LOCALE_FR)
		text "Voulez-vous tout"
		line "savoir sur la"
		cont "Tour de Combat?"
		done
else
		text "Would you like to"
		line "hear about the"
		cont "Battle Tower?"
		done
endc
	yesorno
	iffalsefwd .BattleTowerMenu

.Explanation:
	writethistext
if DEF(_LOCALE_FR)
		text "La Tour de Combat"
		line "est dédiée aux"
		cont "combats de #mon"

		para "Des dresseurs"
		line "du monde entier"

		para "s'affrontent dans"
		line "des Salles de"
		cont "Combat."

		para "Chaque Salle"
		line "contient"
		cont "sept dresseurs."

		para "Bats-les tous"
		line "pour gagner"
		cont "des Points."

		para "Pour arrêter,"
		line "il faut"
		cont "SAUVER."

		para "Sinon, tu ne"
		line "pourras pas"
		cont "reprendre."
		prompt
else
		text "Battle Tower is a"
		line "facility made for"
		cont "#mon battles."

		para "Countless #mon"
		line "trainers gather"

		para "from all over to"
		line "hold battles in"

		para "specially designed"
		line "Battle Rooms."

		para "There are many"
		line "Battle Rooms in"
		cont "the Battle Tower."

		para "Each Room holds"
		line "seven trainers."

		para "Beat them all to"
		line "get Battle Points."

		para "To interrupt a"
		line "session, you must"

		para "save. If not, you"
		line "won't be able to"

		para "resume your Room"
		line "challenge."
		prompt
endc
	; fallthrough
.BattleTowerMenu:
	; Setscene here in case the player aborted a quicksave prompted by challenge
	setscene 1
	writethistext
if DEF(_LOCALE_FR)
		text "Voulez-vous aller"
		line "dans une Salle"
		cont "de Combat?"
		done
else
		text "Want to go into a"
		line "Battle Room?"
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
		text "Choisis #mon"
		line "à engager."
		prompt
else
		text "Choose #mon"
		line "to enter."
		prompt
endc
	special Special_BattleTower_SelectParticipants
	iffalse .BattleTowerMenu
	writethistext
if DEF(_LOCALE_FR)
		text "Avant d'entrer"
		line "dans une Salle"

		para "de Combat, la"
		line "partie sera"
		cont "SAUVEE."
		done
else
		text "Before entering"
		line "the Battle Room,"

		para "your progress will"
		line "be saved."
		done
endc
	yesorno
	iffalse .BattleTowerMenu
	; Done here to ensure it's saved in case the player resets later.
	; The scene script running after the player saves but before the
	; challenge starts is harmless since there's no challenge prepared.
	setscene 0
	special Special_TryQuickSave
	iffalse .BattleTowerMenu

	; Initializes opponent trainers and stores player mon choices in SRAM
	special Special_BattleTower_BeginChallenge
	; fallthrough
Script_ReturnToBattleTowerChallenge:
	; From this point onwards, resetting the game should count as a streak loss
	setscene 0
	setval BATTLETOWER_CHALLENGE_IN_PROGRESS
	special Special_BattleTower_SetChallengeState

	; Everything ready to go for challenge start
	writethistext
if DEF(_LOCALE_FR)
		text "Par ici pour"
		line "votre Salle de"
		cont "Combat."
		done
else
		text "Right this way to"
		line "your Battle Room."
		done
endc
	waitbutton
	closetext

	musicfadeout MUSIC_NONE, 8
	follow BATTLETOWER1F_RECEPTIONIST, PLAYER
	applymovement BATTLETOWER1F_RECEPTIONIST, .WalkToElevator
	stopfollow
	special Special_BattleTower_MaxVolume
	warpsound
	disappear BATTLETOWER1F_RECEPTIONIST
	applyonemovement PLAYER, step_up
	warpcheck
	end

.WalkToElevator:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

MenuDataHeader_BattleInfoCancel:
	db MENU_BACKUP_TILES
	menu_coords 11, 4, 19, 11
	dw MenuData2_BattleInfoCancel
	db 1 ; default option

MenuData2_BattleInfoCancel:
	db $a0 ; flags
	db 3
	db "Battle@"
	db "Info@"
	db "Cancel@"

BattleTowerPharmacistScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_TRICK_INTRO
	iftruefwd BattleTowerTutorTrickScript
	writethistext
if DEF(_LOCALE_FR)
		text "Ici, les"
		line "dresseurs"
		cont "utilisent"

		para "bien les objets"
		line "tenus."

		para "Mais j'ai un"
		line "tour dans mon"
		cont "sac: un échange!"

		para "Je remplace"
		line "leurs objets"
		cont "avec Tourmagik!"
		done
else
		text "The trainers here"
		line "strategically use"
		cont "held items."

		para "But I've got a"
		line "trick up my"
		cont "sleeve--I'll swap"

		para "their items for"
		line "mine with Trick!"
		done
endc
	waitbutton
	setevent EVENT_LISTENED_TO_TRICK_INTRO
BattleTowerTutorTrickScript:
	writethistext
if DEF(_LOCALE_FR)
		text "J'apprends"
		line "Tourmagik"

		para "à ton #mon…"
		line "pour une Feuille"
		cont "Argent."
		done
else
		text "I'll teach your"
		line "#mon how to"

		para "use Trick…"
		line "for a Silver Leaf."
		done
endc
	waitbutton
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	writethistext
if DEF(_LOCALE_FR)
		text "Je l'apprends"
		line "à ton #mon:"
		cont "Tourmagik?"
		done
else
		text "Should I teach"
		line "your #mon"
		cont "Trick?"
		done
endc
	yesorno
	iffalsefwd .TutorRefused
	setval TRICK
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpthisopenedtext
if DEF(_LOCALE_FR)
		text "Reviens si tu"
		line "changes d'avis."
		done
else
		text "Talk to me if you"
		line "change your mind."
		done
endc

.NoSilverLeaf
	jumpthisopenedtext
if DEF(_LOCALE_FR)
		text "Tch. Tu n'as pas"
		line "de Feuille"
		cont "Argent…"
		done
else
		text "Tch. You don't"
		line "have a Silver"
		cont "Leaf…"
		done
endc

.TeachMove
	takeitem SILVER_LEAF
	jumpthisopenedtext
if DEF(_LOCALE_FR)
		text "Ton #mon peut"
		line "aussi faire"
		cont "Tourmagik!"

		para "Pas mal, hein?"
		done
else
		text "Now your #mon"
		line "can use Trick too!"
		cont "Isn't it devious?"
		done
endc

Text_BattleTowerCooltrainerF:
if DEF(_LOCALE_FR)
	text "Il y a plein de"
	line "Salles de Combat!"

	para "Mais je vais"
	line "tout gagner!"
	done
else
	text "There are lots of"
	line "Battle Rooms, but"

	para "I'm going to win"
	line "them all!"
	done
endc

Text_BattleTowerGranny:
if DEF(_LOCALE_FR)
	text "C'est dur de"
	line "ne pas pouvoir"

	para "utiliser d'objets"
	line "au combat."

	para "Fais tenir des"
	line "objets aux #mon"

	para "C'est la clé pour"
	line "gagner."
	done
else
	text "It's a grueling"
	line "task, not being"

	para "able to use items"
	line "in battle."

	para "Making your"
	line "#mon hold items"

	para "is the key to"
	line "winning battles."
	done
endc

Text_BattleTowerBugCatcher:
if DEF(_LOCALE_FR)
	text "J'essaie de voir"
	line "jusqu'où je vais"

	para "avec des #mon"
	line "Insecte seuls."

	para "Pas de #mon"
	line "Feu, surtout…"
	done
else
	text "I'm trying to see"
	line "how far I can go"

	para "using just bug"
	line "#mon."

	para "Don't let there be"
	line "any fire #mon…"
	done
endc

PokemonJournalPalmerScript:
	setflag ENGINE_READ_PALMER_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "Dossier spécial:"
	line "Tycoon Palmer!"

	para "Palmer aurait"
	line "un fils à Sinnoh."

	para "Il voudrait être"
	line "dresseur, comme"
	cont "son père."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "Tower Tycoon"
	cont "Palmer!"

	para "Palmer is reported"
	line "to have a son in"

	para "the Sinnoh region"
	line "who wants to be a"
	cont "trainer like him."
	done
endc
