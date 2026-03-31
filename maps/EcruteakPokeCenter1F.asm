EcruteakPokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, ECRUTEAK_CITY, 6
	warp_event  6,  7, ECRUTEAK_CITY, 6
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalMortyScript

	def_object_events
	object_event  6,  3, SPRITE_BILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokeCenter1FBillScript, EVENT_ECRUTEAK_POKE_CENTER_BILL
	pc_nurse_event  5, 1
	object_event 11,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EcruteakPokeCenter1FPokefanMScript, -1
	object_event 11,  5, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakPokeCenter1FLassScript, -1
	object_event  1,  4, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakPokeCenter1FCooltrainerFText, -1
	object_event  8,  1, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, EcruteakPokeCenter1FGymGuyText, -1

	object_const_def
	const ECRUTEAKPOKECENTER1F_BILL

PokemonJournalMortyScript:
	setflag ENGINE_READ_MORTY_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "Dossier special:"
	line "Mortimer!"

	para "Mortimer dit"
	line "avoir vu Entei."

	para "C'était fou."
	line "Entei m'a fixé."

	para "Je n'oublierai"
	line "jamais ses yeux."

	para "Comme s'il voyait"
	line "en moi."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "Leader Morty!"

	para "Morty claims to"
	line "have once seen"
	cont "Entei. He says:"

	para "“It was amazing."
	line "Entei looked me"
	cont "in the eyes."

	para "I'll never forget"
	line "its eyes. It was"

	para "like it could see"
	line "right through me,"

	para "down into the dep-"
	line "ths of my heart…”"
	done
endc

EcruteakPokeCenter1FBillScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_BILL_INTRO
	iftruefwd .heardintro
	writetext .IntroText
	waitbutton
	setevent EVENT_LISTENED_TO_BILL_INTRO
.heardintro
	writetext .QuestionText
	yesorno
	iffalse_jumpopenedtext .NoText
	writetext .YesText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequalfwd PARTY_LENGTH, .NoRoom
	givepoke EEVEE, PLAIN_FORM, 5, NO_ITEM, GREAT_BALL
	givepokemail .GiftEeveeMail
	callasm .SetEeveeMailOT
	setevent EVENT_GOT_EEVEE
	writetext .GoodbyeText
	waitbutton
	closetext
	readvar VAR_FACING
	turnobject PLAYER, DOWN
	ifnotequal UP, .noleftstep
	applyonemovement ECRUTEAKPOKECENTER1F_BILL, step_left
.noleftstep
	applymovement ECRUTEAKPOKECENTER1F_BILL, .LeaveMovement
	playsound SFX_EXIT_BUILDING
	disappear ECRUTEAKPOKECENTER1F_BILL
	clearevent EVENT_NEVER_MET_BILL
	waitsfx
	end

.NoRoom:
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Ah, c'est pas"
	line "possible,"
	cont "tu ne peux"
	cont "pas transporter"

	line "plus de"
	cont "Pokémon…"
	done
else
	text "Whoa, wait. You"
	line "can't carry any"
	cont "more #mon."
	done
endc

.IntroText:
if DEF(_LOCALE_FR)
	text "Salut, je suis"
	line "Bill."

	para "Et toi?"

	para "Hmm, <PLAYER>?"
	line "Tu arrives"
	cont "pile."

	para "Les Capsules"
	line "Temporelles"
	cont "grillent."

	para "J'ai besoin"
	line "de toi."
	done
else
	text "Hi, I'm Bill. And"
	line "who are you?"

	para "Hmm, <PLAYER>, huh?"
	line "You've come at the"
	cont "right time."

	para "The Time Capsules"
	line "are totally fried,"

	para "and I could use"
	line "your help."
	done
endc

.QuestionText:
if DEF(_LOCALE_FR)
	text "Bill: Cet Evoli"
	line "est arrive"

	para "juste avant la"
	line "panne."

	para "Il faut le"
	line "garder,"

	para "mais je n'aime"
	line "pas sortir."

	para "Tu joues avec,"
	line "<PLAYER>?"
	done
else
	text "Bill: This Eevee"
	line "came over just"

	para "before the Time"
	line "Capsule shut down."

	para "Someone has to"
	line "take care of it,"

	para "but I don't like"
	line "being outside."

	para "Can I count on you"
	line "to play with it,"
	cont "<PLAYER>?"
	done
endc

.YesText:
if DEF(_LOCALE_FR)
	text "Bill: Je le"
	line "savais!"

	para "Parfait."
	line "Je compte sur toi."

	para "Prends-en soin!"
	done
else
	text "Bill: I knew you'd"
	line "come through!"

	para "Way to go! You're"
	line "the real deal!"

	para "OK, I'm counting"
	line "on you."

	para "Take good care of"
	line "it!"
	done
endc

.GoodbyeText:
if DEF(_LOCALE_FR)
	text "Bill: Le Prof.Orme"
	line "dit qu'Evoli"

	para "peut évoluer"
	line "autrement."

	para "Je retourne à"
	line "Doublonville,"

	para "puis à Kanto."

	para "Salut!"
	done
else
	text "Bill: Prof.Elm"
	line "claims Eevee may"

	para "evolve in new and"
	line "unknown ways."

	para "I have to hurry on"
	line "back to Goldenrod"
	cont "and see my folks,"

	para "and then it's back"
	line "to Kanto for me."

	para "Buh-bye!"
	done
endc

.NoText:
if DEF(_LOCALE_FR)
	text "Ah bon…"
	done
else
	text "Oh… Now what to"
	line "do?"
	done
endc

.LeaveMovement:
	step_down
	step_down
	step_down
	step_down
	step_end

.GiftEeveeMail:
	db   EON_MAIL
	setcharmap no_ngrams
	db   "Please keep this"
	next "Pokémon safe!@@"
	setcharmap default

.SetEeveeMailOT:
	ld hl, sPartyMon1MailAuthor
	ld a, [wPartyCount]
	dec a
	ld bc, MAIL_STRUCT_LENGTH
	rst AddNTimes
	push hl
	pop de
	ld hl, .EeveeMailOTID
	ld bc, .EeveeMailOTIDEnd - .EeveeMailOTID
	ld a, BANK(sPartyMail)
	call GetSRAMBank
	rst CopyBytes
	jmp CloseSRAM

.EeveeMailOTID:
	rawchar "Prof.Oak@@"
	bigdw 00001
.EeveeMailOTIDEnd

EcruteakPokeCenter1FPokefanMScript:
	checkevent EVENT_GOT_HM03_SURF
	iftrue_jumptextfaceplayer .SurfText
	jumpthistextfaceplayer

	text "The way the Kimono"
	line "Girls dance is"

	para "marvelous. Just"
	line "like the way they"
	cont "use their #mon."
	done

.SurfText:
	text "You must be hoping"
	line "to battle more"
	cont "people, right?"

	para "There's apparently"
	line "some place where"
	cont "trainers gather."

	para "Where, you ask?"

	para "It's a little past"
	line "Olivine City."
	done

EcruteakPokeCenter1FLassScript:
	faceplayer
	opentext
	writetext .QuestionText
	yesorno
	iffalsefwd .No
	checkevent EVENT_ECRUTEAK_POKE_CENTER_BILL
	iffalse_jumpopenedtext .HereText
	jumpthisopenedtext

	text "I once heard that"
	line "Bill's mother used"

	para "to be a Kimono"
	line "Girl. Maybe that's"

	para "why he visits"
	line "here so often."
	done

.No:
	checkevent EVENT_ECRUTEAK_POKE_CENTER_BILL
	iffalse_jumpopenedtext .HereText
	jumpthisopenedtext

	text "Oh… Never mind"
	line "then."
	done

.QuestionText:
if DEF(_LOCALE_FR)
	text "Tu connais"
	line "Bill?"
	done
else
	text "Do you know who"
	line "Bill is?"
	done
endc

.HereText:
if DEF(_LOCALE_FR)
	text "Alors, va lui"
	line "parler!"
	cont "Il est la!"
	done
else
	text "Then go talk to"
	line "him! He's right"
	cont "by the counter!"
	done
endc

EcruteakPokeCenter1FCooltrainerFText:
if DEF(_LOCALE_FR)
	text "Mortimer est"
	line "trop cool."

	para "Ses #mon"
	line "sont durs."
	done
else
	text "Morty, the Gym"
	line "Leader, is soooo"
	cont "cool."

	para "His #mon are"
	line "really tough too."
	done
endc

EcruteakPokeCenter1FGymGuyText:
if DEF(_LOCALE_FR)
	text "Lac Colère…"

	para "Une horde de"
	line "Léviator…"

	para "Je sens un"
	line "complot!"
	done
else
	text "Lake of Rage…"

	para "The appearance of"
	line "a Gyarados swarm…"

	para "I smell a conspir-"
	line "acy. I know it!"
	done
endc
