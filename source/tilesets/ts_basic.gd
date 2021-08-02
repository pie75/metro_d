extends TileSet
tool

# Declare member variables here. Examples:
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
			match bitmap:
				24:
					

func get_subtiles(autotile_id):
	# Helper function for iterating over subtiles
	# Return an array of dictionaries with subtile texture co-ords,
	# and subtile bitmask
	# n.b. I did not account for spacing, I leave that to you
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
