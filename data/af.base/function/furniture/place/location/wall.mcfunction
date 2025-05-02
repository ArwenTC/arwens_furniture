## CAST FACE 1
# Snaps to center of block if player is not sneaking
execute if score cast_face af.data matches 1 as @s[predicate=!af.base:is_sneaking] align xyz positioned ~.499 ~.5 ~.999 run function af.base:furniture/place/place
# Snaps to wall if sneaking
execute if score cast_face af.data matches 1 as @s[predicate=af.base:is_sneaking] align z positioned ~ ~ ~.999 run function af.base:furniture/place/place

## CAST FACE 2
# Snaps to center of block if player is not sneaking
execute if score cast_face af.data matches 2 as @s[predicate=!af.base:is_sneaking] align xyz positioned ~.999 ~.5 ~.499 run function af.base:furniture/place/place
# Snaps to wall if sneaking
execute if score cast_face af.data matches 2 as @s[predicate=af.base:is_sneaking] align x positioned ~.999 ~ ~ run function af.base:furniture/place/place

## CAST FACE 3
# Snaps to center of block if player is not sneaking
execute if score cast_face af.data matches 3 as @s[predicate=!af.base:is_sneaking] align xyz positioned ~.499 ~.5 ~.001 run function af.base:furniture/place/place
# Snaps to wall if sneaking
execute if score cast_face af.data matches 3 as @s[predicate=af.base:is_sneaking] align z positioned ~ ~ ~.001 run function af.base:furniture/place/place

## CAST FACE 4
# Snaps to center of block if player is not sneaking
execute if score cast_face af.data matches 4 as @s[predicate=!af.base:is_sneaking] align xyz positioned ~.001 ~.5 ~.499 run function af.base:furniture/place/place
# Snaps to wall if sneaking
execute if score cast_face af.data matches 4 as @s[predicate=af.base:is_sneaking] align x positioned ~.001 ~ ~ run function af.base:furniture/place/place