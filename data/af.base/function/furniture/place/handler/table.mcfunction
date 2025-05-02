# Creates a shulker at the table.
summon interaction ~ ~10000 ~ {width:0,height:0,Tags:[af.furniture,af.new],Passengers:[{id:"minecraft:shulker",PersistenceRequired:1b,Tags:[af.furniture,af.new],Invulnerable:1b,active_effects:[{id:"minecraft:invisibility",duration:10000000,amplifier:0,show_particles:false}],Silent:1b,NoAI:1b,Color:0,DeathLootTable:"af.base:entities/utility/empty"}]}
execute positioned ~ ~10000 ~ run tp @e[type=interaction,tag=af.furniture,tag=af.new,distance=..1] ~ ~-10000.001 ~

# The shulker is created 10000 blocks in the air so that it is placed in a loaded chunk, but not in view.
# It is then teleported down to the correct position. This is because when an invisible entity is created, it briefly
# flickers before becoming invisible. Creating the shulker in an out of view position to start removes this issue.