# Sets the block to air if the block is light
tag @s add af.remove_light
execute as @e[tag=af.furniture_display,distance=..10] if score @s af.furniture_id = @e[tag=af.remove_light,limit=1] af.furniture_id at @s if block ^ ^ ^.1 light[level=15] run setblock ^ ^ ^.1 air
tag @s remove af.remove_light