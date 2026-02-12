## GameManager - Central singleton for Mind-Field
extends Node

# Districts (Banks)
var bank_registry: Node
var district_manager: Node

# Time
var time_manager: Node
var current_day: int = 1
var game_time_hours: float = 12.0  # Start at noon

# Units
var day_units: Array = []
var attendees: Array = []

# Habits
var habits: Array = []

func _ready():
	_setup_managers()

func _setup_managers():
	# Create managers
	bank_registry = Node.new()
	bank_registry.name = "BankRegistry"
	add_child(bank_registry)
	
	district_manager = Node.new()
	district_manager.name = "DistrictManager"
	add_child(district_manager)
	
	time_manager = Node.new()
	time_manager.name = "TimeManager"
	add_child(time_manager)

# Utility
func get_bank(bank_type: int) -> Node:
	return bank_registry.get_child(bank_type) if bank_type < bank_registry.get_child_count() else null

func get_attendees() -> Array:
	return attendees

func register_day_unit(unit: Node):
	day_units.append(unit)

func register_attendee(attendee: Node):
	attendees.append(attendee)
