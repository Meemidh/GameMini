extends KinematicBody2D


const speed = 400
const gravity = 30
const jump_power = -1100
const Floor = Vector2(0,-1)
var velocity = Vector2()
var on_ground = true
var isAttacking = false


func _physics_process(delta):
	
		
	if Input.is_action_pressed("ui_right") and isAttacking == false:
		get_node("AttackArea").set_scale(Vector2(1, 1))
		velocity.x = speed
		$AnimatedSprite.play("runRight")
		$AnimatedSprite.flip_h = false
		
		
	elif Input.is_action_pressed("ui_left") and isAttacking == false:
		get_node("AttackArea").set_scale(Vector2(-1, 1))
		velocity.x = -speed
		$AnimatedSprite.play("runRight")
		$AnimatedSprite.flip_h = true
		
	else:
		velocity.x = 0	
		if on_ground == true and isAttacking == false:
			$AnimatedSprite.play("Idle")		
	
	if Input.is_action_pressed("ui_up") and isAttacking == false:
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
	
	if Input.is_action_just_pressed("attack"):
		$AnimatedSprite.play("attack")
		isAttacking = true
		$AttackArea/CollisionAttack.disabled = false
		
	
		
	velocity = move_and_slide(velocity,Floor)
	

func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "attack":
		$AttackArea/CollisionAttack.disabled = true
		isAttacking = false
	if $AnimatedSprite.animation == "jump":
		isAttacking = false
		
