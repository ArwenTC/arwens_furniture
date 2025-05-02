## Recursive, runs for a single point in the cast, and then moves to the next point.

# Keeps track of how much farther the cast can run
scoreboard players remove cast_range af.data 1

# Sets flag if the cast cannot continue
execute if score cast_range af.data matches ..0 run scoreboard players set cast_flag af.data 0
execute unless block ~ ~ ~ #af.base:traversible run scoreboard players set cast_flag af.data 1

# Finds the face the cast has hit
execute if score cast_flag af.data matches 1 positioned ^ ^ ^-0.0625 store result score cast_face af.data run function af.base:furniture/place/place_check
# Continues cast forward until a flag is thrown
execute unless score cast_flag af.data matches 0.. positioned ^ ^ ^0.0625 run function af.base:furniture/place/cast_step