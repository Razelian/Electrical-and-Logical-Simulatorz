extends Area2D
class_name Battery  # Must be FIRST LINE after extends!

# Export must be at class level (no indentation)
export var voltage := 9.0

func _ready():
	# Access autoload without class_name
	get_node("/root/CircuitManager").register_component(self)
	$Label.text = str(voltage) + "V"
