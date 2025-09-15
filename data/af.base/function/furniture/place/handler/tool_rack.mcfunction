# Creates armor stand
summon item_display ^ ^ ^ {Tags:[af.new,af.tool_rack_item_display],transformation:{translation:[0.0f,0.0f,-0.125f],scale:[1.0f,1.0f,1.0f],left_rotation:{axis:[0.0f,1.0f,0.0f],angle:0.0f},right_rotation:{axis:[0.0f,0.0f,1.0f],angle:2.36f}}}
# Apply rotation
execute rotated as @e[type=item_display,tag=af.new,tag=af.furniture_display,limit=1,distance=..10] run tp @e[tag=af.new,tag=af.tool_rack_item_display,type=item_display,limit=1,distance=..10] ~ ~ ~ facing ^ ^ ^-1

# Tags for statue
tag @e[tag=af.furniture_interaction,tag=af.new,type=interaction,distance=..10] add af.tool_rack_interaction