class_name Player
extends KinematicBody2D
tool

const TEX_TORSO = preload("res://assets/sprites/player/sp_player_torso.png")
const TEX_LEGS  = preload("res://assets/sprites/player/sp_player_legs.png")
const TEX_BALL  = preload("res://assets/sprites/player/sp_player_ball.png")
const TEX_MONO  = preload("res://assets/sprites/player/sp_player_mono.png")

# All player spritesheets must have 12 columns
enum Size {
	SHEET = 12,
	TORSO = 12,
	LEGS  = 3,
	BALL  = 2,
	MONO  = 1,
	
	HALF_TORSO = 72,
	HALF_MONO  = 10
	
	OFF_CROUCH = 56,
	OFF_RUN    = 62,
	
	CARDINAL   = 7,
}

enum State{
	DEFAULT = 0,
	BALL = 1,
	MONO = 2,
	
	RIGHT = 0,
	LEFT  = 1,
	CENTRE= 2,
	
	N  = 0,
	NE = 1,
	E  = 2,
	SE = 3,
	S  = 4,
	SW = 5,
	W  = 6,
	NW = 7
}

onready var anim = get_node("AnimationPlayer")
onready var tree = get_node("AnimationTree")
onready var sp_upper = get_node("SpriteUpper")
onready var sp_lower = get_node("SpriteLower")

onready var state = State.DEFAULT
onready var dir   = State.RIGHT
onready var aim   = State.N

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# Called every physics step. 'delta' is the elapsed time since the previous step.
#func _physics_process(delta):
#	pass

func _on_anim_animation_changed(old_name, new_name):
	pass

func change_texture(state:int):
	match (state):
		State.DEFAULT:
			sp_upper.visible = true
			sp_upper.texture = TEX_TORSO
			sp_upper.hframes = Size.SHEET
			sp_upper.vframes = Size.TORSO
			
			sp_lower.visible = true
			sp_lower.texture = TEX_LEGS
			sp_lower.hframes = Size.SHEET
			sp_lower.vframes = Size.LEGS
		State.BALL:
			sp_lower.visible = true
			sp_lower.texture = TEX_BALL
			sp_lower.hframes = Size.SHEET
			sp_lower.vframes = Size.BALL
		State.MONO:
			sp_upper.visible = true
			sp_upper.texture = TEX_MONO
			sp_upper.hframes = Size.SHEET
			sp_upper.vframes = Size.MONO
		_:
			sp_upper.visible = true
			sp_lower.visible = true

func get_aim():
	pass
