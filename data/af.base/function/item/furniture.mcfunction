# Resets storage space
data remove storage af.base:furniture items

## Config options for each item:
#  place_type: 0:floor,1:wall,2:ceiling
#  rotation_mode: "free","fixed","4way","8way"
#  custom_handling: By-Object Basis. "none" is default

## Adds items to the storage database

# Wood Furniture Items
function af.base:item/wood_furniture {display_type:"Oak",id_type:"oak"}
function af.base:item/wood_furniture {display_type:"Spruce",id_type:"spruce"}
function af.base:item/wood_furniture {display_type:"Birch",id_type:"birch"}
function af.base:item/wood_furniture {display_type:"Jungle",id_type:"jungle"}
function af.base:item/wood_furniture {display_type:"Acacia",id_type:"acacia"}
function af.base:item/wood_furniture {display_type:"Dark Oak",id_type:"dark_oak"}
function af.base:item/wood_furniture {display_type:"Mangrove",id_type:"mangrove"}
function af.base:item/wood_furniture {display_type:"Cherry",id_type:"cherry"}
function af.base:item/wood_furniture {display_type:"Bamboo",id_type:"bamboo"}
function af.base:item/wood_furniture {display_type:"Warped",id_type:"warped"}
function af.base:item/wood_furniture {display_type:"Crimson",id_type:"crimson"}

# Item 4
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:dyed_color":{show_in_tooltip:false},"minecraft:tooltip_style":'minecraft:af_brown',"minecraft:item_name":'furniture',"minecraft:consumable":{consume_seconds:1000000, animation:'block', sound:'block.wood.place',has_consume_particles:false},"minecraft:max_stack_size":64,\
"minecraft:custom_data":{\
\
place_type:1,\
\
settings:{\
translation:[0.0f,-2.5f,0.0f],scale:[2.0f,2.0f,2.0f],\
interaction_height:4,interaction_width:1,interaction_translation_y:-3.5,\
rotation_mode:"4way","custom_handling":"none"},\
\
material_settings:{\
    material_count:2,\
    materials:[\
        {name:"Leather",id:"minecraft:leather",count:6},\
        {name:"Stick",id:"minecraft:stick",count:1}\
    ]\
}},\
\
"minecraft:custom_name":'[{"text":"Large Banner","color":"white","italic":false}]',\
"minecraft:lore":['{"text":"Dyeable","color":"#ffae52","italic":false}'],\
"minecraft:item_model":"minecraft:furniture/dyed_large_banner"}}

# Item 5
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:dyed_color":{show_in_tooltip:false},"minecraft:tooltip_style":'minecraft:af_brown',"minecraft:item_name":'furniture',"minecraft:consumable":{consume_seconds:1000000, animation:'block', sound:'block.wood.place',has_consume_particles:false},"minecraft:max_stack_size":64,\
"minecraft:custom_data":{\
\
place_type:1,\
\
settings:{\
translation:[0.0f,0.0f,0.52f],scale:[1.0f,1.0f,1.0f],\
interaction_height:1.5,interaction_width:1.5,interaction_translation_y:-1,\
rotation_mode:"4way","custom_handling":"none"},\
\
material_settings:{\
    material_count:2,\
    materials:[\
        {name:"White Wool",id:"minecraft:white_wool",count:2},\
        {name:"Leather",id:"minecraft:leather",count:2}\
    ]\
}},\
\
"minecraft:custom_name":'[{"text":"Awning","color":"white","italic":false}]',\
"minecraft:lore":['{"text":"Dyeable","color":"#ffae52","italic":false}'],\
"minecraft:item_model":"minecraft:furniture/dyed_awning"}}

# Item 6
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:dyed_color":{show_in_tooltip:false},"minecraft:tooltip_style":'minecraft:af_brown',"minecraft:item_name":'furniture',"minecraft:consumable":{consume_seconds:1000000, animation:'block', sound:'block.wood.place',has_consume_particles:false},"minecraft:max_stack_size":64,\
"minecraft:custom_data":{\
\
place_type:1,\
\
settings:{\
translation:[0.0f,0.0f,0.52f],scale:[1.0f,1.0f,1.0f],\
interaction_height:1.5,interaction_width:1.5,interaction_translation_y:-1,\
rotation_mode:"4way","custom_handling":"none"},\
\
material_settings:{\
    material_count:2,\
    materials:[\
        {name:"White Wool",id:"minecraft:white_wool",count:2},\
        {name:"Leather",id:"minecraft:leather",count:2}\
    ]\
}},\
\
"minecraft:custom_name":'[{"text":"Striped Awning","color":"white","italic":false}]',\
"minecraft:lore":['{"text":"Dyeable","color":"#ffae52","italic":false}'],\
"minecraft:item_model":"minecraft:furniture/dyed_striped_awning"}}

# Item 7
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:dyed_color":{show_in_tooltip:false},"minecraft:tooltip_style":'minecraft:af_brown',"minecraft:item_name":'furniture',"minecraft:consumable":{consume_seconds:1000000, animation:'block', sound:'block.wood.place',has_consume_particles:false},"minecraft:max_stack_size":64,\
"minecraft:custom_data":{\
\
place_type:0,\
\
settings:{\
translation:[0.0f,0.5f,0.0f],scale:[1.0f,1.0f,1.0f],\
interaction_height:0.1,interaction_width:1.25,interaction_translation_y:0,\
rotation_mode:"free","custom_handling":"none"},\
\
material_settings:{\
    material_count:2,\
    materials:[\
        {name:"White Wool",id:"minecraft:white_wool",count:4},\
        {name:"Leather",id:"minecraft:leather",count:1}\
    ]\
}},\
\
"minecraft:custom_name":'[{"text":"Rug","color":"white","italic":false}]',\
"minecraft:lore":['{"text":"Dyeable","color":"#ffae52","italic":false}'],\
"minecraft:item_model":"minecraft:furniture/dyed_rug"}}

# Item 8
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:dyed_color":{show_in_tooltip:false},"minecraft:tooltip_style":'minecraft:af_brown',"minecraft:item_name":'furniture',"minecraft:consumable":{consume_seconds:1000000, animation:'block', sound:'block.wood.place',has_consume_particles:false},"minecraft:max_stack_size":64,\
"minecraft:custom_data":{\
\
place_type:0,\
\
settings:{\
translation:[0.0f,0.5f,0.0f],scale:[1.0f,1.0f,1.0f],\
interaction_height:1.35,interaction_width:0.75,interaction_translation_y:0,\
rotation_mode:"free","custom_handling":"none"},\
\
material_settings:{\
    material_count:1,\
    materials:[\
        {name:"Barrel",id:"minecraft:barrel",count:1},\
    ]\
}},\
\
"minecraft:custom_name":'[{"text":"Barrel","color":"white","italic":false}]',\
"minecraft:lore":['{"text":"Large","color":"gray","italic":false}'],\
"minecraft:item_model":"minecraft:furniture/large_barrel"}}

# Item 8
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:dyed_color":{show_in_tooltip:false},"minecraft:tooltip_style":'minecraft:af_brown',"minecraft:item_name":'furniture',"minecraft:consumable":{consume_seconds:1000000, animation:'block', sound:'block.wood.place',has_consume_particles:false},"minecraft:max_stack_size":64,\
"minecraft:custom_data":{\
\
place_type:0,\
\
settings:{\
translation:[0.0f,0.5f,0.0f],scale:[1.0f,1.0f,1.0f],\
interaction_height:0.5,interaction_width:0.5,interaction_translation_y:0,\
rotation_mode:"free","custom_handling":"none"},\
\
material_settings:{\
    material_count:1,\
    materials:[\
        {name:"Cobblestone",id:"minecraft:cobblestone",count:2},\
    ]\
}},\
\
"minecraft:custom_name":'[{"text":"Small Rock","color":"white","italic":false}]',\
"minecraft:lore":['{"text":"Group","color":"gray","italic":false}'],\
"minecraft:item_model":"minecraft:furniture/small_rock_0"}}

# Item 8
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:dyed_color":{show_in_tooltip:false},"minecraft:tooltip_style":'minecraft:af_brown',"minecraft:item_name":'furniture',"minecraft:consumable":{consume_seconds:1000000, animation:'block', sound:'block.wood.place',has_consume_particles:false},"minecraft:max_stack_size":64,\
"minecraft:custom_data":{\
\
place_type:1,\
\
settings:{\
translation:[0.0f,0.5f,0.0f],scale:[1.0f,1.0f,1.0f],\
interaction_height:0.5,interaction_width:0.5,interaction_translation_y:0,\
rotation_mode:"4-way","custom_handling":"none"},\
\
material_settings:{\
    material_count:1,\
    materials:[\
        {name:"Potato",id:"minecraft:potato",count:5},\
    ]\
}},\
\
"minecraft:custom_name":'[{"text":"Potato Rock","color":"white","italic":false}]',\
"minecraft:item_model":"minecraft:furniture/small_rock_0"}}

# Item 4
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:dyed_color":{show_in_tooltip:false},"minecraft:tooltip_style":'minecraft:af_brown',"minecraft:item_name":'furniture',"minecraft:consumable":{consume_seconds:1000000, animation:'block', sound:'block.wood.place',has_consume_particles:false},"minecraft:max_stack_size":64,\
"minecraft:custom_data":{\
\
place_type:0,\
\
settings:{\
translation:[0.0f,0.5f,0.0f],scale:[1.0f,1.0f,1.0f],\
interaction_height:0.75,interaction_width:0.3,interaction_translation_y:0,\
rotation_mode:"free","custom_handling":"none"},\
\
material_settings:{\
    material_count:1,\
    materials:[\
        {name:"Glass",id:"minecraft:glass",count:2},\
    ]\
}},\
\
"minecraft:custom_name":'[{"text":"Wine Bottle","color":"white","italic":false}]',\
"minecraft:item_model":"minecraft:furniture/bottle"}}

# Item 4
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:dyed_color":{show_in_tooltip:false},"minecraft:tooltip_style":'minecraft:af_brown',"minecraft:item_name":'furniture',"minecraft:consumable":{consume_seconds:1000000, animation:'block', sound:'block.wood.place',has_consume_particles:false},"minecraft:max_stack_size":64,\
"minecraft:custom_data":{\
\
place_type:1,\
\
settings:{\
translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f],\
interaction_height:1,interaction_width:0.8,interaction_translation_y:-0.5,\
rotation_mode:"4way","custom_handling":"none"},\
\
material_settings:{\
    material_count:1,\
    materials:[\
        {name:"Vine",id:"minecraft:vine",count:2},\
    ]\
}},\
\
"minecraft:custom_name":'[{"text":"Large Vines","color":"white","italic":false}]',\
"minecraft:item_model":"minecraft:furniture/large_wall_vines"}}

# 27 af_none items to fill any empty slots in the table
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}
data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:item_name":'"af_none"',"minecraft:hide_tooltip":{},"minecraft:item_model":"minecraft:gui/empty"}}