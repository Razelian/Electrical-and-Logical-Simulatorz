extends Line2D

var start_component = null
var end_component = null
var connection_complete := false

func _ready():
	width = 3
	default_color = Color(0.8, 0.2, 0.2)

func complete_connection(component):
	if not start_component:
		start_component = component
	else:
		end_component = component
		connection_complete = true
		get_node("/root/CircuitManager").register_wire(self)
