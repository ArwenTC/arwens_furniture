# Tag the item display with selected plant.
execute as @e[tag=af.plant_display,distance=..10] if score @s af.furniture_id = @e[tag=af.selected,type=interaction,distance=..10,limit=1] af.furniture_id run tag @s add af.selected_plant

# Spawn an item from the plant
execute as @e[tag=af.selected_plant,distance=..10,tag=af.has_plant] at @s run loot spawn ~ ~ ~ loot af.base:entities/utility/replace
data modify entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{replace:1b}}}},limit=1] Item set from entity @e[tag=af.selected_plant,distance=..10,limit=1] item

# Removes tag
tag @e[distance=..10] remove af.selected_plant