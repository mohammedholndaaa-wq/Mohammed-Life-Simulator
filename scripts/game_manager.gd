extends Node3D

var player: CharacterBody3D
var money: int = 150
var energy: int = 100
var study: int = 0

func _ready() -> void:
    create_world()
    create_player()

func create_world() -> void:
    var ground := MeshInstance3D.new()
    var mesh := BoxMesh.new()
    mesh.size = Vector3(60, 1, 60)
    ground.mesh = mesh
    ground.position.y = -0.5
    var material := StandardMaterial3D.new()
    material.albedo_color = Color(0.3, 0.55, 0.3)
    ground.material_override = material
    add_child(ground)

    create_building("كلية الهندسة", Vector3(-8, 1.5, -8), Color(0.8, 0.65, 0.4))
    create_building("كلية الطب", Vector3(8, 1.5, -8), Color(0.8, 0.85, 0.9))
    create_building("المكتبة", Vector3(-8, 1.5, 8), Color(0.4, 0.6, 0.8))
    create_building("المقهى", Vector3(8, 1.5, 8), Color(0.7, 0.4, 0.2))

    var light := DirectionalLight3D.new()
    light.rotation_degrees = Vector3(-45, -30, 0)
    add_child(light)

func create_building(title: String, pos: Vector3, color: Color) -> void:
    var building := MeshInstance3D.new()
    var box := BoxMesh.new()
    box.size = Vector3(6, 3, 5)
    building.mesh = box
    building.position = pos
    var material := StandardMaterial3D.new()
    material.albedo_color = color
    building.material_override = material
    add_child(building)

    var label := Label3D.new()
    label.text = title
    label.position = pos + Vector3(0, 2.5, 0)
    label.billboard = BaseMaterial3D.BILLBOARD_ENABLED
    add_child(label)

extends Node3D

var player: CharacterBody3D
var money: int = 150
var energy: int = 100
var study: int = 0

func _ready() -> void:
    create_world()
    create_player()

func create_world() -> void:
    var ground := MeshInstance3D.new()
    var mesh := BoxMesh.new()
    mesh.size = Vector3(60, 1, 60)
    ground.mesh = mesh
    ground.position.y = -0.5

    var material := StandardMaterial3D.new()
    material.albedo_color = Color(0.3, 0.55, 0.3)
    ground.material_override = material
    add_child(ground)

    create_building("كلية الهندسة", Vector3(-8, 1.5, -8), Color(0.8, 0.65, 0.4))
    create_building("كلية الطب", Vector3(8, 1.5, -8), Color(0.8, 0.85, 0.9))
    create_building("المكتبة", Vector3(-8, 1.5, 8), Color(0.4, 0.6, 0.8))
    create_building("المقهى", Vector3(8, 1.5, 8), Color(0.7, 0.4, 0.2))

    var light := DirectionalLight3D.new()
    light.rotation_degrees = Vector3(-45, -30, 0)
    add_child(light)

func create_building(title: String, pos: Vector3, color: Color) -> void:
    var building := MeshInstance3D.new()
    var box := BoxMesh.new()
    box.size = Vector3(6, 3, 5)
    building.mesh = box
    building.position = pos

    var material := StandardMaterial3D.new()
    material.albedo_color = color
    building.material_override = material
    add_child(building)

    var label := Label3D.new()
    label.text = title
    label.position = pos + Vector3(0, 2.5, 0)
    label.billboard = BaseMaterial3D.BILLBOARD_ENABLED
    add_child(label)

func create_player() -> void:
    player = CharacterBody3D.new()

    var body := MeshInstance3D.new()
    var capsule := CapsuleMesh.new()
    capsule.radius = 0.4
    capsule.height = 1.8
    body.mesh = capsule
    body.position.y = 0.9
    player.add_child(body)

    var collision := CollisionShape3D.new()
    var shape := CapsuleShape3D.new()
    collision.shape = shape
    collision.position.y = 0.9
    player.add_child(collision)

    player.position = Vector3(0, 0, 0)
    add_child(player)

    var camera := Camera3D.new()
    camera.position = Vector3(0, 5, 10)
    camera.rotation_degrees.x = -20
    player.add_child(camera)
    camera.current = true


    player = CharacterBody3D.new()
    var body := MeshInstance3D.new()
    var capsule := CapsuleMesh.new()
    body.mesh = capsule
    body.position.y = 1
    player.add_child(body)

    var collision := CollisionShape3D.new()
    var shape := CapsuleShape3D.new()
    collision.shape = shape
    collision.position.y = 1
    player.add_child(collision)

    player.position = Vector3(0, 0, 0)
    add_child(player)

    var camera := Camera3D.new()
    camera.position = Vector3(0, 5, 10)
    camera.rotation_degrees.x = -20
    player.add_child(camera)
    camera.current = true
