# When the player right clicks on a seat, they are mounted to the nearest "seat" interaction
execute as @e[type=interaction,tag=af.seat,distance=..10] if score @s af.furniture_id = @e[tag=af.furniture_interaction,tag=af.seat_interaction,tag=af.selected,distance=..10,limit=1,type=interaction] af.furniture_id run tag @s add af.sitting

# Mounts seat
ride @s dismount
ride @s mount @e[tag=af.sitting,limit=1,sort=nearest,distance=..10,type=interaction]

# Removes sitting tag
tag @e[tag=af.sitting,distance=..10,type=interaction] remove af.sitting