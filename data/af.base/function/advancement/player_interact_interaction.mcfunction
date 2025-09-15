# Revokes advancement
advancement revoke @s only af.base:player_interact_interaction

# Applies selected tag to most likely interaction.
execute as @e[type=interaction,distance=..7,tag=af.furniture_interaction] if data entity @s interaction.player run tag @s add af.selection
execute positioned ^ ^ ^2 run tag @e[type=interaction,distance=..4,tag=af.selection,limit=1,sort=nearest] add af.selected

# --------------------------------- #
# Execute based on interaction tags

execute if entity @e[tag=af.furniture_interaction,tag=af.seat_interaction,tag=af.selected,type=interaction,distance=..10] run function af.base:furniture/action/sit
execute if entity @e[tag=af.furniture_interaction,tag=af.variant_interaction,tag=af.selected,type=interaction,distance=..10] run function af.base:furniture/action/variant
execute if entity @e[tag=af.furniture_interaction,tag=af.statue_interaction,tag=af.selected,type=interaction,distance=..10] run function af.base:furniture/action/statue
execute if entity @e[tag=af.furniture_interaction,tag=af.statue_legless_interaction,tag=af.selected,type=interaction,distance=..10] run function af.base:furniture/action/statue_legless
execute if entity @e[tag=af.furniture_interaction,tag=af.wall_shelf_interaction,tag=af.selected,type=interaction,distance=..10] run function af.base:furniture/action/wall_shelf
execute if entity @e[tag=af.furniture_interaction,tag=af.tool_rack_interaction,tag=af.selected,type=interaction,distance=..10] run function af.base:furniture/action/tool_rack
execute if entity @e[tag=af.furniture_interaction,tag=af.potion_interaction,tag=af.selected,type=interaction,distance=..10] run function af.base:furniture/action/potion
execute if entity @e[tag=af.furniture_interaction,tag=af.planter_interaction,tag=af.selected,type=interaction,distance=..10] run function af.base:furniture/action/plant

# --------------------------------- #

# Resets attack interaction
execute as @e[tag=af.selection] run data remove entity @s interaction

# Removes selected interactions
tag @e[tag=af.selection] remove af.selection
tag @e[tag=af.selected] remove af.selected