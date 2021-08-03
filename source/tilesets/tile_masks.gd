class_name TileMask
extends Resource
tool

var masks #= {
# Row #0  -  Second Value is Columns
#	0: {
#		0: [
#			-1, -1, -1,
#			-1,  2,  1,
#			-1,  1, -1
#		],
#	}
#}

# Use to obtain data
func get_mask(position: Vector2):
	var x = position.x
	var y = position.y
	var current_mask = [
		-1, -1, -1,
		-1, -1, -1,
		-1, -1, -1
	]
	if masks.has(x):
		var dict_x = masks[x]
		if dict_x.has(y):
			current_mask =  dict_x[y]
	return current_mask
