TypeNames:
; entries correspond to types (see constants/type_constants.asm)
	table_width 1
	dr Normal
	dr Fighting
	dr Flying
	dr Poison
	dr Ground
	dr Rock
	dr Bug
	dr Ghost
	dr Steel
	assert_table_length SPECIAL_TYPES
	dr Fire
	dr Water
	dr Grass
	dr Electric
	dr Psychic
	dr Ice
	dr Dragon
	dr Dark
	dr Fairy
	dr UnknownType
	assert_table_length NUM_TYPES

EggGroupNames:
; entries correspond to egg groups (see constants/pokemon_data_constants.asm)
; placés ici car certains groupes réutilisent des libellés de types
	table_width 1
	dr Monster
	dr Water1
	dr Bug
	dr Flying
	dr Field
	dr Fairy
	dr Grass
	dr Humanlike
	dr Water3
	dr Mineral
	dr Amorphous
	dr Water2
	dr Ditto
	dr Dragon
	dr Undiscovered
	assert_table_length NUM_EGG_GROUPS

; Types
Normal:      db "Normal@"
Fighting:    db "Combat@"
Flying:      db "Vol@"
Poison:      db "Poison@"
Ground:      db "Sol@"
Rock:        db "Roche@"
Bug:         db "Insecte@"
Ghost:       db "Spectre@"
Steel:       db "Acier@"
Fire:        db "Feu@"
Water:       db "Eau@"
Grass:       db "Plante@"
Electric:    db "Electrik@"
Psychic:     db "Psy@"
Ice:         db "Glace@"
Dragon:      db "Dragon@"
Dark:        db "Tenebres@"
Fairy:       db "Fee@"
UnknownType: db "???@"

; Groupes d'œufs
Monster:      db "Monstre@"
Field:        db "Sol@"
Humanlike:    db "Humanoide@"
Mineral:      db "Mineral@"
Amorphous:    db "Amorphe@"
Ditto:        db "Metamorph@"
Undiscovered: db "Inconnu@"
if !DEF(FAITHFUL)
Water1:       db "Amphibien@"
Water2:       db "Poisson@"
Water3:       db "Invertebre@"
else
Water1:       db "Eau 1@"
Water2:       db "Eau 2@"
Water3:       db "Eau 3@"
endc

