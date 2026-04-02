RocketHideoutB3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 17,  2, ROCKET_HIDEOUT_B2F, 2
	warp_event 11, 14, ROCKET_HIDEOUT_B4F, 1

	def_coord_events

	def_bg_events
	bg_event 19, 13, BGEVENT_ITEM + FULL_HEAL, EVENT_ROCKET_HIDEOUT_B3F_HIDDEN_FULL_HEAL

	def_object_events
	object_event 18,  8, SPRITE_COSPLAYER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, RocketHideoutB3FCosplayerLyric, -1
	object_event  2, 18, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, RocketHideoutB3FCoolDudeDaric, -1
	itemball_event 12, 10, CARBOS, 1, EVENT_ROCKET_HIDEOUT_B3F_CARBOS
	itemball_event 18, 13, ELIXIR, 1, EVENT_ROCKET_HIDEOUT_B3F_ELIXIR

RocketHideoutB3FCosplayerLyric:
	generictrainer COSPLAYER, LYRIC, EVENT_BEAT_COSPLAYER_LYRIC, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "L'énergie de"
	line "Spark est au top!"

	para "Prépare-toi à en"
	line "prendre plein les"
	cont "doigts!"
	done
else
	text "Leader Spark's"
	line "energy is high!"

	para "Hope you're ready"
	line "for a jolt!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "L'Instinct n'a pas"
	line "besoin de calculs."

	para "On frappe vite et"
	line "fort."
	done
else
	text "Instinct doesn't"
	line "need calculations."

	para "We just strike"
	line "fast and hard."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Trop rapide!"
	done
else
	text "Can't keep up!"
	done
endc

RocketHideoutB3FCoolDudeDaric:
	generictrainer COOLTRAINERM, DARIC, EVENT_BEAT_COOL_DUDE_DARIC, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Blanche exige"
	line "toujours le"
	cont "maximum d'efforts!"
	done
else
	text "Leader Blanche ex-"
	line "pects no less than"
	cont "maximum effort!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "L'émotion brouille"
	line "le jugement."

	para "Voyons si tu sais"
	line "te concentrer."

	done
else
	text "Emotion clouds"
	line "judgement."

	para "Let's see if your"
	line "focus is good."

	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Mon jugement était"
	line "faussé..."
	done
else
	text "My judgement was"
	line "flawed…"
	done
endc
