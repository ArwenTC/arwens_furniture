# Store nearby entities
execute at @s store result score count af.data if entity @e[type=minecraft:interaction,tag=af.furniture_interaction,distance=..128]
# Error message on count check
execute if score count af.data >= entities af.settings run title @s actionbar [{"text":"Too many decorations nearby. ","color":"white"},{"text":"Max: ","color":"gray"},{"score":{"name":"entities","objective":"af.settings"}},{"text":" per 128 block area.","color":"gray"}]
# Move to second place check if entity count test is passed
execute unless score count af.data >= entities af.settings run function af.base:furniture/place/place_check_1
# Reset entity count
scoreboard players reset count af.data