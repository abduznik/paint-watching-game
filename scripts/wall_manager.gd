extends CSGBox3D

# Load the splatter scene so we can copy it
# MAKE SURE the path inside ("...") matches exactly where your file is!
var splatter_scene = preload("res://paint_splatter.tscn")
var splatter_deadzone = 0.3

func _ready():
	# Spawn 20 splatters when the game starts
	for i in range(20):
		spawn_splatter()

func spawn_splatter():
	var new_splatter = splatter_scene.instantiate()
	add_child(new_splatter)
	
	# Random Position Logic
	# Our wall is 4 meters wide (X) and 3 meters tall (Y)
	# So we pick random spots within that range
	var random_x = randf_range(-1.8, 1.8)
	var random_y = randf_range(1.0, 1.4)
	
	# Position the splatter
	# Z is 0.26 to sit slightly in front of the wall surface (which is at 0.25)
	new_splatter.position = Vector3(random_x, random_y, splatter_deadzone)
	
	# Random rotation so they don't all look identical
	new_splatter.rotation.z = randf_range(0, 6.28)
