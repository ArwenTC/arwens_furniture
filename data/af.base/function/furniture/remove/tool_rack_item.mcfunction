# Drops Item
data modify storage af.base:argument item set from entity @s item
execute if data entity @s item run function af.base:tool/drop_item with storage af.base:argument