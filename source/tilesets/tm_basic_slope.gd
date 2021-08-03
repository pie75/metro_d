class_name SlopeMask
extends TileMask
tool

func _init():
	masks = {
# Row #0  -  Second Value is Columns
		0: {
			0: [
				-1, -1, -1,
				-1,  2,  1,
				-1,  1, -1
			],
			1: [
				-1, -1, -1,
				-1,  2, -1,
				-1,  3, -1
			]
		},
# Row #1
		1: {
			0: [
				-1,  1, -1,
				-1,  2,  1,
				-1, -1, -1
			],
		},
# Row #2
		2: {
			0: [
				-1, -1, -1,
				-1,  2,  1,
				-1,  1,  3
			],
		},
# Row #3
		3: {
			0: [
				-1,  1,  3,
				-1,  2,  1,
				-1, -1, -1
			],
		}
	}
