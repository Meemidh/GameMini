extends CanvasLayer

var hp = 10
var current_hp = 100

func _ready():
	pass 

func _process(delta):
	$HpBar.value = hp
	
	if hp != current_hp:
		current_hp = hp
	
	if hp == 0:
		$HpBar.visible = false 
		$"/root/HUD".hp = 10
		get_tree().change_scene("res://Gameover.tscn")
