# Removes item from player and stores for use
function af.base:item/remove_one

# Adds the item from storage
execute as @e[tag=af.shelf_item_display,tag=af.selected_item_display,distance=..10] run function af.base:furniture/action/wall_shelf/add_item