# Spawn an item from the plant
loot spawn ~ ~ ~ loot af.base:entities/utility/replace
data modify entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{replace:1b}}}},limit=1] Item set from entity @s data."minecraft:custom_data".item

# Fanfare
playsound minecraft:block.decorated_pot.insert block @a ~ ~ ~ 1 0.5

# Remove the plant
data remove entity @s block_state
data remove entity @e[tag=af.selected_plant_top,limit=1] block_state
data remove entity @s data