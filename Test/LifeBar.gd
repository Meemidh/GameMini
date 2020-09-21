extends HBoxContainer

signal maximum_changed(maximum)
var maximum = 100
var current_hearth = 0

func initialized(max_value):
	maximum = max_value
	$TextureProgress.max_value = maximum
	emit_signal("maximum_changed",maximum)


func _on_HUB_health_changed(health):
	$TextureProgress.value = health
	
	
