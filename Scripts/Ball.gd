extends RigidBody2D

const MAXSPEED=300000
const SPEEDUP=400

func _physics_process(delta):
		
	var bodies=get_colliding_bodies()
	for body in bodies:
		if body.is_in_group("Brick"):
			body.free()
		elif body.get_name()=="Paddle":
			var speed=self.linear_velocity.length()
			var reference:Position2D=body.get_node("Reference")
			var direction:Vector2=self.position - reference.global_position
			var velocity=direction.normalized()*min(speed+SPEEDUP*delta,MAXSPEED*delta)
			self.linear_velocity=velocity
	if self.position.y>self.get_viewport_rect().end.y:
		print("over")
		self.free()
