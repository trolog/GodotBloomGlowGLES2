extends Node2D

export(Texture) var run_emission_texture1
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
export(Texture) var run_emission_texture
func _process(delta):
	if(Input.is_action_just_pressed("ui_accept")):
		$AnimatedSprite.animation = "run"
		var mat = $AnimatedSprite.material
		mat.set_shader_param("emission_teture",run_emission_texture)
		
		
	if(Input.is_action_just_pressed("ui_down")):
		var mat = $AnimatedSprite.material
		mat.set_shader_param("emission_teture",run_emission_texture1)
	
	if(Input.is_action_just_pressed("ui_up")):
		$AnimatedSprite.frame = 0
	pass
