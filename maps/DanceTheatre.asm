DanceTheatre_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5, 15, ECRUTEAK_CITY, 8
	warp_event  6, 15, ECRUTEAK_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  5,  6, BGEVENT_UP, MapDanceTheatreSignpost1Script
	bg_event  6,  6, BGEVENT_UP, MapDanceTheatreSignpost1Script

	def_object_events
	object_event  0,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_GENERICTRAINER, 0, GenericTrainerKimono_girlNaoko, -1
	object_event  2,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 0, GenericTrainerKimono_girlSayo, -1
	object_event  6,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_GRAY, OBJECTTYPE_TRAINER, 0, GenericTrainerKimono_girlZuki, -1
	object_event  9,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, GenericTrainerKimono_girlKuni, -1
	object_event 11,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 0, GenericTrainerKimono_girlMiki, -1
	object_event  7, 12, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheaterSurfGuy, -1
	pokemon_event  6, 10, RHYDON, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_BROWN, RhydonText, -1
	object_event 10, 12, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, DanceTheatreCooltrainerMText, -1
	object_event  3,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, DanceTheatreGrannyText, -1
	object_event  1, 10, SPRITE_LADY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, DanceTheatreLadyText, -1

GenericTrainerKimono_girlNaoko:
	assert !DEF(TRAINERPAL_NAOKO) ; the default TRAINERPAL_KIMONO_GIRL is hers
	generictrainer KIMONO_GIRL, NAOKO, EVENT_BEAT_KIMONO_GIRL_NAOKO, Kimono_girlNaokoSeenText, Kimono_girlNaokoBeatenText

if DEF(_LOCALE_FR)
	text "J'ai apprécié la"
	line "petite baston. On"
	cont "peut se revoir?"
	done
else
	text "I enjoyed that"
	line "bout. I would like"
	cont "to see you again."
	done
endc

GenericTrainerKimono_girlSayo:
	trainer KIMONO_GIRL, SAYO, EVENT_BEAT_KIMONO_GIRL_SAYO, Kimono_girlSayoSeenText, Kimono_girlSayoBeatenText, 0, .Script, TRAINERPAL_SAYO

.Script:
	endifjustbattled
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Le rythme, c'est"
	line "un truc super"

	para "important pour la"
	line "danse et pour les"
	cont "#mon."
	done
else
	text "Rhythm is impor-"
	line "tant for both"

	para "dancing and #-"
	line "mon."
	done
endc

GenericTrainerKimono_girlZuki:
	trainer KIMONO_GIRL, ZUKI, EVENT_BEAT_KIMONO_GIRL_ZUKI, Kimono_girlZukiSeenText, Kimono_girlZukiBeatenText, 0, .Script, TRAINERPAL_ZUKI

.Script:
	endifjustbattled
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Tous les mois je"
	line "change de fleur"
	cont "pour ma barrette."
	cont "Bon des fois elle"
	cont "fane avant!"
	done
else
	text "I put a different"
	line "flower in my bar-"
	cont "rette every month."
	done
endc

GenericTrainerKimono_girlKuni:
	trainer KIMONO_GIRL, KUNI, EVENT_BEAT_KIMONO_GIRL_KUNI, Kimono_girlKuniSeenText, Kimono_girlKuniBeatenText, 0, .Script, TRAINERPAL_KUNI

.Script:
	endifjustbattled
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Je me suis entraî-"
	line "née d'arrache-pied"

	para "et je pensais être"
	line "au niveau. Et bah"
	cont "non..."
	done
else
	text "I trained a lot,"
	line "so I thought I was"

	para "a capable trainer."
	line "I guess I'm not."
	done
endc

GenericTrainerKimono_girlMiki:
	trainer KIMONO_GIRL, MIKI, EVENT_BEAT_KIMONO_GIRL_MIKI, Kimono_girlMikiSeenText, Kimono_girlMikiBeatenText, 0, .Script, TRAINERPAL_MIKI

.Script:
	endifjustbattled
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Je continue de"
	line "danser! Les gens"
	cont "adorent ça!"

	para "Mes #mon aussi."
	done
else
	text "I can keep dancing"
	line "because there are"

	para "people who enjoy"
	line "what I do."

	para "My #mon keep my"
	line "spirits up too."
	done
endc

DanceTheaterSurfGuy:
	faceplayer
	opentext
	writetext SurfGuyNeverLeftAScratchText
	promptbutton
	checkevent EVENT_GOT_HM03_SURF
	iftrue_jumpopenedtext SurfGuyElegantKimonoGirlsText
	checkevent EVENT_BEAT_KIMONO_GIRL_NAOKO
	iffalsefwd .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_SAYO
	iffalsefwd .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_ZUKI
	iffalsefwd .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_KUNI
	iffalsefwd .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_MIKI
	iffalsefwd .KimonoGirlsUndefeated
	writetext SurfGuyLikeADanceText
	promptbutton
	verbosegivetmhm HM_SURF
	setevent EVENT_GOT_HM03_SURF
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "C'est SURF."

	para "Cette capacité"
	line "permet aux"
	cont "#mon de nager."
	done
else
	text "That's Surf."

	para "It's a move that"
	line "lets #mon swim"
	cont "across water."
	done
endc

.KimonoGirlsUndefeated:
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Hep! Si tu réussis"
	line "à vaincre toutes"

	para "les KIMONO, je te"
	line "donnerai alors un"
	cont "joli cadeau."
	done
else
	text "Kiddo! If you can"
	line "defeat all the"

	para "Kimono Girls, I'll"
	line "give you a gift."
	done
endc

MapDanceTheatreSignpost1Script:
	jumptext DanceTheatreFancyPanelText

Kimono_girlNaokoSeenText:
if DEF(_LOCALE_FR)
	text "Tu as de jolis"
	line "#mon. On peut"
	cont "voir c'que ça"
	cont "donne en combat?"
	done
else
	text "You have lovely"
	line "#mon. May I see"
	cont "them in battle?"
	done
endc

Kimono_girlNaokoBeatenText:
if DEF(_LOCALE_FR)
	text "Oh, bravo les"
	line "biscotos!!"
	done
else
	text "Oh, you are very"
	line "strong."
	done
endc

Kimono_girlSayoSeenText:
if DEF(_LOCALE_FR)
	text "Je danse toujours"
	line "avec mes #mon."

	para "Bien sûr, je les"
	line "entraîne aussi."
	done
else
	text "I always dance"
	line "with my #mon."

	para "Of course, I also"
	line "train them."
	done
endc

Kimono_girlSayoBeatenText:
if DEF(_LOCALE_FR)
	text "Oh, presque!"
	line "J'ai failli"
	cont "t'avoir."
	done
else
	text "Oh, so close!"
	line "I almost had you."
	done
endc

Kimono_girlZukiSeenText:
if DEF(_LOCALE_FR)
	text "Elle est pas belle"
	line "ma barrette?"

	para "Oh! Un combat de"
	line "#mon?"
	done
else
	text "Isn't my barrette"
	line "pretty?"

	para "Oh. A #mon"
	line "battle?"
	done
endc

Kimono_girlZukiBeatenText:
if DEF(_LOCALE_FR)
	text "Je n'ai plus de"
	line "#mon..."
	done
else
	text "I don't have any"
	line "#mon left…"
	done
endc

Kimono_girlKuniSeenText:
if DEF(_LOCALE_FR)
	text "Oh, t'es tout"
	line "mimi comme"
	cont "dresseur! Un petit"
	cont "combat en tête à"
	cont "tête?"
	done
else
	text "Oh, you're a cute"
	line "trainer. Would you"
	cont "like to battle?"
	done
endc

Kimono_girlKuniBeatenText:
if DEF(_LOCALE_FR)
	text "Tu es plus cool"
	line "que tu n'en n'as"
	cont "pas l'air."
	done
else
	text "You're stronger"
	line "than you look."
	done
endc

Kimono_girlMikiSeenText:
if DEF(_LOCALE_FR)
	text "Tu aimes mes pas"
	line "de danse? La pure"
	cont "classe, non?"
	cont "Mais je suis aussi"
	cont "forte en #mon."
	done
else
	text "Do you like my"
	line "dancing? I'm good"
	cont "at #mon too."
	done
endc

Kimono_girlMikiBeatenText:
if DEF(_LOCALE_FR)
	text ".... Heu... T'es"
	line "pas naze non"
	cont "plus toi!"
	done
else
	text "Ooh, you're good"
	line "at #mon too."
	done
endc

SurfGuyNeverLeftAScratchText:
if DEF(_LOCALE_FR)
	text "Les KIMONO ne sont"
	line "pas seulement de"

	para "bonnes danseuses,"
	line "elles sont aussi"
	cont "douées en #mon."

	para "Je les défie"
	line "souvent..."
	done
else
	text "Not only are the"
	line "Kimono Girls great"

	para "dancers, they're"
	line "also skilled at"
	cont "#mon."

	para "I always challenge"
	line "them, but I've"

	para "never even left a"
	line "scratch…"
	done
endc

SurfGuyLikeADanceText:
if DEF(_LOCALE_FR)
	text "La façon dont tu"
	line "as combattu..."
	cont "C'était beau comme"
	cont "une danse."

	para "Beau comme une"
	line "pirouette!"

	para "Je veux que tu"
	line "acceptes ceci."
	cont "N'aie pas peur!"
	cont "Prends-le!"
	done
else
	text "The way you bat-"
	line "tled, it was like"
	cont "watching a dance."

	para "It was a rare"
	line "treat to see!"

	para "I want you to have"
	line "this. Don't worry"
	cont "--take it!"
	done
endc

SurfGuyElegantKimonoGirlsText:
if DEF(_LOCALE_FR)
	text "J'aimerais que mes"
	line "#mon soient"
	cont "aussi élégants que"
	cont "ceux des KIMONO..."
	done
else
	text "I wish my #mon"
	line "were as elegant as"
	cont "the Kimono Girls."
	done
endc

RhydonText:
if DEF(_LOCALE_FR)
	text "RHINOFEROS: Ross!"
	line "Férrroosss!"
	done
else
	text "Rhydon: Gugooh"
	line "gugogooh!"
	done
endc

DanceTheatreCooltrainerMText:
if DEF(_LOCALE_FR)
	text "Cet homme est"
	line "toujours avec son"
	cont "RHINOFEROS."

	para "Il dit vouloir"
	line "un #mon sachant"
	cont "surfer et danser."

	para "Est-ce qu'il veut"
	line "faire de la"
	cont "natation de #-"
	cont "mon synchronisée?"
	done
else
	text "That man's always"
	line "with his Rhydon."

	para "Says he wants a"
	line "#mon that can"
	cont "Surf and dance."

	para "Is he trying to"
	line "make a synchro-"
	cont "nized swimming"
	cont "#mon?"
	done
endc

DanceTheatreGrannyText:
if DEF(_LOCALE_FR)
	text "Les KIMONO sont"
	line "très belles..."

	para "Mais elles doivent"
	line "suivre un"
	cont "entraînement de"
	cont "titan."

	para "Elles doivent"
	line "apprendre à suivre"

	para "des règles avant"
	line "de se montrer en"
	cont "public."

	para "Mais quand tu"
	line "aimes quelque"
	cont "chose, tout est"
	cont "possible."
	done
else
	text "The Kimono Girls"
	line "are so beautiful…"

	para "But they have to"
	line "go through rigor-"
	cont "ous training."

	para "And they have to"
	line "learn to follow"

	para "customs before ap-"
	line "pearing in public."

	para "But if you love"
	line "something, any-"
	cont "thing is possible."
	done
endc

DanceTheatreLadyText:
if DEF(_LOCALE_FR)
	text "EVOLI peut évoluer"
	line "en PHYLLALI, GLA-"
	cont "CIOLI ou NYMPHALI,"

	para "mais j'en vois pas"
	line "un seul ici."

	para "Les KIMONO qui les"
	line "utilisent sont"

	para "peut-être"
	line "ailleurs?"
	done
else
	text "Eevee can evolve"
	line "into Leafeon, Gla-"
	cont "ceon, or Sylveon,"

	para "but I don't see"
	line "any of them here."

	para "I wonder if the"
	line "Kimono Girls who"

	para "use them are"
	line "somewhere else?"
	done
endc

DanceTheatreFancyPanelText:
if DEF(_LOCALE_FR)
	text "C'est un joli"
	line "paravent décoré de"
	cont "fleurs."
	done
else
	text "It's a fancy panel"
	line "that's decorated"
	cont "with flowers."
	done
endc
