extends Node

onready var worker = get_node("../../")

func _on_GatherArea_area_shape_entered(area_id, area, area_shape, self_shape):
  var building = area.get_owner()
  worker.add_resources(building.gather_resources())
  print(worker.resources_in_bag)
  # building.open_for_gathering()
