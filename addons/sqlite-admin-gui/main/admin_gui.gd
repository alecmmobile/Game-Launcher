tool
extends EditorPlugin

# Sin coments aun
onready var _current_version := $Tabs/Data_Base_Settings/Settings
onready var _version_updater := $Tabs/Data_Base_Settings/version_updater


# Sin coments aun
func enable() -> void:
  _current_version.enable()
  _version_updater.enable()
