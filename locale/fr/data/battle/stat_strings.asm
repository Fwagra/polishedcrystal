StatStrings:
; entrées = constantes de stats
	table_width 1
	dr .health
	dr .attack
	dr .defense
	dr .speed
	dr .sp_atk
	dr .sp_def
	assert_table_length NUM_STATS

.health:  db "PV@"
.attack:  db "Attaque@"
.defense: db "Défense@"
.speed:   db "Vitesse@"
.sp_atk:  db "Att.Spé@"
.sp_def:  db "Déf.Spé@"

