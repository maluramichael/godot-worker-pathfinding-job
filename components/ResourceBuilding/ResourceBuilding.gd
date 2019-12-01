extends Node2D

var resources = 0
var someone_is_gathering = false

signal resource_available(building, resource_count)

func someone_is_gathering():
  return someone_is_gathering
  
func close_for_gathering():
  someone_is_gathering = true
  print("Close building for gathering")
  
func open_for_gathering():
  someone_is_gathering = false
  print("Open building for gathering")

func gather_resources():
  print("Remove resources from building: ", resources)
  var temp_resources = resources
  resources = 0
  return temp_resources
