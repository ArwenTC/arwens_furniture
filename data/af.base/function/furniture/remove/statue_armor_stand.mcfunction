# Drops items if necessary
data modify storage af.base:argument item set from entity @s equipment.mainhand
execute if data entity @s equipment.mainhand run function af.base:tool/drop_item with storage af.base:argument
data modify storage af.base:argument item set from entity @s equipment.offhand
execute if data entity @s equipment.offhand run function af.base:tool/drop_item with storage af.base:argument
data modify storage af.base:argument item set from entity @s equipment.head
execute if data entity @s equipment.head run function af.base:tool/drop_item with storage af.base:argument
data modify storage af.base:argument item set from entity @s equipment.chest
execute if data entity @s equipment.chest run function af.base:tool/drop_item with storage af.base:argument
data modify storage af.base:argument item set from entity @s equipment.legs
execute if data entity @s equipment.legs run function af.base:tool/drop_item with storage af.base:argument
data modify storage af.base:argument item set from entity @s equipment.feet
execute if data entity @s equipment.feet run function af.base:tool/drop_item with storage af.base:argument

# Kills self
kill @s