ItemPocketNames:
	table_width 1
	dr .Item
	dr .Medicine
	dr .Ball
	dr .TM ; impossible
	dr .Berry
	dr .Key ; impossible
	assert_table_length NUM_POCKETS

.Item:
	db "Poche Obj.@"
.Medicine:
	db "Poche Soin@"
.Ball:
	db "Poche Balls@"
.TM:
	db "Poche CT/CS@"
.Berry:
	db "Poche Baies@"
.Key:
	db "Poche Clés@"

