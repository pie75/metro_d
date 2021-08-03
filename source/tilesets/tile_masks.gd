class_name TileMask
extends Resource
tool

var MASKS #= {
# Format is specific to each tileset. Consult them for explicit data.
# Row #0  -  Second Value is Columns
#	0: {
#		0: {
#			0: [
#				-1, -1, -1,
#				-1, -1, -1,
#				-1, -1, -1
#			]
#		}
#	}
#}

# Use to obtain data
func get_mask(row:int, column:int, priority:int):
	var current_mask =  MASKS[row][column][priority]
	match current_mask:
		null:
			current_mask = [
				-2, -2, -2,
				-2, -2, -2,
				-2, -2, -2
			]
			continue
		_:
			return current_mask

func get_rows():
	return MASKS.size()

func get_columns(row_id:int):
	var row = MASKS[row_id].size()
	match row:
		null:
			return 0
		_:
			return row

func get_mask_number(row_id:int, column_id:int):
	var mask = MASKS[row_id][column_id].size()
	match mask:
		null:
			return 0
		_:
			return mask
