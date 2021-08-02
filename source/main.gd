extends Node

# onready var root = get_node("/root");
onready var def_res = Vector2(640,640);

# Called when the node enters the scene tree for the first time.
func _ready():
	var win_centre = Vector2(OS.get_window_position() + OS.get_window_size()/2)
	OS.set_window_size(def_res);
	OS.set_window_position(win_centre - OS.get_window_size()/2)
#	$"/root".size=Vector2(512,512);

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

# Called at set intervals. 'delta' is the elapsed time since the previous step.
#func _physics_process(delta):
#	pass
