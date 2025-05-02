# Stores the current item in the mainhand in a chest
setblock 0 -64 0 air replace
setblock 0 -64 0 chest replace
item replace block 0 -64 0 container.0 from entity @s weapon.offhand

# Collects the item count in the mainhand
execute store result score hand_count af.data run data get entity @s equipment.offhand.count 1

# Removes 1 from the item count in the chest
scoreboard players remove hand_count af.data 1
execute if score hand_count af.data matches 1.. store result block 0 -64 0 Items[0].count int 1 run scoreboard players get hand_count af.data
execute if score hand_count af.data matches ..0 run item replace block 0 -64 0 container.0 with air

# Places the item back into the player's hand
item replace entity @s weapon.offhand from block 0 -64 0 container.0
item replace block 0 -64 0 container.0 with air