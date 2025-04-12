extends Node  # NO class_name here!

var components = []
var wires = []

func register_component(component):
	components.append(component)
	print("Registered:", component.name)

func register_wire(wire):
	wires.append(wire)
	calculate_circuit()

func calculate_circuit():
	for wire in wires:
		if wire.is_connected:
			var start = wire.start_component
			var end = wire.end_component
			# Use is_instance_valid() for safety
			if is_instance_valid(start) and is_instance_valid(end):
				if start.is_class("Battery") and end.is_class("Resistor"):
					end.current = start.voltage / end.resistance
					end.update_voltage()
