# Summons a furniture interaction and item display
summon interaction ~ ~ ~ {Tags:["af.new","af.furniture_interaction","af.furniture"],response:1b,height:1,width:1}
summon item_display ~ ~ ~ {Tags:["af.new","af.furniture_display","af.furniture"],item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"minecraft:gui/empty"}},transformation:{scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f],left_rotation:{axis:[0.0,1.0,0.0],angle:0.0f},right_rotation:{axis:[0.0,1.0,0.0],angle:0.0f}}}

# Applies the data from the selected item
data modify entity @e[type=item_display,limit=1,sort=nearest,distance=..1,tag=af.new] item set from storage af.base:furniture held_item
data modify entity @e[type=item_display,limit=1,sort=nearest,distance=..1,tag=af.new] item.count set value 1

# Applies settings to the furniture
function af.base:furniture/place/settings_apply with storage af.base:furniture held_item.components."minecraft:custom_data"

# Starts spawn animation for new furniture
data modify entity @e[type=item_display,limit=1,sort=nearest,distance=..1,tag=af.new] start_interpolation set value -1
data modify entity @e[type=item_display,limit=1,sort=nearest,distance=..1,tag=af.new] interpolation_duration set value 2

# Creates a new furniture id and assigns it to placed entities
scoreboard players add #current_id af.furniture_id 1
scoreboard players operation @e[tag=af.new] af.furniture_id = #current_id af.furniture_id

# Removes an item from non creative player's hand
execute as @s[gamemode=!creative,predicate=af.base:furniture_offhand] run function af.base:item/remove_offhand
execute as @s[gamemode=!creative,predicate=af.base:furniture_mainhand] run function af.base:item/remove_mainhand

# Removes selector tag from all newly created entities
tag @e[tag=af.new] remove af.new

# Fanfare
playsound minecraft:block.stone.step master @a ~ ~ ~ 1 2