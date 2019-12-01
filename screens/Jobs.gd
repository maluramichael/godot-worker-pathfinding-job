extends Node

onready var nav = get_node("../../Navigation")

func get_free_worker():
  var workers = get_tree().get_nodes_in_group("worker")
  for worker in workers:
    if not worker.has_job():
      return worker

func _on_GoldMine_resource_available(building, resource_count):
  if building.someone_is_gathering():
    return
  
  var worker = get_free_worker()
  
  if worker:
    var path = nav.get_simple_path(worker.position, building.position)
    worker.set_job("gather", building)
    worker.set_path(path)
    building.close_for_gathering()
