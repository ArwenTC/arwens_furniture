# Spawn an item from the plant
loot spawn ~ ~ ~ loot af.base:entities/utility/replace
$data modify entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{replace:1b}}}},limit=1] Item set value $(item)