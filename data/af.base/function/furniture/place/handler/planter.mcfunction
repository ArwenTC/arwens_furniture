# Creates an interaction entity
function af.base:furniture/place/handler.macro/planter with storage af.base:furniture held_item.components."minecraft:custom_data"
# Tags the furniture interaction to add the plant interaction tag
tag @e[tag=af.furniture_interaction,tag=af.new,type=interaction,distance=..10] add af.planter_interaction