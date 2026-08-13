# Drops item in slot
data modify storage af.base:argument item set from entity @s item
execute positioned ^ ^0.425 ^0.25 run function af.base:tool/drop_item with storage af.base:argument

# Removes item
data remove entity @s item

# Tags shelf with modified
tag @s add af.modified
tag @s remove af.has_item