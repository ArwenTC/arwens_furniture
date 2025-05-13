# If possible, add plant
execute as @s[predicate=af.base:plant_offhand] run function af.base:furniture/action/plant/add_plant_offhand
execute as @s[predicate=af.base:plant_mainhand] run function af.base:furniture/action/plant/add_plant_mainhand

# Tag self with has plant
tag @e[tag=af.selected_plant,distance=..10,limit=1] add af.has_plant