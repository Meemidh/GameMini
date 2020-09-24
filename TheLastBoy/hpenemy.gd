extends CanvasLayer


var boss_hp = 100
var bcurrent_hp = 100

func _ready():
	pass 

func _process(delta):
	$hpenemy.value = boss_hp
	
	if boss_hp != bcurrent_hp:
		bcurrent_hp = boss_hp
	
	if boss_hp == 0:
		$hpenemy.visible = false
		$"/root/Hpenemy".boss_hp = 100
		get_tree().change_scene("res://end.tscn")
