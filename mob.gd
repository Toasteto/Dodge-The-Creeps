extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var mob_types = $AnimatedSprite2D.sprite_frames.get_animation_names()   
		#Grabs and returns an array of animation from "Walk, Fly, Swim"
	$AnimatedSprite2D.play(mob_types[randi() % mob_types.size()])   
		#randi() % n sselects a random inetger between 0 and n-1.
func _on_visible_on_screen_enabler_2d_screen_exited():
	queue_free()
