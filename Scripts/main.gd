extends Node2D

func _ready():
	# Verify the exact file exists
	if ResourceLoader.exists("res://scenes/components/Battery.tscn"):
		var battery = load("res://scenes/components/Battery.tscn").instance()
		$ComponentContainer.add_child(battery)
	else:
		print("Error: Battery.tscn not found at expected path")
		print("Current files at res://scenes/components/: ", 
			DirAccess.get_files_at("res://scenes/components/"))
