# Based on the flag set the model of the item display, using listed variants
execute if score flag af.data matches 0 run data modify entity @s item.components."minecraft:item_model" set from entity @s item.components."minecraft:custom_data".variants[0]
execute if score flag af.data matches 1 run data modify entity @s item.components."minecraft:item_model" set from entity @s item.components."minecraft:custom_data".variants[1]
execute if score flag af.data matches 2 run data modify entity @s item.components."minecraft:item_model" set from entity @s item.components."minecraft:custom_data".variants[2]
execute if score flag af.data matches 3 run data modify entity @s item.components."minecraft:item_model" set from entity @s item.components."minecraft:custom_data".variants[0]
execute if score flag af.data matches 4 run data modify entity @s item.components."minecraft:item_model" set from entity @s item.components."minecraft:custom_data".variants[1]
execute if score flag af.data matches 5 run data modify entity @s item.components."minecraft:item_model" set from entity @s item.components."minecraft:custom_data".variants[2]

# Modify the potion data
data remove entity @s item.components."minecraft:potion_contents"
data modify entity @s item.components."minecraft:potion_contents" set from storage af.base:argument potion_contents

# Fanfare
playsound minecraft:block.decorated_pot.insert player @a ~ ~ ~ 1 0
execute if score flag af.data matches 1..2 run playsound minecraft:entity.generic.splash player @a ~ ~ ~ 1 2
execute if score flag af.data matches 4..5 run playsound minecraft:entity.generic.splash player @a ~ ~ ~ 1 2