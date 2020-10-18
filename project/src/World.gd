extends Node

signal door_unlocked

var pumpkins_remaining := 5

func _ready():
	$Wind.play()

func _check_door():
	if pumpkins_remaining == 0:
		emit_signal("door_unlocked")
		$Player/Escape.text = ("Find the exit!")

func _pickup():
	pumpkins_remaining -= 1
	$Player/Pumpkins.text = String(pumpkins_remaining)

func _on_door_unlocked():
	$Door/AnimatedSprite.animation = ("open")
	$Player/Locked.text = ("Door is unlocked!")

func _on_P1_obtained():
	$Grab.play()
	_pickup()
	_check_door()

func _on_P2_obtained():
	$Grab.play()
	_pickup()
	_check_door()

func _on_P3_obtained():
	$Grab.play()
	_pickup()
	_check_door()

func _on_P4_obtained():
	$Grab.play()
	_pickup()
	_check_door()

func _on_P5_obtained():
	$Grab.play()
	_pickup()
	_check_door()

func _on_Door_body_entered(body):
	if pumpkins_remaining == 0:
		var _scene = get_tree().change_scene("res://src/Win.tscn")
	else:
		$Player/Locked.text = ("Door is locked!")
