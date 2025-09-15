# Tag the item display with selected plant.
execute as @e[tag=af.shelf_item_display,distance=..10] if score @s af.furniture_id = @e[tag=af.selected,type=interaction,distance=..10,limit=1] af.furniture_id run tag @s add af.selected_item_display

execute as @e[tag=af.shelf_item_display,tag=af.selected_item_display,limit=1,distance=..10] at @s positioned ^ ^ ^0.25 run function af.base:furniture/remove/wall_shelf_item

# Runs commands as shelf
execute as @e[tag=af.selected_item_display,distance=..10] at @s run kill @s