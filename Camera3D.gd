extends Camera3D


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var root_node = get_parent()
	var p1 = root_node.get_node("Player").position
	var p2 = root_node.get_node("Player2").position
	
	transform.origin.x = (p1.x+p2.x)/2
	transform.origin.z = clamp(remap((p2.x-p1.x),0, 10, 5, 20), 5, 20)
	print("Teste: ", p2.x-p1.x)
	
	pass
