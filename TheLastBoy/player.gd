extends KinematicBody2D

const speed = 600
const gravity = 30
const jump_power = -1195

const Floor = Vector2(0,-1)
var velocity = Vector2()

var on_ground = true

func _physics_process(delta):
	
		
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
		$AnimatedSprite.play("runRight")
		$AnimatedSprite.flip_h = false
		
		
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -speed
		$AnimatedSprite.play("runRight")
		$AnimatedSprite.flip_h = true
	
	
	elif Input.is_action_pressed("ui_attack"):
		
		$AnimatedSprite.play("attack") 
		
	
		
		
		
	else:
		velocity.x = 0	
		if on_ground == true:
			$AnimatedSprite.play("Idle")
		
	
	if Input.is_action_pressed("ui_up"):
		if on_ground == true:
			velocity.y = jump_power
			on_ground = false
			
	velocity.y += gravity 
	
	
	
	if is_on_floor():
		on_ground = true
	else:
		on_ground = false
		if velocity.y < 0:
			$AnimatedSprite.play("jump")
			
	

	
				
		
	
	
	velocity = move_and_slide(velocity,Floor)
