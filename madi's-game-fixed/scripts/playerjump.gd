extends CharacterBody2D

var has_double_jump : bool = false
const SPEED = 130.0
const JUMP_VELOCITY = -400.0

#Figure out how body is connected to the gravity with a node
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta): 
	# Add the gravity
	if not is_on_floor():
		velocity.y += gravity * delta
	if is_on_floor():
			has_double_jump = true 
# Handle Jump
	if Input.is_action_just_pressed("ui_accept"):
		
			
		
			if is_on_floor():
				velocity.y=JUMP_VELOCITY
			else:
				if has_double_jump:
					velocity.y = JUMP_VELOCITY
					has_double_jump = false
		
	
	
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
