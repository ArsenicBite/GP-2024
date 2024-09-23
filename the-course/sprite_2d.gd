extends Sprite2D
#Extends an existing class

# Called when the node enters the scene tree for the first time.
func _ready():  #_ready is whenever the node is ready
	pass # Replace with function body.

@export var speed:float
@export var rot_speed:float

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	#rotate(deg_to_rad(rot_speed * delta))
	#translate(Vector2(3, speed * delta))
	#global_translate(Vector2(0, speed * delta))
	if Input.is_key_pressed(KEY_UP):
		translate(Vector2(0, - speed * delta))
	if Input.is_key_pressed(KEY_DOWN):
		translate(Vector2(0, + speed * delta))
	if Input.is_key_pressed(KEY_LEFT):
		translate(Vector2(- speed * delta, + 0))
		rotate(deg_to_rad(-rot_speed * delta))
	if Input.is_key_pressed(KEY_RIGHT):
		translate(Vector2(speed * delta, + 0))
		rotate(deg_to_rad(rot_speed * delta))
	pass
