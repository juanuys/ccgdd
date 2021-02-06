extends Node2D

func _input(event):
	if Input.is_key_pressed(KEY_RIGHT):
		print_debug("right key")

func _ready():
	$Viewport/character/AnimationPlayer.set_autoplay("rigAction")
	$Viewport/character/AnimationPlayer.play("rigAction")
	var anim = $Viewport/character/AnimationPlayer.get_animation("rigAction")
	anim.set_loop(true)
	
	set_process_input(true)


func _process(delta):
	var texture = $Viewport.get_texture()
	$Avatar.texture = texture
