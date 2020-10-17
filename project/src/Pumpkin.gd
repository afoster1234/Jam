extends Area2D

signal obtained

func _on_Pumpkin_body_entered(body):
	emit_signal("obtained")
	queue_free()
