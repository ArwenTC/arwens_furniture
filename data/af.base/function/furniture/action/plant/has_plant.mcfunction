# Remove the plant from the pot
function af.base:furniture/action/plant/remove_plant

# Remove has plant tag
tag @e[tag=af.selected_plant,distance=..10,limit=1] remove af.has_plant
# Remove modified tag
tag @e[tag=af.selected_plant,distance=..10,limit=1] add af.modified