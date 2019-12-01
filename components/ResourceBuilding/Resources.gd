extends Node

onready var building = $"../../"

func _on_Timer_timeout():
  building.resources += 10
  print("Building produced resources", building.resources)
  
  if building.someone_is_gathering():
    return
    
  building.emit_signal("resource_available", building, building.resources)
