extends Node2D
var rng = RandomNumberGenerator.new()


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var tilemap = $TileMap
var platform_size : int = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	var drawing : bool = false
	for i in range(-21,12): # height
		for j in range(-16,5): #width
			if platform_size == 0 && drawing == false:
				rng.randomize()
				platform_size = rng.randf_range(0, 5)
				j += platform_size + rng.randf_range(3, 10)

			while 	platform_size > 0:
				platform_size -= 1
				tilemap.set_cell(i,j, 0)




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	print(TileMap.get_used_cells())
