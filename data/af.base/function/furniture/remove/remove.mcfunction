# Tags self with an identifier
tag @s add af.remove

# Drops loot item
execute at @s run loot spawn ~ ~ ~ loot af.base:entities/utility/replace
# As item display, modifies dropped item
execute as @e[tag=af.furniture_display,distance=..10] at @s if score @s af.furniture_id = @e[tag=af.remove,limit=1] af.furniture_id run data modify entity @e[type=item,limit=1,nbt={Item:{components:{"minecraft:custom_data":{replace:1b}}}}] Item set from entity @s item

# Kills leftover loot item in case of failure
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{replace:1b}}}}]

# Tags entities linked by ID to the display
execute as @e[tag=af.furniture,tag=!af.remove,distance=..10] if score @s af.furniture_id = @e[tag=af.remove,limit=1] af.furniture_id run tag @s add af.remove
# Teleports shulkers down below the world to avoid particles
execute as @e[type=shulker,tag=af.remove,distance=..10] at @s run tp @s ~ ~-10000 ~

# Removes all entities tagged for removal
kill @e[tag=af.remove]