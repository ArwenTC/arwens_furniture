# Gets the face the cast ended on
execute store result score cast_face af.data run function af.base:furniture/place/cast_face

## Config options for each item:
#  place_type: 0:floor,1:wall,2:ceiling

# Checks compatibility with the place type based on the detected cast face
execute if score place_type af.item_settings matches 0 if score cast_face af.data matches 0 run function af.base:furniture/place/location/floor
execute if score place_type af.item_settings matches 1 if score cast_face af.data matches 1..4 run function af.base:furniture/place/location/wall
execute if score place_type af.item_settings matches 2 if score cast_face af.data matches 5 run function af.base:furniture/place/location/ceiling

# In case the item cannot be placed, plays particle
execute if score place_type af.item_settings matches 0 unless score cast_face af.data matches 0 run function af.base:furniture/place/effect_fail
execute if score place_type af.item_settings matches 1 unless score cast_face af.data matches 1..4 run function af.base:furniture/place/effect_fail
execute if score place_type af.item_settings matches 2 unless score cast_face af.data matches 5 run function af.base:furniture/place/effect_fail
execute if score place_type af.item_settings matches 0..1 if score cast_face af.data matches 5 run function af.base:furniture/place/effect_fail_ceiling