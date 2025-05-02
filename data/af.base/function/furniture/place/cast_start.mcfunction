## Initializes a raycast, which will attempt to place a furniture item.

# Runs setup for raycast
scoreboard players set cast_range af.data 85

# Gets the furniture settings
function af.base:furniture/place/settings_get

# Starts the raycast
execute at @s anchored eyes run function af.base:furniture/place/cast_step

# Resets raycast fields
scoreboard players reset cast_flag af.data
scoreboard players reset cast_range af.data
scoreboard players reset cast_face af.data
scoreboard players reset place_type af.item_settings

# Sets a coolown as to not re-trigger the raycast
scoreboard players set @s af.cooldown 4