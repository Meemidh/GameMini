extends CanvasLayer

var hp = 100
var current_hp = 100

func _ready():
	pass 

func _process(delta):
	$HpBar.value = hp
	
	if hp != current_hp:
		current_hp = hp
	
	if hp == 0:
		get_tree().change_scene("res://Gameover.tscn")
