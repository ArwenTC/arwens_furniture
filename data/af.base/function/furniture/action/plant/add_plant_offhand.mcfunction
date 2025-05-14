# Moves the item from the offhand to the plant
data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] item set from entity @s equipment.offhand
data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] item.count set value 1

# Fanfare
playsound minecraft:block.decorated_pot.insert block @a ~ ~ ~ 1 1

# Removes an item
execute as @s[gamemode=!creative] run function af.base:item/remove_offhand

# Tag self with has plant
tag @e[tag=af.selected_plant,distance=..10,limit=1] add af.has_plant
