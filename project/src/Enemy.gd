extends Area2D

func _on_Enemy_body_entered(body):
	var _scene := get_tree().change_scene("res://src/Death.tscn")
