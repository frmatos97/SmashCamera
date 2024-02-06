extends RigidBody3D

@export var player_id := 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var p1_input := Input.get_axis("p1_move_left", "p1_move_right") * 1200
	var p2_input := Input.get_axis("p2_move_left", "p2_move_right") * 1200
	
	if (player_id == 0):
		apply_central_force(Vector3.RIGHT * p1_input * delta)
	else:
		apply_central_force(Vector3.RIGHT * p2_input * delta)
	
	pass
