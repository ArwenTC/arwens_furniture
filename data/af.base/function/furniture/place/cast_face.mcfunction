# Checks surrounding area for a block face
execute unless block ~ ~-0.08 ~ #af.base:replaceable run return 0
execute unless block ~ ~ ~0.08 #af.base:replaceable run return 1
execute unless block ~0.08 ~ ~ #af.base:replaceable run return 2
execute unless block ~ ~ ~-0.08 #af.base:replaceable run return 3
execute unless block ~-0.08 ~ ~ #af.base:replaceable run return 4
# Base case: up
return 5