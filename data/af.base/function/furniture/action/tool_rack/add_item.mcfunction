# Modifies self with the new item
data modify entity @s item set from storage af.base:argument item

# Tags self with item
tag @s add af.has_item
tag @s add af.modified