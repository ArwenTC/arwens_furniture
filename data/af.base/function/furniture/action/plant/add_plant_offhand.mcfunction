# Moves the item from the offhand to the plant
data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] block_state.Name set from entity @s equipment.offhand.id
execute if items entity @s weapon.offhand #af.base:tall_plant run data modify entity @e[tag=af.selected_plant_top,distance=..10,limit=1] block_state.Name set from entity @s equipment.offhand.id
execute if items entity @s weapon.offhand #af.base:tall_plant run data modify entity @e[tag=af.selected_plant_top,distance=..10,limit=1] block_state.Properties.half set value "upper"

## Special Cases
# Bamboo
execute if items entity @s weapon.offhand bamboo run data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] block_state set value {Name:"bamboo",Properties:{age:"0",leaves:"small"}}
execute if items entity @s weapon.offhand bamboo run data modify entity @e[tag=af.selected_plant_top,distance=..10,limit=1] block_state set value {Name:"bamboo",Properties:{age:"0",leaves:"large"}}
# Pitcher Pod
execute if items entity @s weapon.offhand pitcher_pod run data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] block_state set value {Name:"pitcher_crop",Properties:{age:"1"}}
# Pitcher Pod
execute if items entity @s weapon.offhand small_dripleaf run data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] block_state set value {Name:"small_dripleaf",Properties:{half:"lower"}}
execute if items entity @s weapon.offhand small_dripleaf run data modify entity @e[tag=af.selected_plant_top,distance=..10,limit=1] block_state set value {Name:"small_dripleaf",Properties:{half:"upper"}}
# Chorus Flower
execute if items entity @s weapon.offhand chorus_flower run data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] block_state set value {Name:"chorus_plant",Properties:{down:"true",up:"true"}}
execute if items entity @s weapon.offhand chorus_flower run data modify entity @e[tag=af.selected_plant_top,distance=..10,limit=1] block_state set value {Name:"chorus_flower",Properties:{age:"0"}}
# Sweet Berries
execute if items entity @s weapon.offhand sweet_berries run data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] block_state set value {Name:"sweet_berry_bush",Properties:{age:"3"}}
# Crops
execute if items entity @s weapon.offhand wheat_seeds run data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] block_state set value {Name:"wheat",Properties:{age:"7"}}
execute if items entity @s weapon.offhand beetroot_seeds run data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] block_state set value {Name:"beetroots",Properties:{age:"3"}}
execute if items entity @s weapon.offhand carrot run data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] block_state set value {Name:"carrots",Properties:{age:"7"}}
execute if items entity @s weapon.offhand potato run data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] block_state set value {Name:"potatoes",Properties:{age:"7"}}
execute if items entity @s weapon.offhand melon_seeds run data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] block_state set value {Name:"melon_stem",Properties:{age:"7"}}
execute if items entity @s weapon.offhand pumpkin_seeds run data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] block_state set value {Name:"pumpkin_stem",Properties:{age:"7"}}


data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] data."minecraft:custom_data".item set from entity @s equipment.offhand
data modify entity @e[tag=af.selected_plant,distance=..10,limit=1] data."minecraft:custom_data".item.count set value 1

# Fanfare
playsound minecraft:block.decorated_pot.insert block @a ~ ~ ~ 1 1

# Removes an item
execute as @s[gamemode=!creative] run function af.base:item/remove_offhand

# Tag self with has plant
tag @e[tag=af.selected_plant,distance=..10,limit=1] add af.has_plant