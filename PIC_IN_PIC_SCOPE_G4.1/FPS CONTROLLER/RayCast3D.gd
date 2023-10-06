extends RayCast3D

@onready var raycast = $"."
@onready var decal = preload("res://FPS CONTROLLER/decal/decal.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("fire"):
		if raycast.is_colliding():
			var col_nor = raycast.get_collision_normal()
			var col_point = raycast.get_collision_point()
			var b = decal.instantiate()
			raycast.get_collider().add_child(b)
			b.global_transform.origin = col_point
			if col_nor == Vector3.DOWN:
				b.rotation_degrees.x = 90
			elif col_nor != Vector3.UP:
				b.look_at(col_point - col_nor, Vector3(0,1,0))
