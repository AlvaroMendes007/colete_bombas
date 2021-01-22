extends KinematicBody2D

export var speed = 300
onready var spr_player = $sprite

func _ready():
	pass

func _process(delta):
	var dir = Vector2()
	if Input.is_action_pressed("left"):
		spr_player.flip_h = true
		dir.x = -1
		$shape.position.x = -22
		
	#23.18
		
	if Input.is_action_pressed("right"):
		spr_player.flip_h = false
		dir.x = 1
		$shape.position.x = 23.18
	
	if self.position.x < 62:
		self.position.x = 62
	if self.position.x > 450:
		self.position.x = 450
	
	
	move_and_slide(dir * speed)
