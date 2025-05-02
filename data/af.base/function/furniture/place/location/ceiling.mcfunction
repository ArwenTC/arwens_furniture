# Checks for slab
execute store result score is_slab af.data if block ~ ~0.5 ~ #af.base:slabs[type=top]

## IF NOT SLAB
# Snaps to center of block if player is not sneaking
execute if score is_slab af.data matches 0 as @s[predicate=!af.base:is_sneaking] align xyz positioned ~.5 ~.999 ~.5 run function af.base:furniture/place/place
# Snaps to exact spot downward if player is sneaking
execute if score is_slab af.data matches 0 as @s[predicate=af.base:is_sneaking] align y positioned ~ ~.999 ~ run function af.base:furniture/place/place

## IF SLAB
# Snaps to center of block if player is not sneaking
execute if score is_slab af.data matches 1 as @s[predicate=!af.base:is_sneaking] align xyz positioned ~.5 ~1.499 ~.5 run function af.base:furniture/place/place
# Snaps to exact spot downward if player is sneaking
execute if score is_slab af.data matches 1 as @s[predicate=af.base:is_sneaking] align y positioned ~ ~1.499 ~ run function af.base:furniture/place/place

# Reset slab score
scoreboard players reset is_slab af.data