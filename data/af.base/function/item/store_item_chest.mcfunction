# Tags depending on held item
execute if items entity @s weapon.mainhand * run tag @s add af.mainhand
execute if items entity @s weapon.offhand * run tag @s[tag=!af.mainhand] add af.offhand
# Stores data from item
execute if entity @s[tag=af.mainhand] run data modify storage af.base:argument item set from entity @s SelectedItem
execute if entity @s[tag=af.offhand] run data modify storage af.base:argument item set from entity @s equipment.offhand
# Sets the count to 1
data modify storage af.base:argument item.count set value 1

# Places a chest at 0 0 0 and fills it with the item
setblock 0 0 0 air
setblock 0 0 0 chest{Items:[{id:stone,count:1}]}
data modify block 0 0 0 Items[0] set from storage af.base:argument item