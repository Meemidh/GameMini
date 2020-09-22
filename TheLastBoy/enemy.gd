extends KinematicBody2D

onready var Bullet_scene = preload("res://Bullet.tscn")
onready var player = get_node("../player")
var vincent = null
var velocity = Vector2()
var gravity = 200
var max_grav = 30

var react_time = 200
var dir = 0
var next_dir = 0
var next_dir_time = 0
var target_player_dist =  250
var next_jump_time = -1

var boss_hp = 100

var dead = false

func set_dir(target_dir):
	if next_dir != target_dir:
		next_dir = target_dir
		next_dir_time = OS.get_ticks_msec() + react_time
		
func _physics_process(delta):
	if player.position.x < position.x - target_player_dist:
		set_dir(-1)
		$AnimatedSprite.play("left")
		
	elif player.position.x > position.x + target_player_dist:
		set_dir(1)
		$AnimatedSprite.play("right")
	
	else:
		set_dir(0)
		$AnimatedSprite.play("idle")
			
	if OS.get_ticks_msec() > next_dir_time:
			dir = next_dir

				
	velocity.x = dir * 20000
			
	if is_on_floor() and velocity.y > 0:
		velocity.y = 0
		
	velocity = move_and_slide(velocity * delta)




func _on_Shoot_body_entered(body):
	if body != self:
		vincent = body


func _on_Shoot_body_exited(body):
	vincent = null
	
func fire():
	var bullet = Bullet_scene.instance()
	bullet.position  =  get_global_position()  
	bullet.player = player
	get_parent().add_child(bullet)
	$Timer.set_wait_time(1)

func _on_Timer_timeout():
	fire()


func _on_HitBox_area_entered(area):
	if area.is_in_group("knives"):
		velocity = Vector2.RIGHT * 5000
	
		boss_hp -= 10
		print("1 hit")
		if boss_hp == 0:
			dead = true
			queue_free()
