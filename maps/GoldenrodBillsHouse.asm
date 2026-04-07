GoldenrodBillsHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 4
	warp_event  3,  7, GOLDENROD_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 2, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BillsGrandpa, -1
	object_event  5,  3, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BillsMom, -1
	object_event  5,  4, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BillsSister, -1

BillsGrandpa:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue_jumptextfaceplayer BillsGrandpaComeAgainText
	checkevent EVENT_GOT_SHINY_STONE_FROM_BILLS_GRANDPA
	iftrue_jumptextfaceplayer BillsGrandpaShownAllThePokemonText
	faceplayer
	opentext
	checkevent EVENT_MET_BILLS_GRANDPA
	iftruefwd .MetGrandpa
	writetext BillsGrandpaIntroText
	promptbutton
	setevent EVENT_MET_BILLS_GRANDPA
.MetGrandpa:
	checkevent EVENT_SHOWED_TOGEPI_TO_BILLS_GRANDPA
	iftrue .ShowedTogepi
	checkevent EVENT_SHOWED_MURKROW_TO_BILLS_GRANDPA
	iftrue .ShowedMurkrow
	checkevent EVENT_SHOWED_ODDISH_TO_BILLS_GRANDPA
	iftrue .ShowedOddish
	checkevent EVENT_SHOWED_JIGGLYPUFF_TO_BILLS_GRANDPA
	iftrue .ShowedJigglypuff
	checkevent EVENT_SHOWED_PICHU_TO_BILLS_GRANDPA
	iftrue .ShowedPichu
	checkevent EVENT_SHOWED_GROWLITHE_TO_BILLS_GRANDPA
	iftrue .ShowedGrowlithe
	checkevent EVENT_SHOWED_STARYU_TO_BILLS_GRANDPA
	iftrue .ShowedStaryu
	checkevent EVENT_SHOWED_BELLSPROUT_TO_BILLS_GRANDPA
	iftrue .ShowedBellsprout
	checkevent EVENT_SHOWED_SNUBBULL_TO_BILLS_GRANDPA
	iftrue .ShowedSnubbull
	writetext BillsGrandpaSnubbullText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal SNUBBULL, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_SNUBBULL_TO_BILLS_GRANDPA
	sjumpfwd .ShowedSnubbull

.GotEverstone:
	writetext BillsGrandpaBellsproutText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal BELLSPROUT, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_BELLSPROUT_TO_BILLS_GRANDPA
	sjumpfwd .ShowedBellsprout

.GotLeafStone:
	writetext BillsGrandpaStaryuText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal STARYU, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_STARYU_TO_BILLS_GRANDPA
	sjumpfwd .ShowedStaryu

.GotWaterStone:
	writetext BillsGrandpaGrowlitheText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal GROWLITHE, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_GROWLITHE_TO_BILLS_GRANDPA
	sjumpfwd .ShowedGrowlithe

.GotFireStone:
	writetext BillsGrandpaPichuText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal PICHU, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_PICHU_TO_BILLS_GRANDPA
	sjumpfwd .ShowedPichu

.GotThunderstone:
	writetext BillsGrandpaJigglypuffText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal JIGGLYPUFF, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_JIGGLYPUFF_TO_BILLS_GRANDPA
	sjumpfwd .ShowedJigglypuff

.GotMoonStone:
	writetext BillsGrandpaOddishText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal ODDISH, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_ODDISH_TO_BILLS_GRANDPA
	sjumpfwd .ShowedOddish

.GotSunStone:
	writetext BillsGrandpaMurkrowText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal MURKROW, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_MURKROW_TO_BILLS_GRANDPA
	sjumpfwd .ShowedMurkrow

.GotDuskStone:
	writetext BillsGrandpaTogepiText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext BillsGrandpaYouDontHaveItTextText
	ifnotequal TOGEPI, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_TOGEPI_TO_BILLS_GRANDPA
	sjumpfwd .ShowedTogepi

.ShowedSnubbull:
	checkevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	iftrue .GotEverstone
	scall .ReceiveItem
	verbosegiveitem EVERSTONE
	iffalse_endtext
	setevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	endtext

.ShowedBellsprout:
	checkevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	iftrue .GotLeafStone
	scall .ReceiveItem
	verbosegiveitem LEAF_STONE
	iffalse_endtext
	setevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	endtext

.ShowedStaryu:
	checkevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	iftrue .GotWaterStone
	scall .ReceiveItem
	verbosegiveitem WATER_STONE
	iffalse_endtext
	setevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	endtext

.ShowedGrowlithe:
	checkevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	iftrue .GotFireStone
	scall .ReceiveItem
	verbosegiveitem FIRE_STONE
	iffalse_endtext
	setevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	endtext

.ShowedPichu:
	checkevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
	iftrue .GotThunderstone
	scall .ReceiveItem
	verbosegiveitem THUNDERSTONE
	iffalse_endtext
	setevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	endtext

.ShowedJigglypuff:
	checkevent EVENT_GOT_MOON_STONE_FROM_BILLS_GRANDPA
	iftrue .GotMoonStone
	scall .ReceiveItem
	verbosegiveitem MOON_STONE
	iffalse_endtext
	setevent EVENT_GOT_MOON_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	endtext

.ShowedOddish:
	checkevent EVENT_GOT_SUN_STONE_FROM_BILLS_GRANDPA
	iftrue .GotSunStone
	scall .ReceiveItem
	verbosegiveitem SUN_STONE
	iffalse_endtext
	setevent EVENT_GOT_SUN_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	endtext

.ShowedMurkrow:
	checkevent EVENT_GOT_DUSK_STONE_FROM_BILLS_GRANDPA
	iftrue .GotDuskStone
	scall .ReceiveItem
	verbosegiveitem DUSK_STONE
	iffalse_endtext
	setevent EVENT_GOT_DUSK_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	endtext

.ShowedTogepi:
	scall .ReceiveItem
	verbosegiveitem SHINY_STONE
	iffalse_endtext
	setevent EVENT_GOT_SHINY_STONE_FROM_BILLS_GRANDPA
	endtext

.ExcitedToSee:
	writetext BillsGrandpaExcitedToSeeText
	promptbutton
	end

.CorrectPokemon:
	writetext BillsGrandpaShownPokemonText
	promptbutton
	end

.ReceiveItem:
	writetext BillsGrandpaTokenOfAppreciationText
	promptbutton
	end

.WrongPokemon:
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Hmm? Ce n'est pas"
	line "le #MON dont on"
	line "m'a parlé."
	done
else
	text "Hm?"

	para "That's not the"
	line "#mon that I was"
	cont "told about."
	done
endc

BillsMom:
	checkevent EVENT_NEVER_MET_BILL
	iffalse_jumptextfaceplayer BillsMomText_AfterEcruteak
	jumptextfaceplayer BillsMomText_BeforeEcruteak

BillsSister:
	faceplayer
	opentext
	checkcellnum PHONE_BILL
	iftruefwd .GotBillsNumber
	writetext BillsSisterUsefulNumberText
	askforphonenumber PHONE_BILL
	ifequalfwd $1, .NoRoom
	ifequalfwd $2, .Refused
	waitsfx
	addcellnum PHONE_BILL
	writetext RecordedBillsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	promptbutton
.GotBillsNumber:
	jumpopenedtext BillsSisterStorageSystemText

.NoRoom:
	writetext BillsSisterPhoneFullText
	promptbutton
.Refused:
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Mon frère a créé"
	line "un système de"
	line "stockage pour les"
	line "#MON par PC."
	line "J'allais te donner"
	line "le numéro de télé-"
	line "phone de LEO…"
	done
else
	text "My brother made"
	line "the PC #mon"
	cont "storage system."

	para "I was going to"
	line "give you Bill's"
	cont "number…"
	done
endc

BillsGrandpaIntroText:
if DEF(_LOCALE_FR)
	text "Tu connais LEO?"
	line "C'est mon"
	line "petit-fils. Il est"
	line "à JOHTO. Il"
	line "s'occupe de PC."
	line "Alors moi je m'oc-"
	line "cupe de la maison."
	done
else
	text "Hm? You know Bill?"
	line "He's my grandson."

	para "He's in Kanto. He"
	line "does something"

	para "with PCs, so I'm"
	line "house-sitting."
	done
endc

BillsGrandpaAskToSeeMonText:
if DEF(_LOCALE_FR)
	text "Si tu as ce #-"
	line "MON, peux-tu me le"
	line "montrer?"
	done
else
	text "If you have that"
	line "#mon, may I see"
	cont "it, please?"
	done
endc

BillsGrandpaExcitedToSeeText:
if DEF(_LOCALE_FR)
	text "Tu vas me le mon-"
	line "trer? Cool!"
	done
else
	text "You will show me?"
	line "How good of you!"
	done
endc

BillsGrandpaYouDontHaveItTextText:
if DEF(_LOCALE_FR)
	text "Tu ne l'as pas?"
	line "Dommage…"
	done
else
	text "You don't have it?"
	line "That's too bad…"
	done
endc

BillsGrandpaShownPokemonText:
	text "Ah, so that is"
	line ""
	text_ram wStringBuffer3
	text "?"

	para "Isn't it cute!"
	line "That's so kind of"
	cont "you."
	done

BillsGrandpaTokenOfAppreciationText:
if DEF(_LOCALE_FR)
	text "Toi t'es gentil!"
	line "Voilà une petite"
	line "récompense."
	done
else
	text "Thanks!"

	para "This is a token of"
	line "my appreciation."
	done
endc

BillsGrandpaComeAgainText:
if DEF(_LOCALE_FR)
	text "Rends-moi visite"
	line "des fois."
	done
else
	text "Come visit again"
	line "sometime."
	done
endc

BillsGrandpaShownAllThePokemonText:
if DEF(_LOCALE_FR)
	text "Merci de me mon-"
	line "trer autant de"
	line "#MON tout mimi."
	line "C'est vraiment"
	line "très amusant. Ma"
	line "vie est belle"
	line "grâce à toi."
	done
else
	text "Thanks for showing"
	line "me so many cute"
	cont "#mon."

	para "I really enjoyed"
	line "myself. I'm glad"

	para "I've lived such a"
	line "long life."
	done
endc

BillsGrandpaSnubbullText:
if DEF(_LOCALE_FR)
	text "Mon petit-fils m'a"
	line "parlé d'un"

	para "petit chien rose"
	line "à pois bleus."
	done
else
	text "My grandson Bill"
	line "told me about a"

	para "short, pink canine"
	line "#mon with blue"
	cont "polka dots."
	done
endc

BillsGrandpaTogepiText:
if DEF(_LOCALE_FR)
	text "Connais-tu un #MON"
	line "avec une coquille"

	para "aux triangles"
	line "rouges et bleus?"

	para "On dit que c'est"
	line "un porte-bonheur."
	done
else
	text "Do you know of a"
	line "#mon that has a"

	para "shell covered in"
	line "red and blue"
	cont "triangles?"

	para "It's supposed to"
	line "be a symbol of"
	cont "good luck."
	done
endc

BillsGrandpaMurkrowText:
if DEF(_LOCALE_FR)
	text "Connais-tu un"
	line "#MON Oiseau"

	para "au bec jaune tordu"
	line "et plumage noir?"

	para "On dit qu'il"
	line "apparaît la nuit."

	para "J'veux le voir."
	done
else
	text "Do you know of a"
	line "bird #mon that"

	para "has a crooked"
	line "yellow beak and"
	cont "black feathers?"

	para "I heard that it"
	line "appears at night."

	para "I would quite"
	line "like to see it."
	done
endc

BillsGrandpaOddishText:
if DEF(_LOCALE_FR)
	text "Mon petit-fils m'a"
	line "parlé d'un #- MON"
	line "vert et rond avec"
	line "des feuilles sur"
	line "sa tête."
	done
else
	text "Ah, my grandson"
	line "mentioned a round,"

	para "blue #mon that"
	line "has leaves growing"
	cont "on its head."
	done
endc

BillsGrandpaJigglypuffText:
if DEF(_LOCALE_FR)
	text "Mon petit-fils m'a"
	line "parlé d'un #MON"

	para "rose à la voix"
	line "hypnotique."
	done
else
	text "Bill told me about"
	line "a pink #mon"

	para "with a hypnotic"
	line "singing voice."
	done
endc

BillsGrandpaBellsproutText:
if DEF(_LOCALE_FR)
	text "Mon petit-fils m'a"
	line "parlé d'un #MON"

	para "vert qui marche"
	line "sur ses racines."
	done
else
	text "My grandson Bill"
	line "mentioned a green"

	para "#mon that walks"
	line "on its roots."
	done
endc

BillsGrandpaStaryuText:
if DEF(_LOCALE_FR)
	text "Connais-tu un #MON"
	line "marin avec une"
	line "sphère rouge dans"
	line "le corps? Tu sais…"
	line "Celui qui est en"
	line "forme d'étoile? On"
	line "dit qu'il appa-"
	line "raît la nuit."
	line "J'aimerais tant le"
	line "voir."
	done
else
	text "Do you know of a"
	line "sea #mon that"

	para "has a red sphere"
	line "in its body?"

	para "You know, the one"
	line "that's shaped like"
	cont "a star?"

	para "I heard that it"
	line "appears at night."

	para "I would surely"
	line "like to see it."
	done
endc

BillsGrandpaGrowlitheText:
if DEF(_LOCALE_FR)
	text "LEO m'a parlé d'un"
	line "#MON très loyal"
	line "envers son dres-"
	line "seur. On dit qu'il"
	line "HURLE très bien."
	done
else
	text "Bill told me about"
	line "a #mon that is"

	para "very loyal to its"
	line "trainer."

	para "It's supposed to"
	line "Roar well."
	done
endc

BillsGrandpaPichuText:
if DEF(_LOCALE_FR)
	text "Tu connais ce #MON"
	line "super populaire?"
	line "Ce #MON qui a un"
	line "corps jaune et des"
	line "joues rouges…"
	line "J'aimerais tant le"
	line "voir avant qu'il"
	line "n'évolue."
	done
else
	text "Do you know that"
	line "hugely popular"
	cont "#mon?"

	para "The #mon that"
	line "has a yellow body"
	cont "and red cheeks."

	para "I would love to"
	line "see what it looks"

	para "like before it"
	line "evolves."
	done
endc

BillsMomText_BeforeEcruteak:
if DEF(_LOCALE_FR)
	text "Tu collectionnes"
	line "les #MON? Mon fils"
	line "LEO est un expert."
	line "Il est allé au"
	line "CENTRE #MON de"
	line "ROSALIA. Mon mari"
	line "en re- vanche est"
	line "au CASINO… Ne"
	line "cherche pas à"
	line "comprendre…"
	done
else
	text "Oh, you collect"
	line "#mon? My son"
	cont "Bill is an expert."

	para "He just got called"
	line "to the #mon"

	para "Center in Ecruteak"
	line "City."

	para "My husband went"
	line "off to the Game"

	para "Corner without"
	line "being called…"
	done
endc

BillsMomText_AfterEcruteak:
if DEF(_LOCALE_FR)
	text "Mon tendre époux"
	line "était jadis un"
	line "#MANIAC. LEO doit"
	line "tenir de lui."
	done
else
	text "My husband was"
	line "once known as a"

	para "#Maniac."
	line "Bill must have"

	para "taken after his"
	line "father."

	para "But now my husband"
	line "won't work. He"

	para "just goofs off"
	line "all day long."
	done
endc

BillsSisterUsefulNumberText:
if DEF(_LOCALE_FR)
	text "Es-tu un dresseur?"
	line "J'ai un numéro de"
	line "téléphone utile"
	line "pour toi."
	done
else
	text "Are you a trainer?"

	para "I've got a useful"
	line "phone number for"
	cont "you."
	done
endc

RecordedBillsNumberText:
if DEF(_LOCALE_FR)
	text "<PLAYER>"
	line "enregistre le"
	line "numéro de télé-"
	line "phone de LEO."
	done
else
	text "<PLAYER> recorded"
	line "Bill's number."
	done
endc

BillsSisterPhoneFullText:
if DEF(_LOCALE_FR)
	text "Mais tu ne peux"
	line "plus enregistrer"
	line "de numéros!"
	done
else
	text "You can't record"
	line "any more numbers."
	done
endc

BillsSisterStorageSystemText:
if DEF(_LOCALE_FR)
	text "Mon grand frère"
	line "LEO a fait un"
	line "super système de"
	line "stockage de #- MON"
	line "par PC."
	done
else
	text "My big brother"
	line "Bill made the PC"

	para "#mon storage"
	line "system."
	done
endc
