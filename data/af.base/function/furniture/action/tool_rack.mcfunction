# Tag the item display with selected plant.
execute as @e[tag=af.tool_rack_item_display,distance=..10] if score @s af.furniture_id = @e[tag=af.selected,type=interaction,distance=..10,limit=1] af.furniture_id run tag @s add af.selected_item_display

# If the entity has an item, replace, if not, don't replace
execute as @e[tag=af.selected_item_display,tag=af.has_item,distance=..10] at @s run function af.base:furniture/action/tool_rack/has_item
execute if items entity @s weapon.* * if entity @e[tag=af.selected_item_display,tag=!af.has_item,tag=!af.modified,distance=..10] run function af.base:furniture/action/tool_rack/not_has_item

# Removes the tag from item display
tag @e remove af.selected_item_display
tag @e remove af.modified