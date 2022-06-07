extends Control

# Godot SQLite Plugin Bin Location, usually "res://addons/godot-sqlite/bin/gdsqlite.gdns"
const SQLite = preload("res://addons/godot-sqlite/bin/gdsqlite.gdns")
var database_path := "res://app-data/GameDataBase"
var database



func _ready():
	openDataBase()
	pass # Replace with function body.


func openDataBase():
	database = SQLite.new()
	database.path = database_path
	database.open_db()
	print(database.last_insert_rowid)
	#database.create_table()
	#var query_string : String = "SELECT Name FROM USERS WHERE ID = 1;"
	var query_string : String = "SELECT Name FROM USERS WHERE ID = 1;"
	var resultado = database.query(query_string)
	print(database.default_extension)
	print(database.error_message)
	print(database.read_only)
	print(database.verbose_mode)
	print(resultado)
	
	
	
	#for i in range(database.query_result.size()):
	#	print(database.query_result[i])
	
	#db.query_result	
	#db.query_with_bindings()
	

func insertDataBase():
	database = SQLite.new()
	database.path = database_path
	database.open_db() 
	#success = insert_rows( String table_name, Array row_array )
	pass
	

func openDataBase_Table():
	#db = SQLite.new()
	
	pass
