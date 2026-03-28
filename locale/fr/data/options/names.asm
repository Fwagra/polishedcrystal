OptionNames:
	table_width 2
	dw .TextSpeed
	dw .TextAutoscroll
	dw .Frame
	dw .Typeface
	dw .Keyboard
	dw .Sound
	dw .BattleEffects
	dw .BattleStyle
	dw .RunningShoes
	dw .TurningSpeed
	dw .ClockFormat
	dw .PokedexUnits
	dw .Done
	assert_table_length NUM_OPTIONS + 1 ; inclut "Terminé"

.TextSpeed:
	db "Vitesse texte@"
.TextAutoscroll:
	db "Défilement auto@"
.Frame:
	db "Cadre@"
.Typeface:
	db "Police@"
.Keyboard:
	db "Clavier@"
.Sound:
	db "Son@"
.BattleEffects:
	db "Anim. combat@"
.BattleStyle:
	db "Style combat@"
.RunningShoes:
	db "Course auto@"
.TurningSpeed:
	db "Vitesse virage@"
.ClockFormat:
	db "Format horloge@"
.PokedexUnits:
	db "Unités #dex@"
.Done:
	db "Terminé@"

