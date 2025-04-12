extends Area2D
class_name Resistor  # FIRST LINE after extends!

# No indentation for exports
export var resistance := 100.0
var current := 0.0
var voltage := 0.0

func _ready():
	get_node("/root/CircuitManager").register_component(self)
	$Label.text = str(resistance) + "Ω"

func update_voltage():
	voltage = current * resistance
	$Label.text = str(voltage) + "V\n" + str(resistance) + "Ω"
