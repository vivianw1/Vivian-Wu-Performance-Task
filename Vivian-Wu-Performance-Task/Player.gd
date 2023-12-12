extends Area2D


@export var speed = 400 

func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_just_pressed("move right"):
		velocity.x += 1
	if Input.is_action_just_pressed("move left"):
		velocity.x -= 1
	if Input.is_action_just_pressed("move up"):
		velocity.y -= 1
	if Input.is_action_just_pressed("move down"):
		velocity.y += 1
	
	position += velocity * delta

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
