extends KinematicBody2D

export var speed: float = 20
export var job_manager: NodePath

var resources_in_bag: int = 0

func _ready():
  add_to_group("worker")

func set_path(new_path: PoolVector2Array):
  $Behavior/Pathfinding.set_path(new_path)

func has_job():
  return $Behavior/Jobs.has_job()
  
func set_job(job_name, building):
  $Behavior/Jobs.set_job(job_name, building)

func add_resources(resources):
  resources_in_bag += resources
