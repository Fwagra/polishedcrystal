HatchSpeedNames:
; entrées = HATCH_* (voir constants/pokemon_data_constants.asm)
; les « cycles pas pour éclosion » sont sur un quartet, 0-7 pour les œufs (15 = légendaires)
	table_width 1
	dr Fastest
	dr Faster
	dr Fast
	dr MediumFast
	dr MediumSlow
	dr Slow
	dr Slower
	dr Slowest
	assert_table_length NUM_HATCH_RATES

GrowthRateNames:
; entrées = GROWTH_* (voir constants/pokemon_data_constants.asm)
	table_width 1
	dr MediumFast
	dr MediumSlow
	dr Fast
	dr Slow
	assert_table_length NUM_GROWTH_RATES

Fastest:    db "Très rapide@"
Faster:     db "Plus rapide@"
Fast:       db "Rapide@"
MediumFast: db "Moy.-rapide@"
MediumSlow: db "Moy.-lent@"
Slow:       db "Lent@"
Slower:     db "Plus lent@"
Slowest:    db "Très lent@"
Unknown:    db "Inconnu@"

BodyColorNames:
; entrées = couleurs (voir constants/pokemon_data_constants.asm)
	table_width 1
	dr BodyRed
	dr BodyBlue
	dr BodyYellow
	dr BodyGreen
	dr BodyBlack
	dr BodyBrown
	dr BodyPurple
	dr BodyGray
	dr BodyWhite
	dr BodyPink
	assert_table_length NUM_BODY_COLORS

BodyRed:    db "Rouge@"
BodyBlue:   db "Bleu@"
BodyYellow: db "Jaune@"
BodyGreen:  db "Vert@"
BodyBlack:  db "Noir@"
BodyBrown:  db "Marron@"
BodyPurple: db "Violet@"
BodyGray:   db "Gris@"
BodyWhite:  db "Blanc@"
BodyPink:   db "Rose@"
