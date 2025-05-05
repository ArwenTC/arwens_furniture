# Data storage for arwen's furniture
scoreboard objectives add af.data dummy

# Item settings for placements
scoreboard objectives add af.item_settings dummy

# Furniture ID for all furniture
scoreboard objectives add af.furniture_id dummy

# Cooldown for placing furniture
scoreboard objectives add af.cooldown dummy

# Creates a settings objective
scoreboard objectives add af.settings dummy
# Default settings
execute unless score table_shulker af.settings matches 0.. run scoreboard players set table_shulker af.settings 1

# Sets all shulkers used in the datapack to NoAI
execute as @e[type=shulker,tag=af.furniture] run data modify entity @s NoAI set value 1b

# Forceloads 0 0
forceload add 0 0

# Sets blocks at 0 0
fill -1 -63 -1 1 -64 1 bedrock

# Data strings
data modify storage af.base:string prefix set value [{text:"[",color:"gray"},{text:"A",color:"#FFA67E"},{text:"F",color:"#92C8E4"},{text:"2",color:"#C888E2"},{text:"] "}]

data modify storage af.base:string true set value [{text:"true",color:"green"}]
data modify storage af.base:string false set value [{text:"false",color:"red"}]

data modify storage af.base:string setting.start set value [{text:"Setting ",color:"gray"}]
data modify storage af.base:string setting.end set value [{text:" is now ",color:"gray"}]

data modify storage af.base:string setting.shulker set value [{text:"Table Shulker Hitboxes",color:"#c378dc"}]