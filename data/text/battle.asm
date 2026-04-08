BattleText::

LinkBattleErrorText::
if DEF(_LOCALE_FR)
	text "Erreur de lien."

	para "Redémarrage…"
	prompt
else
	text "There was a link"
	line "error."

	para "The game will now"
	line "be reset."
	prompt
endc

BattleText_PlayerPickedUpPayDayMoney:
	text "<PLAYER> picked up"
	line "¥"
	text_decimal wPayDayMoney, 3, 6
	text "!"
	prompt

WildPokemonAppearedText:
if DEF(_LOCALE_FR)
	text "Un #MON sauvage"
	stop_compressing_text ; fallthrough
else
	text "A wild "
	stop_compressing_text ; fallthrough
endc
LegendaryAppearedText:
	text_ram wEnemyMonNickname
if DEF(_LOCALE_FR)
	line "apparaît!"
else
	line "appeared!"
endc
	prompt

GhostAppearedText:
if DEF(_LOCALE_FR)
	text "Un SPECTRE"
	line "apparaît!"
	prompt
else
	text "A Ghost"
	line "appeared!"
	prompt
endc

SilphScopeRevealText:
if DEF(_LOCALE_FR)
	text "SCOPE SYLPHE"
	line "révèle"
	cont "le SPECTRE!"
	prompt
else
	text "SilphScope2"
	line "unveiled the"
	cont "Ghost's identity!"
	prompt
endc

HookedPokemonAttackedText:
if DEF(_LOCALE_FR)
	text "Le #MON"
	line "ferré"
	text_ram wEnemyMonNickname
	cont "attaque!"
	prompt
else
	text "The hooked"
	line ""
	text_ram wEnemyMonNickname
	cont "attacked!"
	prompt
endc

PokemonFellFromTreeText:
	text_ram wEnemyMonNickname
if DEF(_LOCALE_FR)
	text " tombe"
	line "de l'arbre!"
	prompt
else
	text " fell"
	line "out of the tree!"
	prompt
endc

WantsToBattleText::
if DEF(_LOCALE_FR)
	text "<ENEMY>"
	line "défie <PLAYER>!"
	prompt
else
	text "<ENEMY>"
	line "wants to battle!"
	prompt
endc

WantToBattleText::
if DEF(_LOCALE_FR)
	text "<ENEMY>"
	line "défie <PLAYER>!"
	prompt
else
	text "<ENEMY>"
	line "want to battle!"
	prompt
endc

BattleText_WildFled:
if DEF(_LOCALE_FR)
	text "#MON sauvage"
	stop_compressing_text ; fallthrough
else
	text "Wild "
	stop_compressing_text ; fallthrough
endc
BattleText_LegendaryFled:
	text_ram wEnemyMonNickname
if DEF(_LOCALE_FR)
	line "fuit!"
else
	line "fled!"
endc
	prompt

BattleText_EnemyFled:
if DEF(_LOCALE_FR)
	text "L'ennemi"
	line "fuit!"
	prompt
else
	text "The foe "
	text_ram wEnemyMonNickname
	line "fled!"
	prompt
endc

BattleText_EnemyCantEscape:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "ne peut fuir!"
	prompt
else
	text "<USER>"
	line "can't escape!"
	prompt
endc

if DEF(DEBUG)
DealtXDamageText:
	text "Dealt "
	text_decimal wCurDamage, 2, 5
	text " dmg"
	line "before roll."
	prompt
endc

HurtByPoisonText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "souffre du poison!"
	prompt
else
	text "<USER> is"
	line "hurt by poison!"
	prompt
endc

HurtByBurnText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "souffre de"
	cont "sa brûlure!"
	prompt
else
	text "<USER> is"
	line "hurt by its burn!"
	prompt
endc

LeechSeedSapsText:
if DEF(_LOCALE_FR)
	text "VAMPIGRAINE"
	line "draine <USER>!"
	prompt
else
	text "Leech Seed saps"
	line "<USER>!"
	prompt
endc

HurtByCurseText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "souffre de la"
	cont "malédiction!"
	prompt
else
	text "<USER> is"
	line "hurt by the curse!"
	prompt
endc

SandstormHitsText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "subit la"
	cont "tempête sable!"
	prompt
else
	text "<USER> is"
	line "buffeted by"
	cont "the sandstorm!"
	prompt
endc

HailHitsText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "subit"
	cont "la grêle!"
	prompt
else
	text "<USER> is"
	line "buffeted by"
	cont "the hail!"
	prompt
endc

PerishCountText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "Compte fatal: "
	text_decimal wTextDecimalByte, 1, 1
	text "!"
	prompt
else
	text "<USER>'s"
	line "Perish count is "
	text_decimal wTextDecimalByte, 1, 1
	text "!"
	prompt
endc

BattleText_UserLostSomeOfItsHP:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "perd des PV!"
	prompt
else
	text "<USER>"
	line "lost some of its"
	cont "HP!"
	prompt
endc

BattleText_PickedUpItem:
	; assumes player (enemy might overflow text-wise)
if DEF(_LOCALE_FR)
	text "<USER> prend"
	line ""
	text_ram wStringBuffer2
	text "."
	prompt
else
	text "<USER> picked"
	line "up "
	text_ram wStringBuffer2
	text "."
	prompt
endc

BattleText_UserRecoveredWithItem:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "soigné par"
	cont ""
	text_ram wStringBuffer1
	text "."
	prompt
else
	text "<USER>"
	line "recovered with"
	cont ""
	text_ram wStringBuffer1
	text "."
	prompt
endc

BattleText_UserAteItem:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "mange"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<USER>"
	line "ate "
	text_ram wStringBuffer1
	text "!"
	prompt
endc

BattleText_UserHurtByItem:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "subit"
	cont ""
	text_ram wStringBuffer1
	text "."
	prompt
else
	text "<USER>"
	line "was hurt by"
	cont ""
	text_ram wStringBuffer1
	text "."
	prompt
endc

BattleText_UserItemLetItMoveFirst::
if DEF(_LOCALE_FR)
	text "<USER>"
	line ""
	text_ram wStringBuffer1
	cont "agit 1er!"
	prompt
else
	text "<USER>'s"
	line ""
	text_ram wStringBuffer1
	text " let"
	cont "it move first."
	prompt
endc

BattleText_UserRecoveredPPUsing:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "PP de"
	cont ""
	text_ram wStringBuffer2
	cont "avec"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<USER>"
	line "restored PP of"
	cont ""
	text_ram wStringBuffer2
	text " using"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
endc

BrokeLightScreenText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "brise"
	cont "Mur Lumière!"
	prompt
else
	text "<USER>"
	line "broke the target's"
	cont "Light Screen!"
	prompt
endc

BrokeReflectText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "brise"
	cont "Protection!"
	prompt
else
	text "<USER>"
	line "broke the target's"
	cont "Reflect!"
	prompt
endc

BattleText_ItemLowered:
if DEF(_LOCALE_FR)
	text "Le "
	text_ram wStringBuffer1
	line "baisse"
	cont "<USER>"
	cont ""
	text_ram wStringBuffer2
	text "!"
	prompt
else
	text "The "
	text_ram wStringBuffer1
	line "lowered"
	cont "<USER>'s"
	cont ""
	text_ram wStringBuffer2
	text "!"
	prompt
endc

BattleText_ItemHarshlyLowered:
if DEF(_LOCALE_FR)
	text "Le "
	text_ram wStringBuffer1
	line "baisse fort"
	cont "<USER>"
	cont ""
	text_ram wStringBuffer2
	text "!"
	prompt
else
	text "The "
	text_ram wStringBuffer1
	line "sharply lowered"
	cont "<USER>'s"
	cont ""
	text_ram wStringBuffer2
	text "!"
	prompt
endc

BattleText_ItemSeverelyLowered:
if DEF(_LOCALE_FR)
	text "Le "
	text_ram wStringBuffer1
	line "baisse énorme"
	cont "<USER>"
	cont ""
	text_ram wStringBuffer2
	text "!"
	prompt
else
	text "The "
	text_ram wStringBuffer1
	line "severely lowered"
	cont "<USER>'s"
	cont ""
	text_ram wStringBuffer2
	text "!"
	prompt
endc

BattleText_ItemRaised:
if DEF(_LOCALE_FR)
	text "Le "
	text_ram wStringBuffer1
	line "monte"
	cont "<USER>"
	cont ""
	text_ram wStringBuffer2
	text "!"
	prompt
else
	text "The "
	text_ram wStringBuffer1
	line "raised"
	cont "<USER>'s"
	cont ""
	text_ram wStringBuffer2
	text "!"
	prompt
endc

BattleText_ItemSharplyRaised:
if DEF(_LOCALE_FR)
	text "Le "
	text_ram wStringBuffer1
	line "monte fort"
	cont "<USER>"
	cont ""
	text_ram wStringBuffer2
	text "!"
	prompt
else
	text "The "
	text_ram wStringBuffer1
	line "sharply raised"
	cont "<USER>'s"
	cont ""
	text_ram wStringBuffer2
	text "!"
	prompt
endc

BattleText_ItemDrasticallyRaised:
if DEF(_LOCALE_FR)
	text "Le "
	text_ram wStringBuffer1
	line "monte énorme"
	cont "<USER>"
	cont ""
	text_ram wStringBuffer2
	text "!"
	prompt
else
	text "The "
	text_ram wStringBuffer1
	line "drastically raised"
	cont "<USER>'s"
	cont ""
	text_ram wStringBuffer2
	text "!"
	prompt
endc

BattleText_ItemRaisedCrit:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "utilise"
	cont ""
	text_ram wStringBuffer1
	cont "à fond!"
	prompt
else
	text "<USER>"
	line "used "
	text_ram wStringBuffer1
	cont "to get pumped!"
	prompt
endc

BattleText_UserChargedWithItem:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "se charge"
	cont "avec"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<USER>"
	line "became charged"
	cont "using "
	text_ram wStringBuffer1
	text "!"
	prompt
endc

BattleText_UsersFutureSightMissed:
; used when Future Sight can't hit anything because there was
; no target (so <TARGET> is undefined)
if DEF(_LOCALE_FR)
	text "PRESCIENCE"
	line "frappe!"

	para "Mais ça rate!"
	prompt
else
	text "The Future Sight"
	line "arrived!"

	para "But it failed!"
	prompt
endc

BattleText_TargetWasHitByFutureSight:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "subit"
	cont "PRESCIENCE!"
	prompt
else
	text "<TARGET>"
	line "took the"
	cont "Future Sight!"
	prompt
endc

BattleText_MistFaded:
if DEF(_LOCALE_FR)
	text_ram wStringBuffer1
	text " #MON:"
	line "brume finie!"
	prompt
else
	text_ram wStringBuffer1
	text " #mon's"
	line "mist faded!"
	prompt
endc

BattleText_SafeguardFaded:
if DEF(_LOCALE_FR)
	text_ram wStringBuffer1
	text " #MON:"
	line "Rune Prot finie!"
	prompt
else
	text_ram wStringBuffer1
	text " #mon's"
	line "Safeguard faded!"
	prompt
endc

BattleText_LightScreenFell:
if DEF(_LOCALE_FR)
	text_ram wStringBuffer1
	text " #MON:"
	line "Mur Lumière fini!"
	prompt
else
	text_ram wStringBuffer1
	text " #mon's"
	line "Light Screen fell!"
	prompt
endc

BattleText_ReflectFaded:
if DEF(_LOCALE_FR)
	text_ram wStringBuffer1
	text " #MON:"
	line "Protection finie!"
	prompt
else
	text_ram wStringBuffer1
	text " #mon's"
	line "Reflect faded!"
	prompt
endc

BattleText_TheRainStopped:
if DEF(_LOCALE_FR)
	text "Pluie"
	line "arrêtée."
	prompt
else
	text "The rain stopped."
	prompt
endc

BattleText_TheSunlightFaded:
if DEF(_LOCALE_FR)
	text "Le soleil"
	line "faiblit."
	prompt
else
	text "The sunlight"
	line "faded."
	prompt
endc

BattleText_TheSandstormSubsided:
if DEF(_LOCALE_FR)
	text "Tempête de"
	line "sable finie!"
	prompt
else
	text "The sandstorm"
	line "subsided."
	prompt
endc

BattleText_TheHailStopped:
if DEF(_LOCALE_FR)
	text "Grêle"
	line "arrêtée."
	prompt
else
	text "The hail stopped."
	prompt
endc

BattleText_EnemyPkmnFainted:
if DEF(_LOCALE_FR)
	text "L'ennemi"
	text_ram wEnemyMonNickname
	line "est K.O.!"
	prompt
else
	text "The foe "
	text_ram wEnemyMonNickname
	line "fainted!"
	prompt
endc

GotMoneyForWinningText:
if DEF(_LOCALE_FR)
	text "<PLAYER> gagne ¥"
	text_decimal wBattleReward, 3, 6
	line "!"
	prompt
else
	text "<PLAYER> got ¥"
	text_decimal wBattleReward, 3, 6
	line "for winning!"
	prompt
endc

BattleText_EnemyWasDefeated:
if DEF(_LOCALE_FR)
	text "<ENEMY>"
	line "est battu!"
	prompt
else
	text "<ENEMY>"
	line "was defeated!"
	prompt
endc

BattleText_EnemyWereDefeated:
if DEF(_LOCALE_FR)
	text "<ENEMY>"
	line "sont battus!"
	prompt
else
	text "<ENEMY>"
	line "were defeated!"
	prompt
endc

TiedAgainstText:
if DEF(_LOCALE_FR)
	text "Egalité"
	line "avec <ENEMY>!"
	prompt
else
	text "Tied against"
	line "<ENEMY>!"
	prompt
endc

SentSomeToMomText:
if DEF(_LOCALE_FR)
	text "<PLAYER> gagne ¥"
	text_decimal wBattleReward, 3, 6
	line "!"
	cont "A Maman!"
	prompt
else
	text "<PLAYER> got ¥"
	text_decimal wBattleReward, 3, 6
	line "for winning!"
	cont "Sent some to Mom!"
	prompt
endc

SentHalfToMomText:
if DEF(_LOCALE_FR)
	text "1/2 à Maman!"
	prompt
else
	text "Sent half to Mom!"
	prompt
endc

SentAllToMomText:
if DEF(_LOCALE_FR)
	text "Tout à Maman!"
	prompt
else
	text "Sent all to Mom!"
	prompt
endc

BattleText_PkmnFainted:
	text_ram wBattleMonNickname
if DEF(_LOCALE_FR)
	line "est K.O.!"
	prompt
else
	line "fainted!"
	prompt
endc

BattleText_UseNextMon:
if DEF(_LOCALE_FR)
	text "Changer de #MON?"
	done
else
	text "Use next #mon?"
	done
endc

LostAgainstText:
if DEF(_LOCALE_FR)
	text "Perdu contre"
	line "<ENEMY>!"
	prompt
else
	text "Lost against"
	line "<ENEMY>!"
	prompt
endc

BattleText_EnemyIsAboutToUseWillPlayerSwitchPkmn:
	text "<ENEMY>"
	line "is about to use"
	cont ""
	text_ram wEnemyMonNickname
	text "."

	para "Will you switch"
	line "your #mon?"
	done

BattleText_EnemyAreAboutToUseWillPlayerSwitchPkmn:
	text "<ENEMY>"
	line "are about to use"
	cont ""
	text_ram wEnemyMonNickname
	text "."

	para "Will you switch"
	line "your #mon?"
	done

BattleText_EnemyIsAboutToSwitchWillPlayerSwitchPkmn:
	text "<ENEMY>"
	line "is about to switch"
	cont "#mon."

	para "Will you switch"
	line "your #mon?"
	done

BattleText_EnemyAreAboutToSwitchWillPlayerSwitchPkmn:
	text "<ENEMY>"
	line "are about to"
	cont "switch #mon."

	para "Will you switch"
	line "your #mon?"
	done

BattleText_EnemySentOut:
if DEF(_LOCALE_FR)
	text "<ENEMY>"
	line "envoie"
	cont ""
	text_ram wEnemyMonNickname
	text "!"
	done
else
	text "<ENEMY>"
	line "sent out"
	cont ""
	text_ram wEnemyMonNickname
	text "!"
	done
endc

BattleText_TheresNoWillToBattle:
if DEF(_LOCALE_FR)
	text "Aucune envie"
	line "de combattre!"
	prompt
else
	text "There's no will to"
	line "battle!"
	prompt
endc

BattleText_AnEGGCantBattle:
if DEF(_LOCALE_FR)
	text "Un OEUF"
	line "ne combat pas!"
	prompt
else
	text "An Egg can't"
	line "battle!"
	prompt
endc

BattleText_CantEscape:
if DEF(_LOCALE_FR)
	text "Fuite impossible!"
	prompt
else
	text "Can't escape!"
	prompt
endc

BattleText_AskForfeitTrainerBattle:
if DEF(_LOCALE_FR)
	text "Abandonner"
	line "le combat?"
	done
else
	text "Are you sure you"
	line "want to forfeit?"
	done
endc

BattleText_GotAwaySafely:
if DEF(_LOCALE_FR)
	text "Fuite réussie!"
	prompt
else
	text "Got away safely!"
	prompt
endc

BattleText_UserFledUsingAStringBuffer1:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "fuit avec"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<USER>"
	line "fled using a"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
endc

BattleText_UserHurtBySpikes:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "subit Picots!"
	prompt
else
	text "<USER> is"
	line "hurt by spikes!"
	prompt
endc

RecoveredUsingText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "soigné avec"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<USER>"
	line "recovered using a"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
endc

AirBalloonPoppedText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "Balle Air"
	cont "éclate!"
	prompt
else
	text "<TARGET>'s"
	line "Air Balloon"
	cont "popped!"
	prompt
endc

BattleText_UsersStringBuffer1Activated:
if DEF(_LOCALE_FR)
	text "<USER>"
	line ""
	text_ram wStringBuffer1
	cont "s'active!"
	prompt
else
	text "<USER>'s"
	line ""
	text_ram wStringBuffer1
	cont "activated!"
	prompt
endc

BattleText_ItemsCantBeUsedHere:
if DEF(_LOCALE_FR)
	text "Objets"
	line "interdits ici."
	prompt
else
	text "Items can't be"
	line "used here."
	prompt
endc

BattleText_PkmnIsAlreadyOut:
if DEF(_LOCALE_FR)
	text_ram wBattleMonNickname
	line "est déjà là."
	prompt
else
	text_ram wBattleMonNickname
	line "is already out."
	prompt
endc

BattleText_PkmnCantBeRecalled:
if DEF(_LOCALE_FR)
	text_ram wBattleMonNickname
	line "rappel interdit!"
	prompt
else
	text_ram wBattleMonNickname
	line "can't be recalled!"
	prompt
endc

BattleText_PkmnCantBeRecalledAbility:
if DEF(_LOCALE_FR)
	text_ram wEnemyMonNickname
	text ":"
	line ""
	text_ram wStringBuffer1
	cont "bloque la fuite!"
	prompt
else
	text_ram wEnemyMonNickname
	text "'s"
	line ""
	text_ram wStringBuffer1
	cont "prevents escape!"
	prompt
endc

BattleText_TheresNoPPLeftForThisMove:
if DEF(_LOCALE_FR)
	text "Plus de PP"
	line "pour ça!"
	prompt
else
	text "There's no PP left"
	line "for this move!"
	prompt
endc

BattleText_ItemOnlyAllowsMove: ; choice items
if DEF(_LOCALE_FR)
	text "Le "
	text_ram wStringBuffer1
	line "force à"
	cont ""
	text_ram wStringBuffer2
	text "!"
	prompt
else
	text "The "
	text_ram wStringBuffer1
	line "only allows use"
	cont "of "
	text_ram wStringBuffer2
	text "!"
	prompt
endc

BattleText_MonCanOnlyUseMove:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "peut que"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<USER> can"
	line "only use"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
endc

BattleText_ItemPreventsStatusMoves: ; assault vest
if DEF(_LOCALE_FR)
	text "Le "
	text_ram wStringBuffer1
	line "bloque"
	cont "les statuts!"
	prompt
else
	text "The "
	text_ram wStringBuffer1
	line "prevents usage"
	cont "of status moves!"
	prompt
endc

BattleText_TheMoveIsDisabled:
if DEF(_LOCALE_FR)
	text "Attaque"
	line "bloquée!"
	prompt
else
	text "The move is"
	line "disabled!"
	prompt
endc

BattleText_PkmnHasNoMovesLeft:
if DEF(_LOCALE_FR)
	text_ram wBattleMonNickname
	line "n'a plus"
	cont "d'attaques!"
	done
else
	text_ram wBattleMonNickname
	line "has no moves left!"
	done
endc

BattleText_UserEncoreEnded:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "Encore fini!"
	prompt
else
	text "<USER>'s"
	line "encore ended!"
	prompt
endc

BattleText_StringBuffer1GrewToLevel:
	text_ram wStringBuffer1
	text " grew to"
	line "level "
	text_decimal wCurPartyLevel, 1, 3
	text "!"
	text_sound SFX_DEX_FANFARE_50_79
	text_end

BattleText_WildPkmnIsEating:
if DEF(_LOCALE_FR)
	text "#MON sauvage"
	text_ram wEnemyMonNickname
	line "mange!"
	prompt
else
	text "Wild "
	text_ram wEnemyMonNickname
	line "is eating!"
	prompt
endc

BattleText_WildPkmnIsAngry:
if DEF(_LOCALE_FR)
	text "#MON sauvage"
	text_ram wEnemyMonNickname
	line "est en colère!"
	prompt
else
	text "Wild "
	text_ram wEnemyMonNickname
	line "is angry!"
	prompt
endc

BattleText_ThrewRock:
if DEF(_LOCALE_FR)
	text "<PLAYER> lance"
	line "un caillou."
	prompt
else
	text "<PLAYER> threw a"
	line "rock."
	prompt
endc

BattleText_ThrewBait:
if DEF(_LOCALE_FR)
	text "<PLAYER> lance"
	line "un appât."
	prompt
else
	text "<PLAYER> threw"
	line "some bait."
	prompt
endc

FastAsleepText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "dort à poings"
	cont "fermés!"
	prompt
else
	text "<USER>"
	line "is fast asleep!"
	prompt
endc

WokeUpText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "se réveille!"
	prompt
else
	text "<USER>"
	line "woke up!"
	prompt
endc

WasFrozenText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "est gelé!"
	prompt
else
	text "<TARGET>"
	line "was frozen solid!"
	prompt
endc

FrozenSolidText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "est gelé!"
	prompt
else
	text "<USER>"
	line "is frozen solid!"
	prompt
endc

FlinchedText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "a eu peur!"
	prompt
else
	text "<USER>"
	line "flinched!"
	prompt
endc

MustRechargeText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "doit recharger!"
	prompt
else
	text "<USER>"
	line "must recharge!"
	prompt
endc

DisabledNoMoreText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "n'est plus bloqué!"
	prompt
else
	text "<USER> is"
	line "disabled no more!"
	prompt
endc

IsConfusedText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "est confus!"
	prompt
else
	text "<USER>"
	line "is confused!"
	prompt
endc

HurtItselfText:
if DEF(_LOCALE_FR)
	text "Il se blesse"
	line "tout seul!"
	prompt
else
	text "It hurt itself in"
	line "its confusion!"
	prompt
endc

ConfusedNoMoreText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "n'est plus confus!"
	prompt
else
	text "<USER> is"
	line "confused no more!"
	prompt
endc

BecameConfusedText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "devient confus!"
	prompt
else
	text "<TARGET>"
	line "became confused!"
	prompt
endc

BecameConfusedDueToFatigueText:
	text "<TARGET>"
	line "became confused"
	cont "due to fatigue!"
	prompt

AlreadyConfusedText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "est déjà confus!"
	prompt
else
	text "<TARGET> is"
	line "already confused!"
	prompt
endc

BattleText_UsersHurtByStringBuffer1:
	text "<USER> is"
	line "hurt by"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt

BattleText_UserWasReleasedFromStringBuffer1:
	text "<USER>"
	line "was released from"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt

WhirlpoolTrapText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "est piégé!"
	prompt
else
	text "<TARGET>"
	line "was trapped!"
	prompt
endc

FireSpinTrapText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "est piégé!"
	prompt
else
	text "<TARGET>"
	line "was trapped!"
	prompt
endc

WrappedByText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "ligoté par"
	cont "<USER>!"
	prompt
else
	text "<TARGET>"
	line "was wrapped by"
	cont "<USER>!"
	prompt
endc

HungOnText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "tient avec"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<TARGET>"
	line "hung on with"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
endc

EnduredText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "tient le choc!"
	prompt
else
	text "<TARGET>"
	line "endured the hit!"
	prompt
endc

InLoveWithText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "amoureux de"
	cont "<TARGET>!"
	prompt
else
	text "<USER>"
	line "is in love with"
	cont "<TARGET>!"
	prompt
endc

InfatuationText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "est amoureux!"
	prompt
else
	text "<USER>'s"
	line "infatuation kept"
	cont "it from attacking!"
	prompt
endc

NoLongerInfatuatedText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "n'est plus"
	cont "amoureux!"
	prompt
else
	text "<USER>'s"
	line "no longer"
	cont "infatuated!"
	prompt
endc

ObliviousPreventedDestinyKnot:
	text "<USER>'s"
	line ""
	text_ram wStringBuffer1
	cont "prevents"
	cont ""
	text_ram wStringBuffer2
	cont "infatuating it!"
	prompt

DestinyKnotInfatuatedUser:
	text "<TARGET>'s"
	line ""
	text_ram wStringBuffer1
	cont "infatuated"

	para "<USER>!"
	prompt

DisabledMoveText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line ""
	text_ram wStringBuffer1
	cont "bloqué!"
	prompt
else
	text "<USER>'s"
	line ""
	text_ram wStringBuffer1
	text " is"
	cont "disabled!"
	prompt
endc

UsedMoveText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "utilise"
	cont ""
	text_ram wStringBuffer2
	text "!"
	done
else
	text "<USER>"
	line "used "
	text_ram wStringBuffer2
	text "!"
	done
endc

UsedMoveInsteadText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "utilise"
	cont ""
	text_ram wStringBuffer2
	cont "à la place!"
	done
else
	text "<USER>"
	line "used "
	text_ram wStringBuffer2
	cont "instead!"
	done
endc

LoafingAroundText:
	text_ram wBattleMonNickname
	text " is"
	line "loafing around."
	prompt

BeganToNapText:
	text_ram wBattleMonNickname
	text " began"
	line "to nap!"
	prompt

WontObeyText:
	text_ram wBattleMonNickname
	text " won't"
	line "obey!"
	prompt

TurnedAwayText:
	text_ram wBattleMonNickname
	text " turned"
	line "away!"
	prompt

IgnoredOrdersText:
	text_ram wBattleMonNickname
	text " ignored"
	line "orders!"
	prompt

IgnoredSleepingText:
	text_ram wBattleMonNickname
	text " ignored"
	line "orders…sleeping!"
	prompt

NoPPLeftText:
if DEF(_LOCALE_FR)
	text "Plus de PP!"
	line "pour l'attaque!"
	prompt
else
	text "But no PP is left"
	line "for the move!"
	prompt
endc

HasNoPPLeftText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "plus de PP pour"
	cont ""
	text_ram wStringBuffer2
	text "!"
	prompt
else
	text "<USER>"
	line "has no PP left for"
	cont ""
	text_ram wStringBuffer2
	text "!"
	prompt
endc

WentToSleepText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "s'endort!"
	done
else
	text "<USER>"
	line "went to sleep!"
	done
endc

RestedText:
	text "<USER>"
	line "fell asleep and"
	cont "became healthy!"
	done

RegainedHealthText:
	text "<USER>"
	line "regained health!"
	prompt

IsHurtText:
	text "<USER>"
	line "is hurt!"
	prompt

AttackMissedText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "a raté!"
	prompt
else
	text "<USER>'s"
	line "attack missed!"
	prompt
endc

CrashedText:
	text "<USER>"
	line "kept going and"
	cont "crashed!"
	prompt

UnaffectedText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "sans effet!"
	prompt
else
	text "<TARGET> is"
	line "unaffected!"
	prompt
endc

DoesntAffectText:
if DEF(_LOCALE_FR)
	text "Sans effet"
	line "sur <TARGET>!"
	prompt
else
	text "It doesn't affect"
	line "<TARGET>!"
	prompt
endc

CriticalHitText:
if DEF(_LOCALE_FR)
	text "Coup critique!"
	prompt
else
	text "A critical hit!"
	prompt
endc

ExtremelyEffectiveText:
if DEF(_LOCALE_FR)
	text "Super efficace!"
	prompt
else
	text "It's extremely"
	line "effective!"
	prompt
endc

SuperEffectiveText:
if DEF(_LOCALE_FR)
	text "C'est efficace!"
	prompt
else
	text "It's super"
	line "effective!"
	prompt
endc

NotVeryEffectiveText:
if DEF(_LOCALE_FR)
	text "Pas très efficace…"
	prompt
else
	text "It's not very"
	line "effective…"
	prompt
endc

MostlyIneffectiveText:
	text "It's mostly"
	line "ineffective…"
	prompt

TookDownWithItText:
	text "<TARGET>'s"
	line "bond took"

	para "<USER>"
	line "down with it!"
	prompt

RageBuildingText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "se met en rage!"
	prompt
else
	text "<USER>'s"
	line "rage is building!"
	prompt
endc

GotAnEncoreText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "subit ENCORE!"
	prompt
else
	text "<TARGET>"
	line "got an encore!"
	prompt
endc

SharedPainText:
if DEF(_LOCALE_FR)
	text "Douleur"
	line "partagée!"
	prompt
else
	text "The battlers"
	line "shared pain!"
	prompt
endc

SwappedAbilitiesText:
if DEF(_LOCALE_FR)
	text "Échange de"
	line "talents!"
	prompt
else
	text "The battlers"
	line "swapped abilities!"
	prompt
endc

SwappedItemsText:
if DEF(_LOCALE_FR)
	text "Échange"
	line "d'objets!"
	prompt
else
	text "The battlers"
	line "swapped items!"
	prompt
endc

ChangeIntoTypeText:
if DEF(_LOCALE_FR)
	text "Quel type"
	line "d'attaque?"
	prompt
else
	text "Change into what"
	line "move's type?"
	prompt
endc

InvalidTypeChangeText:
if DEF(_LOCALE_FR)
	text "Ce type est"
	line "interdit!"
	prompt
else
	text "You can't choose"
	line "that move's type!"
	prompt
endc

SketchedText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "copie"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<USER>"
	line "sketched"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
endc

DestinyBondEffectText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "veut tout"
	cont "emporter!"
	prompt
else
	text "<USER> is"
	line "trying to take its"
	cont "opponent with it!"
	prompt
endc

BellChimedText:
if DEF(_LOCALE_FR)
	text "Une cloche"
	line "sonne!"
	prompt
else
	text "A bell chimed!"
	line ""
	prompt
endc

FellAsleepText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "s'endort!"
	prompt
else
	text "<TARGET>"
	line "fell asleep!"
	prompt
endc

AlreadyAsleepText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "dort déjà!"
	prompt
else
	text "<TARGET> is"
	line "already asleep!"
	prompt
endc

WasPoisonedText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "est empoisonné!"
	prompt
else
	text "<TARGET>"
	line "was poisoned!"
	prompt
endc

BadlyPoisonedText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "grav. empoisonné!"
	prompt
else
	text "<TARGET> is"
	line "badly poisoned!"
	prompt
endc

AlreadyPoisonedText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "déjà empoisonné!"
	prompt
else
	text "<TARGET> is"
	line "already poisoned!"
	prompt
endc

SuckedHealthText:
	text "Sucked health from"
	line "<TARGET>!"
	prompt

DreamEatenText:
	text "<TARGET>'s"
	line "dream was eaten!"
	prompt

WasBurnedText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "est brûlé!"
	prompt
else
	text "<TARGET>"
	line "was burned!"
	prompt
endc

AlreadyBurnedText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "déjà brûlé!"
	prompt
else
	text "<TARGET> is"
	line "already burned!"
	prompt
endc

WontRiseAnymoreText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line ""
	text_ram wStringBuffer2
	cont "au max!"
	prompt
else
	text "<USER>'s"
	line ""
	text_ram wStringBuffer2
	text " won't go"
	cont "any higher!"
	prompt
endc

WontDropAnymoreText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line ""
	text_ram wStringBuffer2
	cont "au min!"
	prompt
else
	text "<USER>'s"
	line ""
	text_ram wStringBuffer2
	text " won't go"
	cont "any lower!"
	prompt
endc

StatRoseText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line ""
	text_ram wStringBuffer2
	cont "monte!"
	prompt
else
	text "<USER>'s"
	line ""
	text_ram wStringBuffer2
	text " rose!"
	prompt
endc

StatRoseSharplyText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line ""
	text_ram wStringBuffer2
	cont "monte fort!"
	prompt
else
	text "<USER>'s"
	line ""
	text_ram wStringBuffer2
	text " rose"
	cont "sharply!"
	prompt
endc

StatRoseDrasticallyText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line ""
	text_ram wStringBuffer2
	cont "monte énorme!"
	prompt
else
	text "<USER>'s"
	line ""
	text_ram wStringBuffer2
	text " rose"
	cont "drastically!"
	prompt
endc

StatFellText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line ""
	text_ram wStringBuffer2
	cont "baisse!"
	prompt
else
	text "<USER>'s"
	line ""
	text_ram wStringBuffer2
	text " fell!"
	prompt
endc

StatHarshlyFellText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line ""
	text_ram wStringBuffer2
	cont "baisse fort!"
	prompt
else
	text "<USER>'s"
	line ""
	text_ram wStringBuffer2
	text " harshly"
	cont "fell!"
	prompt
endc

StatSeverelyFellText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line ""
	text_ram wStringBuffer2
	cont "baisse énorme!"
	prompt
else
	text "<USER>'s"
	line ""
	text_ram wStringBuffer2
	text " severely"
	cont "fell!"
	prompt
endc

FledFromBattleText::
if DEF(_LOCALE_FR)
	text "<USER>"
	line "s'enfuit!"
	prompt
else
	text "<USER>"
	line "fled from battle!"
	prompt
endc

FledInFearText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "fuit la peur!"
	prompt
else
	text "<TARGET>"
	line "fled in fear!"
	prompt
endc

HitNTimesText:
if DEF(_LOCALE_FR)
	text "Touché "
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " fois!"
	prompt
else
	text "Hit "
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " time"
	text_plural
	text "!"
	prompt
endc

MistText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "sous la brume!"
	prompt
else
	text "<USER>'s"
	line "shrouded in mist!"
	prompt
endc

ProtectedByItemText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "protégé par"
	cont ""
	text_ram wStringBuffer1
	text "."
	prompt
else
	text "<TARGET> is"
	line "protected by"
	cont ""
	text_ram wStringBuffer1
	text "."
	prompt
endc

ProtectedByMistText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "protégé: brume!"
	prompt
else
	text "<TARGET> is"
	line "protected by mist."
	prompt
endc

GettingPumpedText:
	text_pause
if DEF(_LOCALE_FR)
	text "<USER>"
	line "charge!"
	prompt
else
	text "<USER> is"
	line "getting pumped!"
	prompt
endc

RecoilText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "contrecoup!"
	prompt
else
	text "<USER> is"
	line "hit with recoil!"
	prompt
endc

MadeSubstituteText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "fait un clone!"
	prompt
else
	text "<USER>"
	line "made a substitute!"
	prompt
endc

HasSubstituteText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "a un clone!"
	prompt
else
	text "<USER>"
	line "has a substitute!"
	prompt
endc

TooWeakSubText:
if DEF(_LOCALE_FR)
	text "Trop faible pour"
	line "un clone!"
	prompt
else
	text "Too weak to make"
	line "a substitute!"
	prompt
endc

SubTookDamageText:
if DEF(_LOCALE_FR)
	text "Le clone encaisse"
	line "pour <TARGET>!"
	prompt
else
	text "The substitute"
	line "took damage for"
	cont "<TARGET>!"
	prompt
endc

SubFadedText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "perd son clone!"
	prompt
else
	text "<TARGET>'s"
	line "substitute faded!"
	prompt
endc

WasSeededText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "est grainé!"
	prompt
else
	text "<TARGET>"
	line "was seeded!"
	prompt
endc

EvadedText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "esquive!"
	prompt
else
	text "<TARGET>"
	line "evaded the attack!"
	prompt
endc

WasDisabledText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line ""
	text_ram wStringBuffer2
	cont "bloqué!"
	prompt
else
	text "<TARGET>'s"
	line ""
	text_ram wStringBuffer2
	text " was"
	cont "disabled!"
	prompt
endc

CoinsScatteredText:
if DEF(_LOCALE_FR)
	text "Des pièces"
	line "partout!"
	prompt
else
	text "Coins scattered"
	line "everywhere!"
	prompt
endc

TransformedTypeText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "devient type"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<USER>"
	line "became the"
	cont ""
	text_ram wStringBuffer1
	text "-type!"
	prompt
endc

EliminatedStatsText:
if DEF(_LOCALE_FR)
	text "Stats"
	line "effacées!"
	prompt
else
	text "All stat changes"
	line "were eliminated!"
	prompt
endc

TransformedText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "devient"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<USER>"
	line "transformed into"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
endc

TrickRoomText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "déforme"
	cont "l'espace!"
	prompt
else
	text "<USER>"
	line "twisted the"
	cont "dimensions!"
	prompt
endc

TrickRoomEndedText:
if DEF(_LOCALE_FR)
	text "L'espace"
	line "redevient"
	cont "normal!"
	prompt
else
	text "The twisted"
	line "dimensions"

	para "returned to"
	line "normal!"
	prompt
endc

LightScreenEffectText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "Déf.Spé."
	cont "monte!"
	prompt
else
	text "<USER>'s"
	line "Sp.Def rose!"
	prompt
endc

ReflectEffectText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "Défense"
	cont "monte!"
	prompt
else
	text "<USER>'s"
	line "Defense rose!"
	prompt
endc

NothingHappenedText:
if DEF(_LOCALE_FR)
	text "Rien ne se"
	line "passe."
	prompt
else
	text "But nothing"
	line "happened."
	prompt
endc

ButItFailedText:
if DEF(_LOCALE_FR)
	text "Mais ça rate!"
	prompt
else
	text "But it failed!"
	prompt
endc

DidntAffectText:
if DEF(_LOCALE_FR)
	text "Sans effet"
	line "sur <TARGET>!"
	prompt
else
	text "It didn't affect"
	line "<TARGET>!"
	prompt
endc

HPIsFullText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "a tous ses PV!"
	prompt
else
	text "<USER>'s"
	line "HP is full!"
	prompt
endc

DraggedOutText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "est rappelé!"
	prompt
else
	text "<USER>"
	line "was dragged out!"
	prompt
endc

ParalyzedText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "est paralysé!"
	cont "Peut pas agir!"
	prompt
else
	text "<TARGET> is"
	line "paralyzed! It"
	cont "might not attack!"
	prompt
endc

FullyParalyzedText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "paralysé!"
	prompt
else
	text "<USER> is"
	line "fully paralyzed!"
	prompt
endc

AlreadyParalyzedText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "déjà paralysé!"
	prompt
else
	text "<TARGET> is"
	line "already paralyzed!"
	prompt
endc

ProtectedByText:
	text "<TARGET> is"
	line "protected by"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt

RegainedStatsWithItem:
	text "<USER>"
	line "regained stats"
	cont "with "
	text_ram wStringBuffer1
	text "!"
	prompt

CuredInfatuationWithItem:
	text "<USER>"
	line "cured infatuation"
	cont "with "
	text_ram wStringBuffer1
	text "!"
	prompt

CuredEncoreWithItem:
	text "<USER>"
	line "cured Encore"
	cont "with "
	text_ram wStringBuffer1
	text "!"
	prompt

CuredDisableWithItem:
	text "<USER>"
	line "cured Disable"
	cont "with "
	text_ram wStringBuffer1
	text "!"
	prompt

StoleText:
	text "<USER>"
	line "stole "
	text_ram wStringBuffer1
	cont "from its foe!"
	prompt

KnockedOffItemText:
	text "<USER>"
	line "knocked off"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt

CantEscapeNowText:
	text "<TARGET>"
	line "can't escape now!"
	prompt

WasDefrostedText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "n'est plus gelé!"
	prompt
else
	text "<USER>"
	line "was defrosted!"
	prompt
endc

PutACurseText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "sacrifie"
	cont "des PV!"

	para "Malédiction"
	line "sur <TARGET>!"
	prompt
else
	text "<USER>"
	line "cut its own HP and"

	para "put a curse on"
	line "<TARGET>!"
	prompt
endc

ProtectedItselfText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "se protège!"
	prompt
else
	text "<USER>"
	line "protected itself!"
	prompt
endc

ProtectingItselfText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "se protège!"
	done
else
	text "<TARGET> is"
	line "protecting itself!"
	done
endc

SpikesText:
if DEF(_LOCALE_FR)
	text "Picots"
	line "autour de"
	cont "<TARGET>!"
	prompt
else
	text "Spikes scattered"
	line "all around"
	cont "<TARGET>!"
	prompt
endc

ToxicSpikesText:
if DEF(_LOCALE_FR)
	text "Picots Toxik"
	line "autour de"
	cont "<TARGET>!"
	prompt
else
	text "Toxic spikes"
	line "scattered around"
	cont "<TARGET>!"
	prompt
endc

IdentifiedText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "identifie"
	cont "<TARGET>!"
	prompt
else
	text "<USER>"
	line "identified"
	cont "<TARGET>!"
	prompt
endc

StartPerishSongText:
if DEF(_LOCALE_FR)
	text "KO dans 3"
	line "tours!"
	prompt
else
	text "#mon that heard"
	line "the song will"
	cont "faint in 3 turns!"
	prompt
endc

StartPerishBodyText:
if DEF(_LOCALE_FR)
	text "KO des deux"
	line "dans 3 tours!"
	prompt
else
	text "Both #mon will"
	line "faint in 3 turns!"
	prompt
endc

SandstormBrewedText:
if DEF(_LOCALE_FR)
	text "Tempête"
	line "de sable!"
	prompt
else
	text "A sandstorm"
	line "brewed!"
	prompt
endc

HailStartedText:
if DEF(_LOCALE_FR)
	text "Grêle!"
	prompt
else
	text "It started to"
	line "hail!"
	prompt
endc

BracedItselfText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "se prépare!"
	prompt
else
	text "<USER>"
	line "braced itself!"
	prompt
endc

FellInLoveText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "est amoureux!"
	prompt
else
	text "<TARGET>"
	line "fell in love!"
	prompt
endc

CoveredByVeilText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "sous un voile!"
	prompt
else
	text "<USER> is"
	line "covered by a veil!"
	prompt
endc

SafeguardProtectText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "protégé par"
	cont "Rune Protect!"
	prompt
else
	text "<TARGET>"
	line "is protected by"
	cont "Safeguard!"
	prompt
endc

MagnitudeText:
	text "Magnitude "
	text_decimal wTextDecimalByte, 1, 2
	text "!"
	prompt

ReleasedByText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "libéré par"
	cont "<TARGET>!"
	prompt
else
	text "<USER>"
	line "was released by"
	cont "<TARGET>!"
	prompt
endc

ShedLeechSeedText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "perd"
	cont "Vampigraine!"
	prompt
else
	text "<USER>"
	line "shed Leech Seed!"
	prompt
endc

BlewSpikesText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "envole les"
	cont "Picots!"
	prompt
else
	text "<USER>"
	line "blew away Spikes!"
	prompt
endc

BlewToxicSpikesText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "envole les"
	cont "Picots Toxik!"
	prompt
else
	text "<USER>"
	line "blew away Toxic"
	cont "Spikes!"
	prompt
endc

DownpourText:
if DEF(_LOCALE_FR)
	text "Pluie"
	line "torrentielle!"
	prompt
else
	text "It started"
	line "to rain!"
	prompt
endc

SunGotBrightText:
if DEF(_LOCALE_FR)
	text "Soleil"
	line "brutal!"
	prompt
else
	text "The sunlight"
	line "turned harsh!"
	prompt
endc

BellyDrumText:
	text "<USER>"
	line "cut its HP and"
	cont "maximized Attack!"
	prompt

BellyDrumContraryText:
	text "<USER>"
	line "cut its HP and"
	cont "minimized Attack!"
	prompt

ForesawAttackText:
	text "<USER>"
	line "foresaw an attack!"
	prompt

IgnoredOrders2Text:
	text "<USER>"
	line "ignored orders!"
	prompt

BecameHealthyText:
	text "<USER>"
	line "became healthy!"
	prompt

PlayerAffectionEndureText:
	text "<USER>"
	line "toughed it out so"

	para "<PLAYER>"
	line "wouldn't feel sad!"
	prompt

EnemyAffectionEndureText:
	text "<USER>"
	line "toughed it out so"

	para "<ENEMY>"
	line "wouldn't feel sad!"
	prompt

PlayerAffectionEvasionText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "esquive!"

	para "Pour <PLAYER>!"
	prompt
else
	text "<USER>"
	line "avoided the move"

	para "in time with"
	line "<PLAYER>'s"
	cont "shout!"
	prompt
endc

EnemyAffectionEvasionText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "esquive!"

	para "Pour <ENEMY>!"
	prompt
else
	text "<USER>"
	line "avoided the move"

	para "in time with"
	line "<ENEMY>'s"
	cont "shout!"
	prompt
endc

PlayerAffectionSelfCureText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "va mieux!"

	para "Pour <PLAYER>!"
	prompt
else
	text "<USER>"
	line "became healthy so"

	para "<PLAYER>"
	line "wouldn't worry!"
	prompt
endc

EnemyAffectionSelfCureText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "va mieux!"

	para "Pour <ENEMY>!"
	prompt
else
	text "<USER>"
	line "became healthy so"

	para "<ENEMY>"
	line "wouldn't worry!"
	prompt
endc

AffectionCriticalText: ; same for both player and enemy
if DEF(_LOCALE_FR)
	text "<USER>"
	line "coup critique!"
	prompt
else
	text "<USER>"
	line "landed a critical"

	para "hit, wishing to be"
	line "praised!"
	prompt
endc

NotifyAirBalloonText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "flotte avec"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<USER>"
	line "floats in the air"
	cont "with "
	text_ram wStringBuffer1
	text "!"
	prompt
endc

TraceActivationText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "calque"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<USER>"
	line "traced"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
endc

BattleText_IntimidateResisted:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line ""
	text_ram wStringBuffer1

	para "bloque"
	line "Intimidation!"
	prompt
else
	text "<TARGET>'s"
	line ""
	text_ram wStringBuffer1

	para "protects it from"
	line "Intimidate!"
	prompt
endc

NotifyCloudNine:
if DEF(_LOCALE_FR)
	text "Météo"
	line "annulée!"
	prompt
else
	text "The weather was"
	line "suppressed!"
	prompt
endc

NotifyPressure:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "met la"
	cont "pression!"
	prompt
else
	text "<USER> is"
	line "exerting its"
	cont "pressure!"
	prompt
endc

NotifyMoldBreaker:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "brise le moule!"
	prompt
else
	text "<USER>"
	line "breaks the mold!"
	prompt
endc

NotifyUnnerve:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "n'ose plus"
	cont "manger Baies!"
	prompt
else
	text "<TARGET> is"
	line "too afraid to eat"
	cont "Berries!"
	prompt
endc

NotifyNeutralizingGas:
if DEF(_LOCALE_FR)
	text "Gaz neutral."
	line "dans l'air!"
	prompt
else
	text "Neutralizing gas"
	line "filled the area!"
	prompt
endc

FriskedItemText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "fouille l'ennemi…"

	para "Objet:"
	line ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<USER>"
	line "frisked its foe"

	para "and found a"
	line ""
	text_ram wStringBuffer1
	text "!"
	prompt
endc

PickedItemText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "ramasse"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<USER>"
	line "picked up"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
endc

HarvestedItemText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "récolte"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<USER>"
	line "harvested"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
endc

FirePoweredUpText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "boost Feu!"
	prompt
else
	text "<USER>'s"
	line "Fire-type moves"
	cont "were powered up!"
	prompt
endc

AngerPointMaximizedAttackText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "Attaque au max!"
	prompt
else
	text "<USER>"
	line "maxed its Attack!"
	prompt
endc

CannotUseText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "ne peut pas"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<TARGET>"
	line "cannot use"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
endc

ShudderedText:
; since the ability works with the opponent move data,
; it is on the opponent turn mostly
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "frissonne!"
	prompt
else
	text "<TARGET>"
	line "shuddered!"
	prompt
endc

ForewarnText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "a"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<TARGET>"
	line "has "
	text_ram wStringBuffer1
	text "!"
	prompt
endc

BouncedBackText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "renvoie"
	cont ""
	text_ram wStringBuffer1
	text "!"
	prompt
else
	text "<USER>"
	line "bounced the"
	cont ""
	text_ram wStringBuffer1
	text " back!"
	prompt
endc

ItemCantBeStolenText:
if DEF(_LOCALE_FR)
	text "<TARGET>"
	line "objet protégé!"
	prompt
else
	text "<TARGET>'s"
	line "item cannot be"
	cont "stolen!"
	prompt
endc

SuckedUpOozeText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "aspire"
	cont "Suintement!"
	prompt
else
	text "<USER>"
	line "sucked up the"
	cont "liquid ooze!"
	prompt
endc

BattleText_EnemyWithdrew::
if DEF(_LOCALE_FR)
	text "<ENEMY>"
	line "rappelle"
	cont ""
	text_ram wEnemyMonNickname
	text "!"
	prompt
else
	text "<ENEMY>"
	line "withdrew"
	cont ""
	text_ram wEnemyMonNickname
	text "!"
	prompt
endc

BattleText_WentBackToPlayer:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "revient!"
	prompt
else
	text "<USER> went"
	line "back to <PLAYER>!"
	prompt
endc

BattleText_WentBackToEnemy:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "revient!"
	prompt
else
	text "<USER>"
	line "went back to"
	cont "<ENEMY>!"
	prompt
endc

ScaredText:
if DEF(_LOCALE_FR)
	text "<USER>"
	line "trop effrayé!"
	prompt
else
	text "<USER> is too"
	line "scared to move!"
	prompt
endc

GetOutText:
if DEF(_LOCALE_FR)
	text "SPECTRE: Dehors…"
	line "Dehors…"
	prompt
else
	text "Ghost: Get out…"
	line "Get out…"
	prompt
endc

CarrieFinalPkmnText:
CalFinalPkmnText:
JackyFinalPkmnText:
if DEF(_LOCALE_FR)
	text "J'ai encore un"
	line "#MON!"
	prompt
else
	text "I still have one"
	line "#mon!"
	prompt
endc

FalknerFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Le vent"
	line "est à nous!"
	prompt
else
	text "The wind is"
	line "finally with us!"
	prompt
endc

BugsyFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Dernier #MON…"
	line "Mais dur!"
	prompt
else
	text "Even though it's"
	line "my last #mon,"

	para "Bug #mon are"
	line "tough!"
	prompt
endc

WhitneyFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Quoi? Un seul?"

	para "Je lâche pas!"
	prompt
else
	text "H-hey! Just one"
	line "left? But…"

	para "I ain't losin',"
	line "you hear?"
	prompt
endc

MortyFinalPkmnText:
if DEF(_LOCALE_FR)
	text "On peut"
	line "gagner!"
	prompt
else
	text "I still believe"
	line "we can do it!"
	prompt
endc

ChuckFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Pas fini!"
	prompt
else
	text "We haven't lost"
	line "yet!"
	prompt
endc

JasmineFinalPkmnText:
if DEF(_LOCALE_FR)
	text "L'acier tient"
	line "jusqu'au bout!"
	prompt
else
	text "Well-tempered"
	line "steel will hang on"
	cont "to the very last!"
	prompt
endc

PryceFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Hmph… Fort,"
	line "dresseur."
	prompt
else
	text "Humph… You are"
	line "quite the Trainer."
	prompt
endc

ClairFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Dernier #MON!"
	line "Vrai combat!"
	prompt
else
	text "One last #mon?"
	line "This is where the"
	cont "real fight begins!"
	prompt
endc

WillFinalPkmnText:
if DEF(_LOCALE_FR)
	text "On lâche"
	line "jamais!"
	prompt
else
	text "We Psychics don't"
	line "give up until we"
	cont "reach zero!"
	prompt
endc

KogaFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Fwahaha!"
	line "Comme prévu!"
	prompt
else
	text "Fwahaha! I've been"
	line "counting on this"

	para "one from the very"
	line "beginning!"
	prompt
endc

BrunoFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Bats-toi"
	line "jusqu'au bout!"
	prompt
else
	text "Fight as hard as"
	line "you can 'til you"
	cont "faint!"
	prompt
endc

KarenFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Je suis"
	line "pas coincée!"
	prompt
else
	text "This is far from"
	line "being backed into"
	cont "a corner!"
	prompt
endc

ChampionFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Enfin!"
	line "Ca arrive!"
	prompt
else
	text "All right! I"
	line "thought this would"
	cont "never happen!"
	prompt
endc

BrockFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Aah!"
	line "Ca gratte!"
	prompt
else
	text "Ah ha ha!"
	line "It itches!"
	prompt
endc

MistyFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Hmm… Pas mal…"
	prompt
else
	text "Hmm… You're"
	line "pretty good…"
	prompt
endc

LtSurgeFinalPkmnText:
if DEF(_LOCALE_FR)
	text "C'est pas fini!"
	line "Encore!"
	prompt
else
	text "It's not over yet."
	line "It's just getting"
	cont "started!"
	prompt
endc

ErikaFinalPkmnText:
if DEF(_LOCALE_FR)
	text "A fond!"
	line "Sans pitié!"
	prompt
else
	text "Don't go easy on"
	line "me. Give me every-"
	cont "thing you've got!"
	prompt
endc

JanineFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Beau style!"
	prompt
else
	text "You've got a great"
	line "battle technique!"
	prompt
endc

SabrinaFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Je sais"
	line "la suite."
	prompt
else
	text "What will happen"
	line "after this?"
	cont "I already know."
	prompt
endc

BlaineFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Esprit"
	line "du GYM!"
	prompt
else
	text "I'll show you the"
	line "spirit of my cave"
	cont "Gym!"
	prompt
endc

BlueFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Héhé…"
	line "Prêt?"
	prompt
else
	text "Heh heh heh…"
	line "You're unprepared"

	para "for this. We'll"
	line "knock you down!"
	prompt
endc

RedFinalPkmnText: ; text > text
LeafFinalPkmnText:
	text "………………"
	prompt

Rival1_1FinalPkmnText:
if DEF(_LOCALE_FR)
	text "…Hmph!"
	line "Pas mal."
	prompt
else
	text "…Humph!"
	line "You're doing OK"
	cont "for someone weak."
	prompt
endc

Rival1_2FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Culotté…"
	line "toi."
	prompt
else
	text "Say, you've got a"
	line "lot of nerve,"
	cont "coming here…"
	prompt
endc

Rival1_3FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Tu te défends."
	prompt
else
	text "Out of despera-"
	line "tion, weak people"

	para "sometimes do OK"
	line "at fighting back."
	prompt
endc

Rival1_4FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Hé!"
	line "Sérieux?"
	prompt
else
	text "Hey, hey!"
	line "Why so serious?"
	prompt
endc

Rival1_5FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Donc…"
	line "pas que chance."
	prompt
else
	text "I see. Seems like"
	line "it wasn't just luck"

	para "that's gotten you"
	line "this far."
	prompt
endc

Rival2_1FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Tu frimes pas…"
	prompt
else
	text "I see. You weren't"
	line "coming to Kanto"
	cont "just to show off…"
	prompt
endc

Rival2_2FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Pourquoi?!"
	line "Encore un!"
	prompt
else
	text "Why?! I've still"
	line "got one left!"
	prompt
endc

Lyra1_1FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Allez,"
	line "<PLAYER>!"
	prompt
else
	text "You've never had a"
	line "#mon battle"
	cont "before, have you?"

	para "I could explain,"
	line "but you'll learn"

	para "more from exper-"
	line "ience."

	para "Do your best,"
	line "<PLAYER>!"
	prompt
endc

Lyra1_2FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Rapide,"
	line "<PLAYER>!"
	prompt
else
	text "You're learning"
	line "quickly, <PLAYER>!"
	prompt
endc

Lyra1_3FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Dernier"
	line "#MON!"
	prompt
else
	text "OK! Time for my"
	line "last #mon!"
	prompt
endc

Lyra1_4FinalPkmnText:
if DEF(_LOCALE_FR)
	text "C'était"
	line "fun!"
	prompt
else
	text "Whether I win or"
	line "lose, this has"
	cont "been fun!"
	prompt
endc

Lyra2_1FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Dernier"
	line "#MON…"
	prompt
else
	text "You've brought me"
	line "down to my last"
	cont "#mon…"
	prompt
endc

Proton1FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Tu me suis"
	line "jusqu'ici?!"
	prompt
else
	text "Seriously, you'd"
	line "chase me this far?"
	prompt
endc

Proton2FinalPkmnText:
if DEF(_LOCALE_FR)
	text "On nous"
	line "contredit…"
	prompt
else
	text "Everywhere we go,"
	line "someone always"
	cont "disagrees with us…"
	prompt
endc

Petrel1FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Quoi?"
	line "Je perds?"
	prompt
else
	text "What? Am I"
	line "losing?"
	prompt
endc

Petrel2FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Hé,"
	line "pas mal!"
	prompt
else
	text "Hey, you're good!"
	prompt
endc

Archer1FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Tu gênes!"
	prompt
else
	text "We can't have you"
	line "getting in the way"

	para "before Giovanni"
	line "rejoins us!"
	prompt
endc

Archer2FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Fort…"
	line "mais…"
	prompt
else
	text "Ah, you are indeed"
	line "strong, but…"
	cont "I wonder…"
	prompt
endc

Ariana1FinalPkmnText:
if DEF(_LOCALE_FR)
	text "P-Pourquoi"
	line "si fort?!"
	prompt
else
	text "Wh… Wha… Why are"
	line "you so strong?!"
	prompt
endc

Ariana2FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Hé!"
	line "Stop!!"
	prompt
else
	text "Hey, what do you"
	line "think you're"
	cont "doing?!"
	prompt
endc

Giovanni1FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Mon #MON"
	line "invincible!"
	prompt
else
	text "My #mon is"
	line "invincible!"
	prompt
endc

Giovanni2FinalPkmnText:
if DEF(_LOCALE_FR)
	text "Un gosse"
	line "si fort?!"
	prompt
else
	text "Don't tell me some"
	line "inexperienced kid"

	para "can possibly be"
	line "that strong!"
	prompt
endc

ProfOakFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Excellent!"
	line "Encore!"
	prompt
else
	text "Hm! Excellent!"
	line "But we aren't"
	cont "done yet!"
	prompt
endc

ProfElmFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Presque"
	line "fini…"
	prompt
else
	text "It's almost"
	line "over…"
	prompt
endc

ProfIvyFinalPkmnText:
if DEF(_LOCALE_FR)
	text "A terre,"
	line "pas fini!"
	prompt
else
	text "I'm down, but"
	line "not out!"
	prompt
endc

MysticalManFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Retour"
	line "spectaculaire!"
	prompt
else
	text "Time for a dra-"
	line "matic comeback!"
	prompt
endc

KarateKingFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Yaaarggh!"
	prompt
else
	text "Yaaarggh!"
	prompt
endc

PalmerFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Bravo!"
	prompt
else
	text "Bravo!"
	prompt
endc

ThortonFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Wow!"
	prompt
else
	text "Wow!"
	prompt
endc

JessieJamesFinalPkmnText:
if DEF(_LOCALE_FR)
	text "On rate"
	line "toujours!"
	prompt
else
	text "We have a proud"
	line "tradition of fail-"
	cont "ure to uphold!"
	prompt
endc

LoreleiFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Juste un"
	line "avant-goût!"
	prompt
else
	text "You only got a"
	line "taste of my power!"
	prompt
endc

AgathaFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Pas gagné,"
	line "môme!"
	prompt
else
	text "Don't assume that"
	line "you've won, child!"
	prompt
endc

StevenFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Je savais…"
	line "fort."
	prompt
else
	text "I knew you would"
	line "be strong…"
	prompt
endc

CynthiaFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Pas fini!"
	prompt
else
	text "I won't let this"
	line "end yet!"
	prompt
endc

InverFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Tu piges"
	line "vite!"
	prompt
else
	text "You're getting the"
	line "hang of this!"
	prompt
endc

CherylFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Trop à"
	line "soigner…"
	prompt
else
	text "I can't keep up"
	line "with healing…"
	prompt
endc

RileyFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Belle aura!"
	prompt
else
	text "Your team! I sense"
	line "your strong aura!"
	prompt
endc

BuckFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Ca chauffe!"
	prompt
else
	text "Now this! This is"
	line "a smoking-hot sit-"
	cont "uation!"
	prompt
endc

MarleyFinalPkmnText:
if DEF(_LOCALE_FR)
	text "…C'est"
	line "la fin."
	prompt
else
	text "…My time with you"
	line "is drawing to a"
	cont "close."
	prompt
endc

MiraFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Oh non!"
	line "Trop fort!"
	prompt
else
	text "Oh, no! You're"
	line "too much for me!"
	prompt
endc

AnabelFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Ton talent…"
	line "réel."
	prompt
else
	text "Your talent…"
	line "It's real."
	prompt
endc

DarachFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Dernier"
	line "assaut!"
	prompt
else
	text "My last stand!"
	line "Allez!"
	prompt
endc

CaitlinFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Je reste"
	line "calme…"
	prompt
else
	text "Even at this time,"
	line "I should stay cool"
	cont "and collected…"
	prompt
endc

CandelaFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Trop"
	line "excitant!"
	prompt
else
	text "Down to the wire!"
	line "How exciting!"
	prompt
endc

BlancheFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Impression-"
	line "nant."
	prompt
else
	text "I am certainly"
	line "impressed so far."
	prompt
endc

SparkFinalPkmnText:
if DEF(_LOCALE_FR)
	text "T'es fort!"
	prompt
else
	text "You're good!"
	line "No doubt about it!"
	prompt
endc

FlanneryFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Euh…"
	line "et là?"
	prompt
else
	text "Um… what should"
	line "I do now?"
	prompt
endc

MayleneFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Pas fini,"
	line "ami!"
	prompt
else
	text "This isn't the"
	line "end, my friend!"
	prompt
endc

MarlonFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Ah…"
	line "j'suis à fond!"
	prompt
else
	text "Awww, dude…"

	para "I know I'm about"
	line "done, but I'm still"
	cont "just so pumped up!"
	prompt
endc

ValerieFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Oh…"
	prompt
else
	text "Oh my…"
	prompt
endc

KukuiFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Mon âme"
	line "brûle!"
	prompt
else
	text "My soul burns hot,"
	line "yeah!"
	prompt
endc

PiersFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Pas d'Encore."
	prompt
else
	text "I don't do encores,"
	line "get it?"

	para "Not songs…"
	line "Not moves…"
	cont "Not #mon!"
	prompt
endc

KatyFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Oh?"
	line "Et là?"
	prompt
else
	text "Oh? How should I"
	line "roll things out"
	cont "from here?"
	prompt
endc

BillFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Yeehah!"
	line "Beau match!"
	prompt
else
	text "Yeehah!"
	line "What a battle!"
	prompt
endc

YellowFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Dernier #MON…"
	line "Aide-moi!"
	prompt
else
	text "My last #mon…"
	line "Lend me your"
	cont "power!"
	prompt
endc

WalkerFinalPkmnText:
if DEF(_LOCALE_FR)
	text "On vole"
	line "encore!"
	prompt
else
	text "We can still fly!"
	prompt
endc

ImakuniFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Je fuis!"
	line "…Ah non?"
	prompt
else
	text "I'm running away!"
	line "…I can't?"
	prompt
endc

LawrenceFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Impossible!"
	prompt
else
	text "Inconceivable!"
	prompt
endc

ReiFinalPkmnText:
if DEF(_LOCALE_FR)
	text "Pas fini."
	prompt
else
	text "I'm not done yet."
	prompt
endc
