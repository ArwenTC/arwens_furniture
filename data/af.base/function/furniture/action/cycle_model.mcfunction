# Moves the current model to the variant list
data modify entity @s item.components."minecraft:custom_data".variants append from entity @s item.components."minecraft:item_model"
# Applies the first element of the variant list
data modify entity @s item.components."minecraft:item_model" set from entity @s item.components."minecraft:custom_data".variants[0]
# Removes the applied item from the list
data remove entity @s item.components."minecraft:custom_data".variants[0]