# Moves the item from the mainhand to the plant
data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] item set from entity @s SelectedItem
data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] item.count set value 1

# Fanfare
playsound minecraft:block.decorated_pot.insert block @a ~ ~ ~ 1 1

# Removes an item
execute as @s[gamemode=!creative] run function af.base:item/remove_mainhand