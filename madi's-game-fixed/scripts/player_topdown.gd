extends CharacterBody2D

func _physics_process(delta: float) -> void:
	velocity = Vector2.ZERO
	
	var x = Input.get_axis("ui_left","ui_right")
	var y = Input.get_axis("ui_up","ui_down")
	#hello
	velocity = Vector2(x,y)*10
	
	move_and_slide()
	
@onready var jump_sound = $AudioStreamPlayer # reference the node

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project setting to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

	
