extends Decal

func _ready():
	# 1. Pick a random hue between 50 and 180 degrees
	var random_hue = randf_range(50.0, 180.0)
	
	# 2. Convert to Godot's 0-1 range (degrees / 360)
	var godot_hue = random_hue / 360.0
	
	# 3. Create the color (Hue, Saturation=0.8, Value=1.0)
	# I lowered saturation slightly to 0.8 so the paint looks a bit more realistic/wet
	var paint_color = Color.from_hsv(godot_hue, 0.8, 1.0)
	
	# 4. Apply the color to the Decal's "Modulate" property
	modulate = paint_color
