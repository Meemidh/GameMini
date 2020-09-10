extends KinematicBody2D

onready var Bullet_scene = preload("res://Bullet.tscn")
onready var player = get_node("../Player")

var velocity = Vector2()
var gravity = 30
var max_grav = 300

var react_time = 200
var dir = 0
var next_dir = 0
var next_dir_time = 0
var target_player_dist =  350
var next_jump_time = -1

func set_dir(target_dir):
	if next_dir != target_dir:
		next_dir = target_dir
		next_dir_time = OS.get_ticks_msec() + react_time

func _process(delta):
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
	
	if OS.get_ticks_msec() > next_jump_time and next_jump_time != -1 and is_on_floor():
		velocity.y = -1100
		next_jump_time = -1
		
	velocity.x = dir * 15000
	
	if player.position.y < position.y - 64 and next_jump_time == -1:
		next_jump_time = OS.get_ticks_msec() + react_time
	
	velocity.y += gravity * delta;
	if velocity.y > max_grav:
		velocity.y = max_grav
	
	if is_on_floor() and velocity.y > 0:
		velocity.y = 0

	velocity = move_and_slide(velocity * delta)
