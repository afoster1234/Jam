extends Node

var pumpkins_remaining := 5

func _pickup():
	pumpkins_remaining -= 1
	$Player/Pumpkins.text = String(pumpkins_remaining)

func _on_P1_obtained():
	_pickup()

func _on_P2_obtained():
	_pickup()

func _on_P3_obtained():
	_pickup()

func _on_P4_obtained():
	_pickup()

func _on_P5_obtained():
	_pickup()
