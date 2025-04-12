extends CanvasLayer

# Remove onready from here and move to _ready()
var component_container

func _ready():
	# Initialize references when node is ready
	component_container = $ComponentContainer
	print("Available nodes at root: ", get_tree().root.get_children())
	print("Main node children: ", get_tree().root.get_child(0).get_children())
	

func _on_resistor_button_pressed() -> void:
	#var resistor = load("res://scenes/components/Resistor.tscn").instance()
	#component_container.add_child(resistor)
	#resistor.position = get_viewport().get_mouse_position()
	var resistor = load("res://scenes/components/Resistor.tscn")
	if resistor:  # Check if resource loaded
		resistor = resistor.instance()
		component_container.add_child(resistor)
		resistor.position = get_viewport().get_mouse_position()


func _on_battery_button_pressed() -> void:
	var bat = load("res://scenes/components/Battery.tscn")
	if bat:
		var battery = bat.instance()
		component_container.add_child(battery)
		battery.position = get_viewport().get_mouse_position()


func _on_wire_button_pressed() -> void:
	var wire = load("res://scenes/components/Wire.tscn").instance()
	component_container.add_child(wire)
