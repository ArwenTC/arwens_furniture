# If no block, place light level of 3
execute if block ~ ~ ~ #af.base:replaceable run setblock ~ ~ ~ light[level=11]
# Tags the furniture interaction to add the potion interaction tag
data modify entity @e[tag=af.furniture_display,tag=af.new,limit=1] brightness set value {sky:15,block:15}
tag @e[tag=af.furniture_interaction,tag=af.new,type=interaction,distance=..10] add af.candle_interaction