# Creates armor stand
summon armor_stand ~ ~ ~ {Pose:{Body:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f],LeftArm:[1.0f,0.0f,0.0f],RightArm:[1.0f,0.0f,0.0f],LeftLeg:[1.0f,0.0f,0.0f],RightLeg:[-1.0f,0.0f,0.0f]},Invisible:true,ShowArms:true,NoBasePlate:true,NoGravity:true,Marker:true,Tags:[af.new,af.statue_armor_stand]}
# Apply pose and rotation
data modify entity @e[tag=af.new,type=armor_stand,limit=1,distance=..10] Pose set from entity @e[tag=af.new,tag=af.furniture_display,limit=1,distance=..10] item.components."minecraft:custom_data".pose
execute rotated as @s run tp @e[tag=af.new,type=armor_stand,limit=1,distance=..10] ~ ~ ~ facing ^ ^ ^-1

# Tags for statue
tag @e[tag=af.furniture_interaction,tag=af.new,type=interaction,distance=..10] add af.statue_interaction