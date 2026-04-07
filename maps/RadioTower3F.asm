RadioTower3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, CardKeyShutterCallback

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_2F, 1
	warp_event  7,  0, RADIO_TOWER_4F, 2
	warp_event 17,  0, RADIO_TOWER_4F, 4

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_JUMPTEXT, RadioTower3FPersonnelSignText
	bg_event  9,  0, BGEVENT_JUMPTEXT, RadioTower3FPokemonMusicSignText
	bg_event 14,  2, BGEVENT_UP, CardKeySlotScript

	def_object_events
	object_event  7,  4, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, RadioTower3FSuperNerdText, EVENT_RADIO_TOWER_CIVILIANS_AFTER
	object_event  3,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower3FGymGuideScript, -1
	object_event 11,  3, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RadioTower3FCooltrainerFScript, -1
	object_event  5,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerGruntM7, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  6,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntM8, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 16,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntM9, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  9,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerRocketScientistMarc, EVENT_RADIO_TOWER_ROCKET_TAKEOVER

CardKeyShutterCallback:
	checkevent EVENT_USED_THE_CARD_KEY_IN_THE_RADIO_TOWER
	iftruefwd .Change
	endcallback

.Change:
	changeblock 14, 2, $2a
	changeblock 14, 4, $1
	endcallback

RadioTower3FGymGuideScript:
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue_jumptextfaceplayer RadioTower3FGymGuideText
	jumptextfaceplayer RadioTower3FGymGuideText_Rockets

RadioTower3FCooltrainerFScript:
	checkevent EVENT_GOT_GBC_SOUNDS_FROM_RADIO_TOWER
	iftrue_jumptextfaceplayer RadioTower3FCooltrainerFYouWereMarvelousText
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftruefwd .NoRockets
	checkevent EVENT_USED_THE_CARD_KEY_IN_THE_RADIO_TOWER
	iftrue_jumptextfaceplayer RadioTower3FCooltrainerFIsDirectorSafeText
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Le chef de la TEAM"
	line "ROCKET s'est en-"
	line "fermé. Mais le"
	line "DIRECTEUR peut"
	line "ouvrir. Il est au"
	line "quatrième."
	line "Sauve-le! Pitié!"
	done
else
	text "The Team Rocket"
	line "boss has locked"
	cont "himself in."

	para "But the Director"
	line "can open it."

	para "He's up on the"
	line "fifth floor."

	para "Please save him!"
	done
endc

.NoRockets:
	faceplayer
	opentext
	writetext RadioTower3FCooltrainerFYoureMyHeroText
	promptbutton
	verbosegivekeyitem GBC_SOUNDS
	iffalse_endtext
	writetext RadioTower3FCooltrainerFItsAGBCSoundsText
	waitbutton
	closetext
	setevent EVENT_GOT_GBC_SOUNDS_FROM_RADIO_TOWER
	end

GenericTrainerGruntM7:
	generictrainer GRUNTM, 7, EVENT_BEAT_ROCKET_GRUNTM_7, GruntM7SeenText, GruntM7BeatenText

if DEF(_LOCALE_FR)
	text "J'ai échoué… Quel"
	line "déshonneur. Je"
	line "vais me faire"
	line "virer, c'est sûr."
	done
else
	text "I failed in my"
	line "duties…"

	para "I'll be docked pay"
	line "for this…"
	done
endc

GenericTrainerGruntM8:
	generictrainer GRUNTM, 8, EVENT_BEAT_ROCKET_GRUNTM_8, GruntM8SeenText, GruntM8BeatenText

if DEF(_LOCALE_FR)
	text "Pfff… Je me sens"
	line "super inutile! Mes"
	line "#MON sont nuls et"
	line "moches!"
	done
else
	text "I feel lousy over"
	line "losing!"

	para "Darn it! I hate"
	line "useless #mon!"
	done
endc

GenericTrainerGruntM9:
	generictrainer GRUNTM, 9, EVENT_BEAT_ROCKET_GRUNTM_9, GruntM9SeenText, GruntM9BeatenText

if DEF(_LOCALE_FR)
	text "Quoi?! Tu as"
	line "échappé à nos hom-"
	line "mes du SOUTERRAIN?"
	line "Comment t'as fait?"
	done
else
	text "What?! You made it"
	line "past our men in"
	cont "the Underground?"

	para "How could you?"
	done
endc

GenericTrainerRocketScientistMarc:
	generictrainer ROCKET_SCIENTIST, MARC, EVENT_BEAT_ROCKET_SCIENTIST_MARC, RocketScientistMarcSeenText, RocketScientistMarcBeatenText

if DEF(_LOCALE_FR)
	text "Bwahahaha… Je peux"
	line "donner l'alarme"
	line "d'ici… T'es bien"
	line "feinté!"
	done
else
	text "Bwahahaha…"

	para "I can transmit as"
	line "strong a signal as"
	cont "I need from here."
	done
endc

CardKeySlotScript::
	opentext
	writetext RadioTower3FCardKeySlotText
	waitbutton
	checkevent EVENT_USED_THE_CARD_KEY_IN_THE_RADIO_TOWER
	iftruefwd .UsedCardKey
	checkkeyitem CARD_KEY
	iftruefwd .HaveCardKey
.UsedCardKey:
	endtext

.HaveCardKey:
	writetext InsertedTheCardKeyText
	waitbutton
	setevent EVENT_USED_THE_CARD_KEY_IN_THE_RADIO_TOWER
	playsound SFX_ENTER_DOOR
	changeblock 14, 2, $2a
	changeblock 14, 4, $1
	refreshmap
	closetext
	waitsfx
	end

RadioTower3FSuperNerdText:
if DEF(_LOCALE_FR)
	text "Nous avons un"
	line "enregistrement de"
	line "tous les cris de"
	line "#MON connus. Nous"
	line "en avons près de"
	line "200 différents."
	done
else
	text "We have recordings"
	line "of the cries of"

	para "all #mon that"
	line "have been found."

	para "We must have about"
	line "200 kinds."
	done
endc

RadioTower3FGymGuideText_Rockets:
if DEF(_LOCALE_FR)
	text "Les #MON sont les"
	line "amis adorés des"
	line "dresseurs. La TEAM"
	line "ROCKET tente de"
	line "les con- trôler…"
	line "C'est affreux, ça!"
	done
else
	text "To trainers, #-"
	line "mon are their"
	cont "beloved partners."

	para "It's terrible how"
	line "Team Rocket is"

	para "trying to control"
	line "#mon."
	done
endc

RadioTower3FGymGuideText:
if DEF(_LOCALE_FR)
	text "Nous diffusons des"
	line "émissions distra-"
	line "yantes sans jamais"
	line "nous arrêter. Je"
	line "vais essayer de"
	line "garder le micro 24"
	line "heures sur 24!"
	done
else
	text "We run 24 hours a"
	line "day to broadcast"

	para "entertaining pro-"
	line "grams."

	para "I'll do my best to"
	line "run around the"
	cont "clock too!"
	done
endc

RadioTower3FCooltrainerFIsDirectorSafeText:
if DEF(_LOCALE_FR)
	text "Le DIRECTEUR est-"
	line "il en sécurité?"
	done
else
	text "Is the Director"
	line "safe?"
	done
endc

RadioTower3FCooltrainerFYoureMyHeroText:
if DEF(_LOCALE_FR)
	text "Merci! Tu es mon"
	line "héros! Prends ceci"
	line "en récompense."
	done
else
	text "Thank you!"
	line "You're my hero!"

	para "This is a token of"
	line "my appreciation."
	done
endc

RadioTower3FCooltrainerFItsAGBCSoundsText:
	text "That's GBC Sounds."

	para "It's chock full of"
	line "songs you can"

	para "listen to any-"
	line "where, even"
	cont "during battles."

	para "It has special"
	line "features to adjust"
	cont "pitch or tempo,"

	para "but the controls"
	line "are a bit fiddly."

	para "Just play around"
	line "with it!"
	done

RadioTower3FCooltrainerFYouWereMarvelousText:
if DEF(_LOCALE_FR)
	text "Tu es génial!"
	line "GE-NIAL!"
	done
else
	text "You were simply"
	line "marvelous!"
	done
endc

GruntM7SeenText:
if DEF(_LOCALE_FR)
	text "On m'a donné des"
	line "ordres précis. Je"
	line "dois casser tous"
	line "ceux qui sont"
	line "contre la ROCKET!"
	done
else
	text "I've been given"
	line "strict orders."

	para "I'm to crush any-"
	line "one who challenges"
	cont "Team Rocket!"
	done
endc

GruntM7BeatenText:
if DEF(_LOCALE_FR)
	text "De quoi?!"
	done
else
	text "What?!"
	done
endc

GruntM8SeenText:
if DEF(_LOCALE_FR)
	text "Commander les #MON"
	line "pour le crime,"
	line "c'est cool."
	done
else
	text "It feels great"
	line "ordering #mon"
	cont "to commit crimes."
	done
endc

GruntM8BeatenText:
if DEF(_LOCALE_FR)
	text "Arrête ça!"
	done
else
	text "You're kidding!"
	done
endc

GruntM9SeenText:
if DEF(_LOCALE_FR)
	text "Pourquoi le truc"
	line "s'est ouvert?"
	line "C'est toi le"
	line "responsable?"
	done
else
	text "Why did the shut-"
	line "ter open? Did you"

	para "have something to"
	line "do with this?"
	done
endc

GruntM9BeatenText:
if DEF(_LOCALE_FR)
	text "J'suis fichu!"
	done
else
	text "I'm done for!"
	done
endc

RocketScientistMarcSeenText:
if DEF(_LOCALE_FR)
	text "Un gamin qui se"
	line "balade? T'es qui"
	line "toi?"
	done
else
	text "An unknown child"
	line "wandering here?"

	para "Who are you?"
	done
endc

RocketScientistMarcBeatenText:
if DEF(_LOCALE_FR)
	text "Psss! J'faisais"
	line "pas attention!"
	done
else
	text "Tch! I took you"
	line "too lightly!"
	done
endc

RadioTower3FCardKeySlotText:
if DEF(_LOCALE_FR)
	text "Un lecteur de"
	line "CARTE MAGN."
	done
else
	text "It's the Card Key"
	line "slot."
	done
endc

InsertedTheCardKeyText:
if DEF(_LOCALE_FR)
	text "<PLAYER> insère la"
	line "CARTE MAGN."
	done
else
	text "<PLAYER> inserted"
	line "the Card Key."
	done
endc

RadioTower3FPersonnelSignText:
if DEF(_LOCALE_FR)
	text "2ème PERSONNEL"
	done
else
	text "3F Personnel"
	done
endc

RadioTower3FPokemonMusicSignText:
if DEF(_LOCALE_FR)
	text "MUSIQUE #MON avec"
	line "DJ BEN"
	done
else
	text "#mon Music with"
	line "Host DJ Ben"
	done
endc
