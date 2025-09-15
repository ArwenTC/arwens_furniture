# Stores the item in a chest at 0 0 0
function af.base:item/store_item_chest
execute if items block 0 0 0 container.0 #af.base:tool_rack_item run function af.base:item/remove_one

# Adds the item from storage
execute if items block 0 0 0 container.0 #af.base:tool_rack_item as @e[tag=af.selected_item_display,distance=..10] run function af.base:furniture/action/wall_shelf/add_item

# Fanfare
execute if items block 0 0 0 container.0 #af.base:tool_rack_item run playsound minecraft:block.stone.hit player @a ~ ~ ~ 1 2