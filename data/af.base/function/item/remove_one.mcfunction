# Tags depending on held item
execute if items entity @s weapon.mainhand * run tag @s add af.mainhand
execute if items entity @s weapon.offhand * run tag @s[tag=!af.mainhand] add af.offhand
# Stores data from item
execute if entity @s[tag=af.mainhand] run data modify storage af.base:argument item set from entity @s SelectedItem
execute if entity @s[tag=af.offhand] run data modify storage af.base:argument item set from entity @s equipment.offhand
# Sets the count to 1
data modify storage af.base:argument item.count set value 1
# Removes an item from the selected position
execute as @s[tag=af.mainhand,gamemode=!creative] run function af.base:item/remove_mainhand
execute as @s[tag=af.offhand,gamemode=!creative] run function af.base:item/remove_offhand