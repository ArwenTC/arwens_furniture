# Stores the players offhand and mainhand in medium
data merge storage af.base:argument {mainhand:{id:"minecraft:air",count:1},offhand:{id:"minecraft:air",count:1},head:{id:"minecraft:air",count:1},chest:{id:"minecraft:air",count:1}}
execute if data entity @s SelectedItem run data modify storage af.base:argument mainhand set from entity @s SelectedItem
execute if data entity @s equipment.offhand run data modify storage af.base:argument offhand set from entity @s equipment.offhand
execute if data entity @s equipment.head run data modify storage af.base:argument head set from entity @s equipment.head
execute if data entity @s equipment.chest run data modify storage af.base:argument chest set from entity @s equipment.chest
# Replaces the items in hands with that from the armor stand
execute unless data entity @e[tag=af.selected_armor_stand,limit=1,distance=..10] equipment.mainhand run item replace entity @s weapon.mainhand with air
execute unless data entity @e[tag=af.selected_armor_stand,limit=1,distance=..10] equipment.offhand run item replace entity @s weapon.offhand with air
execute unless data entity @e[tag=af.selected_armor_stand,limit=1,distance=..10] equipment.head run item replace entity @s armor.head with air
execute unless data entity @e[tag=af.selected_armor_stand,limit=1,distance=..10] equipment.chest run item replace entity @s armor.chest with air
item replace entity @s weapon.mainhand from entity @e[tag=af.selected_armor_stand,limit=1,distance=..10] weapon.mainhand
item replace entity @s weapon.offhand from entity @e[tag=af.selected_armor_stand,limit=1,distance=..10] weapon.offhand
item replace entity @s armor.head from entity @e[tag=af.selected_armor_stand,limit=1,distance=..10] armor.head
item replace entity @s armor.chest from entity @e[tag=af.selected_armor_stand,limit=1,distance=..10] armor.chest
# Puts the items from the medium on the armor stand
data modify entity @e[tag=af.selected_armor_stand,limit=1,distance=..10] equipment.mainhand set from storage af.base:argument mainhand
data modify entity @e[tag=af.selected_armor_stand,limit=1,distance=..10] equipment.offhand set from storage af.base:argument offhand
data modify entity @e[tag=af.selected_armor_stand,limit=1,distance=..10] equipment.head set from storage af.base:argument head
data modify entity @e[tag=af.selected_armor_stand,limit=1,distance=..10] equipment.chest set from storage af.base:argument chest
# Fanfare
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1 1.5
playsound minecraft:item.armor.equip_generic player @a ~ ~ ~ 1 1.5