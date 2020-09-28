extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$"/root/HUD"/HpBar.visible = false
	$"/root/Hpenemy"/hpenemy.visible = false
	$"/root/Hpenemy"/BOSS.visible = false
	$end2.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



   


func _on_end2_finished():
	get_tree().change_scene("res://Main.tscn")
