# Tag the item display with selected plant.
execute as @e[tag=af.statue_armor_stand,distance=..10] if score @s af.furniture_id = @e[tag=af.selected,type=interaction,distance=..10,limit=1] af.furniture_id run tag @s add af.selected_armor_stand

# Runs commands as armor stand
execute as @e[tag=af.selected_armor_stand,distance=..10] at @s run function af.base:furniture/remove/statue_armor_stand