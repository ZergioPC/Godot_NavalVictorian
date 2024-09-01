extends Node2D

func _on_nivel_1_interior_area_body_entered(body:Node2D) -> void:
    if body.name == "Player":
        $AnimationPlayer.play("hideNivel0")

func _on_nivel_1_interior_area_body_exited(body:Node2D) -> void:
    if body.name == "Player":
        $AnimationPlayer.play_backwards("hideNivel0")

func _on_stairs_01_body_entered(body:Node2D) -> void:
    if body.name == "Player":
        body.move("ui_down")

func _on_stairs_01_body_exited(body:Node2D) -> void:
    if body.name == "Player":
        body.notMove()
