extends Node3D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$Node3D/SubViewport/Camera3D.global_transform = $Node3D/Marker3D.global_transform
