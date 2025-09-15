# Creates armor stand
summon item_display ^ ^ ^ {Tags:[af.new,af.shelf_item_display],transformation:{translation:[0.0f,0.825f,0.25f],scale:[0.65f,0.65f,0.65f],left_rotation:{axis:[0.0f,1.0f,0.0f],angle:0.0f},right_rotation:{axis:[0.0f,1.0f,0.0f],angle:3.14f}}}
# Apply rotation
execute rotated as @e[type=item_display,tag=af.new,tag=af.furniture_display,limit=1,distance=..10] run tp @e[tag=af.new,tag=af.shelf_item_display,type=item_display,limit=1,distance=..10] ~ ~ ~ facing ^ ^ ^1

# Tags for statue
tag @e[tag=af.furniture_interaction,tag=af.new,type=interaction,distance=..10] add af.wall_shelf_interaction