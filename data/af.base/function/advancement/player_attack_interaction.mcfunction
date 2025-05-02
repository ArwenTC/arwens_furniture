# Revokes advancement
advancement revoke @s only af.base:player_attack_interaction

# Applies selected tag to most likely interaction.
execute as @e[type=interaction,distance=..7] if data entity @s attack.player run tag @s add af.selection
execute positioned ^ ^ ^2 run tag @e[type=interaction,distance=..4,tag=af.selection,limit=1,sort=nearest] add af.selected

# --------------------------------- #
# Execute based on interaction tags

execute as @e[tag=af.furniture_interaction,tag=af.selected,type=interaction,distance=..10] run function af.base:furniture/remove/remove



# --------------------------------- #

# Resets attack interaction
execute as @e[tag=af.selection,type=interaction,distance=..7] run data modify entity @s attack set value {player:[I;0,0,0,0],timestamp:0L}

# Removes selected interactions
tag @e[tag=af.selection] remove af.selection
tag @e[tag=af.selected] remove af.selected