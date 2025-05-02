## Gets item settings relevant to placement

# Stores the current item in data
execute as @s[predicate=af.base:furniture_mainhand] run data modify storage af.base:furniture held_item set from entity @s SelectedItem
execute as @s[predicate=af.base:furniture_offhand] run data modify storage af.base:furniture held_item set from entity @s equipment.offhand

# Gets necessary data from storage
execute store result score place_type af.item_settings run data get storage af.base:furniture held_item.components."minecraft:custom_data".place_type 1