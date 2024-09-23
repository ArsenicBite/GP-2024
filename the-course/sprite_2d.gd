extends Sprite2D
#Extends an existing class

# Called when the node enters the scene tree for the first time.
func _ready() -> void:  #_ready is whenever the node is ready
	pass # Replace with function body.

var speed = 2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	translate(Vector2(3, speed * delta))
	pass
