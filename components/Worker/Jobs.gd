extends Node

class Job:
  var name
  var destination
  
  func _init(name, destination):
    self.name = name
    self.destination = destination

onready var pathfinding = $"../Pathfinding"
var current_job: Job = null

func has_job():
  return current_job

func set_job(job_name, building):
  current_job = Job.new(job_name, building)
