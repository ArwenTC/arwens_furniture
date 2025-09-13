# Tags the armor stand
execute as @e[tag=af.statue_armor_stand,distance=..10] if score @s af.furniture_id = @e[tag=af.selected,type=interaction,distance=..10,limit=1] af.furniture_id run tag @s add af.selected_armor_stand

# Swaps items
execute unless entity @s[predicate=af.base:is_sneaking] run function af.base:furniture/action/statue/swap_items_legless

# Runs the variant command
execute if entity @s[predicate=af.base:is_sneaking] run function af.base:furniture/action/statue/variant

# Removes the tag from the armor stand
tag @e remove af.selected_armor_stand