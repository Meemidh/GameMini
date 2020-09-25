extends Node2D



func _ready():
	$wake.play()




func _on_wake_finished():
	get_tree().change_scene("res://bedroom.tscn")
