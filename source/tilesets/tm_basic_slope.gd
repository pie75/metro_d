class_name SlopeMask
extends TileMask
tool

func _init():
	masks = {
# Row #0  -  Second Value is Columns
		0: {
			0: {
				0: [
				-1, -1, -1,
				-1,  2,  1,
				-1,  1, -1
				],
			},
			1: {
				0: [
				-1, -1, -1,
				 1,  2, -1,
				-1,  1, -1
				],
			},
			2: {
				0: [
				-1, -1, -1,
				-1,  2, -1,
				-1,  3, -1
				],
			},
			3: {
				0: [
				-1, -1, -1,
				-1,  2,  2,
				-1,  1, -1
				],
			},
			4: {
				0: [
				-1, -1, -1,
				 2,  2,  1,
				 1,  3,  3
				],
			},
			5: {
				0: [
				-1, -1, -1,
				 1,  2,  2,
				-1,  3,  1
				],
			},
			6: {
				0: [
				-1, -1, -1,
				 2,  2,  1,
				 1,  3, -1
				],
			},
			7: {
				0: [
				-1, -1, -1,
				 2,  2,  2,
				 3,  3,  3
				],
			},
			8: {
				0: [
				-1, -1, -1,
				 2,  2,  2,
				-1,  3,  3
				],
			},
			9: {
				0: [
				-1, -1, -1,
				 2,  2,  2,
				 3,  3, -1
				],
			},
			10: {
				0: [
				-1, -1, -1,
				 2,  2,  2,
				-1,  3, -1
				],
			},
			11: {
				0: [
					-1, -1, -1,
					 2,  2,  2,
					-1, -1, -1
				],
				1: [
					-1, -1, -1,
					 2,  2,  2,
					 3, -1, -1
				],
				2: [
					-1, -1, -1,
					 2,  2,  2,
					-1, -1,  3
				],
				3: [
					-1, -1, -1,
					 2,  2,  2,
					 3, -1,  3
				],
			}
		},
# Row #1
		1: {
			0: {
				0: [
				-1,  1, -1,
				-1,  2,  1,
				-1, -1, -1
				],
			},
			1: {
				0: [
				-1,  1, -1,
				 1,  2, -1,
				-1, -1, -1
				],
			},
			2: {
				0: [
				-1,  3, -1,
				-1,  2, -1,
				-1, -1, -1
				],
			},
			3: {
				0: [
				 3,  3,  1,
				 1,  2,  2,
				-1, -1, -1
				],
			},
			4: {
				0: [
				-1,  1, -1,
				 2,  2, -1,
				-1, -1, -1
				],
			},
			5: {
				0: [
				-1, -1, -1,
				 1,  2,  2,
				-1, -1,  1
				],
			},
			6: {
				0: [
				-1, -1, -1,
				 2,  2,  1,
				 1, -1, -1
				],
			},
			7: {
				0: [
				 3,  3,  3,
				 2,  2,  2,
				-1, -1, -1
				],
			},
			8: {
				0: [
				-1, -1, -1,
				 2,  2,  2,
				-1,  3,  3
				],
			},
			9: {
				0: [
				-1, -1, -1,
				 2,  2,  2,
				 3,  3, -1
				],
			},
			10: {
				0: [
				-1, -1, -1,
				 2,  2,  2,
				-1,  3, -1
				],
			},
			11: {
				0: [
				-1, -1, -1,
				 2,  2,  2,
				-1, -1, -1
				],
				1: [
				 3, -1, -1,
				 2,  2,  2,
				-1, -1, -1
				],
				2: [
				-1, -1,  3,
				 2,  2,  2,
				-1, -1, -1
				],
				3: [
				 3, -1,  3,
				 2,  2,  2,
				-1, -1, -1
				],
			}
		},
# Row #2
		2: {
			0: {
				0: [
				-1, -1, -1,
				-1,  2,  1,
				-1,  1,  3
				],
			},
			1: {
				0: [
				-1, -1, -1,
				 1,  2, -1,
				 3,  1, -1
				],
			},
			2: {
				0: [
				-1, -1, -1,
				 3,  2, -1,
				-1, -1, -1
				],
			},
			3: {
				0: [
				-1, -1, -1,
				 1,  2,  2,
				 3,  3,  1
				],
			},
			4: {
				0: [
				-1, -1, -1,
				 2,  2, -1,
				-1,  1, -1
				],
			},
			5: {
				0: [
				-1, -1,  1,
				 1,  2,  2,
				-1, -1, -1
				],
			},
			6: {
				0: [
				 1, -1, -1,
				 2,  2,  1,
				-1, -1, -1
				],
			},
			7: {
				0: [
				-1, -1, -1,
				 1,  2,  1,
				 3,  3,  3
				],
			},
			8: {
				0: [
				-1, -1, -1,
				 1,  2,  1,
				-1,  3,  3
				],
			},
			9: {
				0: [
				-1, -1, -1,
				 1,  2,  1,
				 3,  3, -1
				],
			},
			10: {
				0: [
				-1, -1, -1,
				 1,  2,  1,
				-1,  3, -1
				],
			},
			11: {
				0: [
				-1, -1, -1,
				 1,  2,  1,
				-1, -1, -1
				],
				1: [
				-1, -1, -1,
				 1,  2,  1,
				 3, -1, -1
				],
				2: [
				-1, -1, -1,
				 1,  2,  1,
				-1, -1,  3
				],
				3: [
				-1, -1, -1,
				 1,  2,  1,
				 3, -1,  3
				],
			}
		},
# Row #3
		3: {
			0: {
				0: [
				-1,  1,  3,
				-1,  2,  1,
				-1, -1, -1
				],
			},
			1: {
				0: [
				 3,  1, -1,
				 1,  2, -1,
				-1, -1, -1
				],
			},
			2: {
				0: [
				-1, -1, -1,
				-1,  2,  3,
				-1, -1, -1
				],
			},
			3: {
				0: [
				-1,  1, -1,
				-1,  2,  2,
				-1, -1, -1
				],
			},
			4: {
				0: [
				 1,  3,  3,
				 2,  2,  1,
				-1, -1, -1
				],
			},
			5: {
				0: [
				-1,  3,  1,
				 1,  2,  2,
				-1, -1, -1
				],
			},
			6: {
				0: [
				 1,  3, -1,
				 2,  2,  1,
				-1, -1, -1
				],
			},
			7: {
				0: [
				 3,  3,  3,
				 1,  2,  1,
				-1, -1, -1
				],
			},
			8: {
				0: [
				-1,  3,  3,
				 1,  2,  1,
				-1, -1, -1
				],
			},
			9: {
				0: [
				 3,  3, -1,
				 1,  2,  1,
				-1, -1, -1
				],
			},
			10: {
				0: [
				-1,  3, -1,
				 1,  2,  1,
				-1, -1, -1
				],
			},
			11: {
				0: [
				-1, -1, -1,
				 1,  2,  1,
				-1, -1, -1
				],
				1: [
				 3, -1, -1,
				 1,  2,  1,
				-1, -1, -1
				],
				2: [
				-1, -1,  3,
				 1,  2,  1,
				-1, -1, -1
				],
				3: [
				 3, -1,  3,
				 1,  2,  1,
				-1, -1, -1
				],
			}
		}
	}
