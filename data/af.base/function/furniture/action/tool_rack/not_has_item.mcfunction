# Removes item from player and stores for use
function af.base:item/remove_one_tool_rack

# Adds the item from storage
execute as @e[tag=af.tool_rack_item_display,tag=af.selected_item_display,distance=..10] run function af.base:furniture/action/tool_rack/add_item