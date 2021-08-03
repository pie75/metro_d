extends TileSet
tool

const SlopeMask = preload("res://source/tilesets/tm_basic_slope.gd")
var slope_mask = SlopeMask.new()

const BASIC_IMPLICIT = -3
const EMPTY_IMPLICIT = -2
const EMPTY = -1
const BASIC_SOLID = 1
const BASIC_SLOPE = 2

const binds = {
	BASIC_SOLID: [BASIC_SLOPE],
	BASIC_SLOPE: [BASIC_SOLID],
}

func _is_tile_bound(id, neighbor_id):
	return neighbor_id in binds[id]

func _forward_subtile_selection(id, bitmask, tilemap, tile_location):
	var x = tile_location.x
	var y = tile_location.y
	var subtiles = get_subtiles(id)
	
	match id:
		BASIC_SLOPE:
			for key_y in slope_mask.get_rows():
				for key_x in slope_mask.get_columns(key_y):
					var current_vector = Vector2(key_x,key_y)
					for key_z in slope_mask.get_mask_number(key_y,key_x):
						var current_mask = slope_mask.get_mask(key_y, key_x, key_z)
						if get_tile_types(x,y,tilemap,current_mask):
							return current_vector
							break

func get_subtiles(autotile_id):
	var return_values = []
	var size = autotile_get_size(autotile_id)
	var region = tile_get_region(autotile_id)
	var end_x = region.size.x / size.x
	var end_y = region.size.y / size.y
	
	for y in range(end_y):
		for x in range(end_x):
			var coord = Vector2(x,y)
			var mask = autotile_get_bitmask(autotile_id, coord)
			if mask != 0:
				return_values.push_back({
					"coord": coord,
					"mask": mask
				})
	return return_values

func get_tile_types(x, y,tilemap, extra_mask=null):
	var array_output = []
	for column in 3:
		for row in 3:
			array_output.append(tilemap.get_cellv(Vector2(x, y) + Vector2(row-1, column-1)))
	for n in range(extra_mask.size()):
		if extra_mask[n] == BASIC_IMPLICIT:
			if array_output[n] == BASIC_SOLID or array_output[n] == BASIC_SLOPE:
				array_output[n] = BASIC_IMPLICIT
		if extra_mask[n] == EMPTY_IMPLICIT:
			array_output[n] = EMPTY_IMPLICIT
	if extra_mask == array_output:
		return true
	return false

