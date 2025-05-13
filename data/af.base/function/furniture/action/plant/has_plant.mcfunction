# Remove the plant from the pot
function af.base:furniture/action/plant/remove_plant

# Tag self with has plant
tag @e[tag=af.selected_plant,distance=..10,limit=1] remove af.has_plant
# Tag self as modified
tag @e[tag=af.selected_plant,distance=..10,limit=1] add af.modified