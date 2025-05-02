# Revokes advancement
advancement revoke @s only af.base:use_furniture

# Depending on the slot of the furniture item.
execute unless score @s af.cooldown matches 1.. as @s[predicate=af.base:furniture_mainhand] run function af.base:furniture/place/cast_start
execute unless score @s af.cooldown matches 1.. as @s[predicate=af.base:furniture_offhand] run function af.base:furniture/place/cast_start

# Sets a 4 tick cooldown
scoreboard players set @s af.cooldown 4