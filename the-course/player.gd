extends CharacterBody2D


const SPEED = 500
const JUMP_VELOCITY = -400.0

const TURN_RATE = 180

func _physics_process(delta: float) -> void:

	var r = Input.get_axis("turn_left", "turn_right")
	print (r)

	var rot = deg_to_rad(r * TURN_RATE * delta) 

	var f = Input.get_axis("move_backwards","move_forwards")
	print (f)
	var dir = transform.y * f * SPEED
	
	velocity = dir

	rotate(rot)
	move_and_slide()
