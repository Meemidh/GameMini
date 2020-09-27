extends Area2D

var velocity = Vector2()
var look_vec = Vector2()
var player = null
var speed = 15

export var damage = 10

func _ready():
	look_vec  = player.position - global_position	
	
func _physics_process(delta):
	velocity = Vector2()
	
	velocity = velocity.move_toward(look_vec, delta)
	velocity = velocity.normalized() * speed
	position += velocity 


func _on_Bullet_body_entered(body):
	if body.name == "player":
		$"/root/HUD".hp -= 5
