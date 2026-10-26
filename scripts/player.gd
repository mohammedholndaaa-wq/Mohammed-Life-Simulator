extends CharacterBody3D

@export var speed: float = 5.0
var mobile_direction := Vector2.ZERO

func _physics_process(delta: float) -> void:
    var direction := Vector3.ZERO

    direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
    direction.z = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")

    direction.x += mobile_direction.x
    direction.z += mobile_direction.y

    if direction.length() > 1.0:
        direction = direction.normalized()

    velocity.x = direction.x * speed
    velocity.z = direction.z * speed

    if not is_on_floor():
        velocity.y -= 20.0 * delta
    else:
        velocity.y = 0.0

    move_and_slide()

func set_mobile_direction(value: Vector2) -> void:
    mobile_direction = value
