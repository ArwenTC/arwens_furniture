# Sets the rotation of the entity based on the player's rotation.
execute store result entity @e[tag=af.furniture_display,tag=af.new,limit=1,type=item_display,distance=..10] Rotation[0] float 1 run data get entity @s Rotation[0]
# Makes the entity face the player.
execute as @e[tag=af.furniture_display,tag=af.new,limit=1,distance=..10] at @s run tp @s ~ ~ ~ ~180 ~