extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass



		



func _on_gotonote1_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton && event.is_pressed(): 
		get_tree().change_scene("res://note1.tscn")
