extends Node

onready var worker = get_node("../../")

var path: PoolVector2Array = PoolVector2Array()
var next_waypoint: Vector2 = Vector2()
var waypoint_index = 0
var waypoint_count = 0

func _ready():
  pass

func set_path(new_path: PoolVector2Array):
  path = new_path
  waypoint_index = 0
  waypoint_count = path.size()
  next_waypoint = path[waypoint_index]
  
func set_next_waypoint():
  if waypoint_index == waypoint_count - 1: # is last waypoint
    return false
  waypoint_index += 1
  next_waypoint = path[waypoint_index]
  return next_waypoint
  
func _process(delta):
  if next_waypoint:
    var direction =  next_waypoint - worker.position
    var distance = worker.position.distance_to(next_waypoint)
    
    if distance <= 1:
      return set_next_waypoint()
    
    var velocity = direction.normalized() * worker.speed
    worker.move_and_slide(velocity)

