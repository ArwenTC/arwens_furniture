# Based on the cast face detected, sets the rotation.
execute if score cast_face af.data matches 1 run data modify entity @e[type=item_display,tag=af.furniture_display,tag=af.new,limit=1] Rotation[0] set value 180f
execute if score cast_face af.data matches 2 run data modify entity @e[type=item_display,tag=af.furniture_display,tag=af.new,limit=1] Rotation[0] set value 90f
execute if score cast_face af.data matches 3 run data modify entity @e[type=item_display,tag=af.furniture_display,tag=af.new,limit=1] Rotation[0] set value 0f
execute if score cast_face af.data matches 4 run data modify entity @e[type=item_display,tag=af.furniture_display,tag=af.new,limit=1] Rotation[0] set value -90f