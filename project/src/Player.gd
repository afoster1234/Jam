extends KinematicBody2D

const GRAVITY := 25
const JUMP := 1000
const SPEED := 500

onready var ground_ray := get_node("RayCast2D")

var velocity := Vector2.ZERO
 
func _process(delta):
	velocity.x = 0
	if Input.is_action_pressed("walk_right"):
		velocity.x += SPEED
	if Input.is_action_pressed("walk_left"):
		velocity.x -= SPEED
	velocity.y += GRAVITY
	if Input.is_action_just_pressed("jump") and ground_ray.is_colliding():
		velocity.y -= JUMP
		$Jump.play()
	velocity = move_and_slide(velocity)
	if velocity.x < 0:
		$Sprite.flip_h = true
		$Sprite/AnimationPlayer.play("walk")
	if velocity.x > 0:
		$Sprite.flip_h = false
		$Sprite/AnimationPlayer.play("walk")
	if velocity.x == 0:
		$Sprite/AnimationPlayer.play("idle")
