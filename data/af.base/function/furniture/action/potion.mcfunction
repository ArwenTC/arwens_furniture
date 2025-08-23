# Sets a flag based on what the player has in their hand
scoreboard players set flag af.data -1
execute if items entity @s weapon.mainhand glass_bottle run scoreboard players set flag af.data 0
execute as @s[nbt={SelectedItem:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}] run scoreboard players set flag af.data 1
execute unless score flag af.data matches 1 if items entity @s weapon.mainhand potion run scoreboard players set flag af.data 2
execute unless score flag af.data matches 0..2 if items entity @s weapon.offhand glass_bottle run scoreboard players set flag af.data 3
execute unless score flag af.data matches 0..2 as @s[nbt={equipment:{offhand:{id:"minecraft:potion",components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}}}] run scoreboard players set flag af.data 4
execute unless score flag af.data matches 0..2 unless score flag af.data matches 4 if items entity @s weapon.offhand potion run scoreboard players set flag af.data 5
# Mainhand - Bottle:0,Water:1,Potion:2
# Offhand - Bottle:3,Water:4,Potion:5

# If offhand, store the potion data
execute if score flag af.data matches 2 run data modify storage af.base:argument potion_contents set from entity @s SelectedItem.components."minecraft:potion_contents"
execute if score flag af.data matches 5 run data modify storage af.base:argument potion_contents set from entity @s equipment.offhand.components."minecraft:potion_contents"

# Applies new texture based on the model
execute if score flag af.data matches 0.. as @e[type=item_display,tag=af.furniture_display,distance=..10] if score @s af.furniture_id = @e[tag=af.selected,distance=..10,limit=1,type=interaction] af.furniture_id run function af.base:furniture/action/modify_bottle

# Resets flag and data
scoreboard players reset flag af.data
data remove storage af.base:argument potion_contents