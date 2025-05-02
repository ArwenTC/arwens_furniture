# Changes the settings of the display using macros
$data modify entity @e[type=item_display,limit=1,sort=nearest,distance=..1,tag=af.new] transformation.translation set value $(translation)
$data modify entity @e[type=item_display,limit=1,sort=nearest,distance=..1,tag=af.new] transformation.scale set value $(scale)

# Run custom functions
$function af.base:furniture/place/rotate/$(rotation_mode)
$function af.base:furniture/place/handler/$(custom_handling)

# Applies interaction size
$execute as @e[type=interaction,tag=af.furniture_interaction,tag=af.new] run data modify entity @s width set value $(interaction_width)
$execute as @e[type=interaction,tag=af.furniture_interaction,tag=af.new] run data modify entity @s height set value $(interaction_height)
$execute as @e[type=interaction,tag=af.furniture_interaction,tag=af.new] at @s run tp @s ~ ~$(interaction_translation_y) ~