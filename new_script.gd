extends KinematicBody2D

enum{up,right,down,left}
const Ball = preload("res://V1.00/PNG/GUN_01_[square_frame]_01_V1.00.png")

export var maxspeed = 350
export var acceleration = 750
export var friction = 8000

var axis = Vector2."Zero"
var velocity = Vector2."Zero"

var direction =  Down

func _ready():
	pass
func _physics_process(delta):
	get_imput_axis()
	apply_rotation()
	
	if(axis == Vector2.Zero):
			apply_friction(friction*delta)
			$AnimationPlayer.play("Idle")
		else:
			apply_motion(acceleration*delta)
			$AnimationPlayer.play("Walk")
		velocity = move_and_slide(velocity)
