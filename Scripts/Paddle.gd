extends KinematicBody2D


const ball_scene=preload("res://Mini Scenes/Ball.tscn")
var background:Sprite
var ball

var centerX
var backgroundPosition
var backgroundScale
var speed=250
var velocity = Vector2()

func _ready():
	background=get_node("../Background")
	backgroundPosition=background.position
	backgroundScale=background.scale
	centerX=get_viewport().size.x/2

func _physics_process(delta):
	var mouse=get_global_mouse_position()
	position.x=mouse.x
	
	var shiftMagnitude=(centerX-mouse.x)*0.02
	#parallax effect
	background.position.x=backgroundPosition.x+shiftMagnitude
	#zoom effect
	background.scale.x=backgroundScale.x+abs(shiftMagnitude*0.001)
	background.scale.y=backgroundScale.y+abs(shiftMagnitude*0.001)

func _input(event):
	if event is InputEventMouseButton and ball==null:
		if event.is_pressed() && event.button_index==BUTTON_LEFT:
			ball=ball_scene.instance()
			ball.position=self.position-Vector2(0,16)
			self.get_tree().root.add_child(ball)
