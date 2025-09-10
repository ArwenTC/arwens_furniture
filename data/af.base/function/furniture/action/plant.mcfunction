# Tag the item display with selected plant.
execute as @e[tag=af.plant_display,distance=..10] if score @s af.furniture_id = @e[tag=af.selected,type=interaction,distance=..10,limit=1] af.furniture_id run tag @s add af.selected_plant
execute as @e[tag=af.plant_display_top,distance=..10] if score @s af.furniture_id = @e[tag=af.selected,type=interaction,distance=..10,limit=1] af.furniture_id run tag @s add af.selected_plant_top

# If the display has a plant, remove the plant.
execute as @e[tag=af.selected_plant,distance=..10,tag=af.has_plant] at @s if data entity @s block_state run function af.base:furniture/action/plant/has_plant
# If the display does not have a plant, attempt to add a plant.
execute if entity @e[tag=af.selected_plant,distance=..10,tag=!af.has_plant,tag=!af.modified] run function af.base:furniture/action/plant/not_has_plant

# Removes plant selection
tag @e[distance=..10] remove af.selected_plant
tag @e[distance=..10] remove af.selected_plant_top
tag @e[distance=..10] remove af.modified