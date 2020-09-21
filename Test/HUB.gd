extends Control

signal health_changed(health)


func _ready():
	connect("health_changed",self,"_on_Health_health_changed")
	
	var health_node = null
	for node in get_tree().get_nodes_in_group("vincent"):
		if node.name == "Player":
			health_node = node.get_node("Health")
			break
	get_node("Bars/LifeBar").initialized(health_node.max_health)
	
	
	
func _on_Health_health_changed(health):
	emit_signal("health_changed", health)
	
