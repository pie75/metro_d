extends KinematicBody2D


# Declare member variables here. Examples:
export(bool) var dir_counter_clockwise
export(bool) var can_not_climb_walls
export(int) var speed = 20
export(int) var health = 100

var gravity = 120
var velocity = Vector2.ZERO
var snap = Vector2.ZERO
var floor_max_angle = deg2rad(45)


# Called when the node enters the scene tree for the first time.
func _ready():
	if dir_counter_clockwise:
		speed = speed-speed*2

func _kill():
	queue_free()

func _process(delta):
	if health <= 0:
		_kill()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	velocity.x = speed
	velocity.y += gravity * delta
	snap = transform.y * 6
	velocity = move_and_slide_with_snap(velocity.rotated(rotation), snap, -transform.y, true, 4, floor_max_angle)
	velocity = velocity.rotated(-rotation)

	if is_on_floor():
		rotation = get_floor_normal().angle() + PI/2

	if is_on_wall():
		var collision = get_slide_collision(0)
		if collision.collider.name == "TileMap":
			if can_not_climb_walls:
				if int(collision.normal.angle()) == int(PI) or int(collision.normal.angle()) == 0:
					speed = speed-speed*2
			else:
				rotation = collision.normal.angle() + PI/2


func _on_Button_pressed():
	health -= 25
