# Cycles pose variant
function af.base:furniture/action/variant

# Gets armor stand
execute as @e[type=item_display,tag=af.furniture_display,distance=..10] if score @s af.furniture_id = @e[tag=af.furniture_interaction,tag=af.selected,distance=..10,limit=1,type=interaction] af.furniture_id run tag @s add af.selected_display

# Cycles pose based on stored data
data modify entity @e[tag=af.furniture_display,tag=af.selected_display,limit=1] item.components."minecraft:custom_data".poses append from entity @e[tag=af.selected_armor_stand,limit=1,distance=..10] Pose 
data modify entity @e[tag=af.selected_armor_stand,limit=1,distance=..10] Pose set from entity @e[tag=af.furniture_display,tag=af.selected_display,limit=1] item.components."minecraft:custom_data".poses[0]
data modify entity @e[tag=af.furniture_display,tag=af.selected_display,limit=1] item.components."minecraft:custom_data".pose set from entity @e[tag=af.furniture_display,tag=af.selected_display,limit=1] item.components."minecraft:custom_data".poses[0]
data remove entity @e[tag=af.furniture_display,tag=af.selected_display,limit=1] item.components."minecraft:custom_data".poses[0]

# Removes selection tag
tag @e remove af.selected_display