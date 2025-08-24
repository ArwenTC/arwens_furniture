# Revokes advancement
advancement revoke @s only af.base:player_attack_interaction

# Applies selected tag to most likely interaction.
execute as @e[type=interaction,distance=..7,tag=af.furniture_interaction] if data entity @s attack.player run tag @s add af.selection
execute positioned ^ ^ ^2 run tag @e[type=interaction,distance=..4,tag=af.selection,limit=1,sort=nearest] add af.selected

# --------------------------------- #
# Execute based on interaction tags

execute as @e[tag=af.planter_interaction,tag=af.selected,type=interaction,distance=..10] run function af.base:furniture/remove/planter
execute as @e[tag=af.potion_interaction,tag=af.selected,type=interaction,distance=..10] at @s run function af.base:furniture/remove/potion
execute as @e[tag=af.candle_interaction,tag=af.selected,type=interaction,distance=..10] at @s run function af.base:furniture/remove/candle
execute as @e[tag=af.candelabra_interaction,tag=af.selected,type=interaction,distance=..10] at @s run function af.base:furniture/remove/candelabra
execute as @e[tag=af.wall_candle_interaction,tag=af.selected,type=interaction,distance=..10] at @s run function af.base:furniture/remove/wall_candle
execute as @e[tag=af.wall_brazier_interaction,tag=af.selected,type=interaction,distance=..10] at @s run function af.base:furniture/remove/wall_brazier
execute as @e[tag=af.pole_brazier_interaction,tag=af.selected,type=interaction,distance=..10] at @s run function af.base:furniture/remove/pole_brazier
execute as @e[tag=af.chandelier_interaction,tag=af.selected,type=interaction,distance=..10] at @s run function af.base:furniture/remove/chandelier
execute as @e[tag=af.furniture_interaction,tag=af.selected,type=interaction,distance=..10] run function af.base:furniture/remove/remove

# --------------------------------- #

# Resets attack interaction
execute as @e[tag=af.selection] run data remove entity @s attack

# Removes selected interactions
tag @e[tag=af.selection] remove af.selection
tag @e[tag=af.selected] remove af.selected