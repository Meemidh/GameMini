extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$"/root/HUD"/HpBar.visible = true
	$"/root/Hpenemy"/hpenemy.visible = false
	$"/root/Hpenemy"/BOSS.visible = false
	
	$bed1.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
