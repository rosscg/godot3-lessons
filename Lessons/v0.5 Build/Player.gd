extends Area2D

export var speed = 400  # How fast the player will move (pixels/sec).
var screen_size  # Size of the game window.
signal hit


func _ready():
	screen_size = get_viewport_rect().size
	hide()


func _process(delta):
	var velocity = Vector2()        # The player's movement vector.
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite.play()
	else:
		$AnimatedSprite.stop()
		
	if velocity.x != 0:
		$AnimatedSprite.animation = "right"
	elif velocity.y != 0:
		$AnimatedSprite.animation = "up"
	$AnimatedSprite.flip_h = velocity.x < 0
	$AnimatedSprite.flip_v = velocity.y > 0
		
	position += velocity * delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)


func start():
	  position.x = screen_size.x / 2
	  position.y = screen_size.y / 2
	  show()
	  $CollisionShape2D.disabled = false


func _on_Player_body_entered(body):
	hide()	# Player disappears after being hit.
	emit_signal("hit")	# Player tells the game it has been hit.
	$CollisionShape2D.call_deferred("set_disabled", true)
