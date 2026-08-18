# Store current settings in data
#execute store result storage af.base:argument settings.shulker int 1 run scoreboard players get table_shulker af.settings
#execute store result storage af.base:argument settings.entities int 1 run scoreboard players get max_entities af.settings
# Show dialog to player using arguments
#function af.base:setting/show_settings with storage af.base:argument settings
# Destroy data
#data remove storage af.base:argument settings

# Show dialog
dialog show @s af.base:settings