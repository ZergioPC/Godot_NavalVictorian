extends CharacterBody2D

const speed = 300

""" Funciones Propias """



""" Funciones del Motor """

func _physics_process(_delta:float) -> void:
    var dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
    velocity = dir*speed
    move_and_slide()
