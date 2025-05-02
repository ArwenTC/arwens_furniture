# Gets the item display and cycles the model
execute as @e[type=item_display,tag=af.furniture_display,distance=..10] if score @s af.furniture_id = @e[tag=af.furniture_interaction,tag=af.variant_interaction,tag=af.selected,distance=..10,limit=1,type=interaction] af.furniture_id run function af.base:furniture/action/cycle_model
# Fanfare
playsound minecraft:block.chiseled_bookshelf.pickup.enchanted master @a ~ ~ ~ 1 1