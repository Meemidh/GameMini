extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_sisghost1_body_entered(body):
	if body.name == "player":
		$sis1.play()
		



func _on_sis1_finished():
	queue_free()
	
	
