# If no block, place light level of 3
execute if block ~ ~ ~ #af.base:replaceable run setblock ~ ~ ~ light[level=3]
# Tags the furniture interaction to add the potion interaction tag
tag @e[tag=af.furniture_interaction,tag=af.new,type=interaction,distance=..10] add af.potion_interaction