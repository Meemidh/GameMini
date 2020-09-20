extends Node

signal max_change(new_max)
signal changed(new_health)
signal depleted

export(int) var max_health = 50 setget set_max
onready var hp = max_health setget set_hp

func _ready():
	_initialize()
func set_max(new_max):
	max_health = new_max
	max_health = max(1, new_max)
	emit_signal("max_change", max_health)
	
func set_hp(new_value):
	hp = new_value
	hp = clamp(hp, 0 , max_health)
	emit_signal("changed", hp)
	
	if hp == 0:
		emit_signal("depleted")

func _initialize():
	emit_signal("max_health", max_health)
	emit_signal("changed", hp)
