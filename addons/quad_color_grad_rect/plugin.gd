@tool
extends EditorPlugin


func _enable_plugin() -> void:
	# Add autoloads here.
	pass


func _disable_plugin() -> void:
	# Remove autoloads here.
	pass


func _enter_tree() -> void:
	# Initialization of the plugin goes here.
	add_custom_type(
		"QuadGradientRect", "ColorRect", 
		preload("res://addons/quad_color_grad_rect/scripts/quad_gradient_rect.gd"), 
		preload("res://addons/quad_color_grad_rect/icons/quad_gradient_rect.png")
	)


func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	remove_custom_type("QuadGradientRect")
