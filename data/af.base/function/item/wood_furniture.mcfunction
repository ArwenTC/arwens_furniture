
# Chair
$data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:dyed_color":{show_in_tooltip:false},"minecraft:tooltip_style":'minecraft:af_brown',"minecraft:item_name":'furniture',"minecraft:consumable":{consume_seconds:1000000, animation:'block', sound:'block.wood.place',has_consume_particles:false},"minecraft:max_stack_size":64,\
"minecraft:custom_data":{\
\
place_type:0,\
\
settings:{\
translation:[0.0f,0.5f,0.0f],scale:[1.0f,1.0f,1.0f],\
interaction_height:1.0,interaction_width:0.75,interaction_translation_y:0,\
rotation_mode:"free","custom_handling":"chair"},\
\
material_settings:{\
    material_count:2,\
    materials:[\
        {name:"$(display_type) Planks",id:"minecraft:$(id_type)_planks",count:2},\
        {name:"Stick",id:"minecraft:stick",count:2}\
    ]\
}},\
\
"minecraft:custom_name":'[{"text":"$(display_type) Chair","color":"white","italic":false}]',\
"minecraft:item_model":"minecraft:furniture/$(id_type)_chair"}}

# Table
$data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:dyed_color":{show_in_tooltip:false},"minecraft:tooltip_style":'minecraft:af_brown',"minecraft:item_name":'furniture',"minecraft:consumable":{consume_seconds:1000000, animation:'block', sound:'block.wood.place',has_consume_particles:false},"minecraft:max_stack_size":64,\
"minecraft:custom_data":{\
\
place_type:0,\
\
settings:{\
translation:[0.0f,0.5f,0.0f],scale:[1.0f,1.0f,1.0f],\
interaction_height:1.05,interaction_width:1.05,interaction_translation_y:-0.025,\
rotation_mode:"free","custom_handling":"table"},\
\
material_settings:{\
    material_count:2,\
    materials:[\
        {name:"$(display_type) Planks",id:"minecraft:$(id_type)_planks",count:3},\
        {name:"Stick",id:"minecraft:stick",count:4}\
    ]\
}},\
\
"minecraft:custom_name":'[{"text":"$(display_type) Table","color":"white","italic":false}]',\
"minecraft:item_model":"minecraft:furniture/$(id_type)_table"}}

# Dyed Chair
$data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:dyed_color":{show_in_tooltip:false},"minecraft:tooltip_style":'minecraft:af_brown',"minecraft:item_name":'furniture',"minecraft:consumable":{consume_seconds:1000000, animation:'block', sound:'block.wood.place',has_consume_particles:false},"minecraft:max_stack_size":64,\
"minecraft:custom_data":{\
\
place_type:0,\
\
settings:{\
translation:[0.0f,0.5f,0.0f],scale:[1.0f,1.0f,1.0f],\
interaction_height:1.0,interaction_width:0.75,interaction_translation_y:0,\
rotation_mode:"free","custom_handling":"chair"},\
\
material_settings:{\
    material_count:3,\
    materials:[\
        {name:"$(display_type) Planks",id:"minecraft:$(id_type)_planks",count:2},\
        {name:"Stick",id:"minecraft:stick",count:2},\
        {name:"Leather",id:"minecraft:leather",count:1}\
    ]\
}},\
\
"minecraft:custom_name":'[{"text":"$(display_type) Chair","color":"white","italic":false}]',\
"minecraft:lore":['{"text":"Cushioned","color":"gray","italic":false}','{"text":"Dyeable","color":"#ffae52","italic":false}'],\
"minecraft:item_model":"minecraft:furniture/dyed_$(id_type)_chair"}}

# Dyed Table
$data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:dyed_color":{show_in_tooltip:false},"minecraft:tooltip_style":'minecraft:af_brown',"minecraft:item_name":'furniture',"minecraft:consumable":{consume_seconds:1000000, animation:'block', sound:'block.wood.place',has_consume_particles:false},"minecraft:max_stack_size":64,\
"minecraft:custom_data":{\
\
place_type:0,\
\
settings:{\
translation:[0.0f,0.5f,0.0f],scale:[1.0f,1.0f,1.0f],\
interaction_height:1.05,interaction_width:1.05,interaction_translation_y:-0.025,\
rotation_mode:"free","custom_handling":"table"},\
\
material_settings:{\
    material_count:3,\
    materials:[\
        {name:"$(display_type) Planks",id:"minecraft:$(id_type)_planks",count:3},\
        {name:"Stick",id:"minecraft:stick",count:4},\
        {name:"Stick",id:"minecraft:leather",count:1},\
    ]\
}},\
\
"minecraft:custom_name":'[{"text":"$(display_type) Table","color":"white","italic":false}]',\
"minecraft:lore":['{"text":"Tablecloth","color":"gray","italic":false}','{"text":"Dyeable","color":"#ffae52","italic":false}'],\
"minecraft:item_model":"minecraft:furniture/dyed_$(id_type)_table"}}

# End Table
$data modify storage af.base:furniture items append value {id:"minecraft:leather_horse_armor",count:1,components:{"!minecraft:equippable":{},"!minecraft:attribute_modifiers":{},"minecraft:dyed_color":{show_in_tooltip:false},"minecraft:tooltip_style":'minecraft:af_brown',"minecraft:item_name":'furniture',"minecraft:consumable":{consume_seconds:1000000, animation:'block', sound:'block.wood.place',has_consume_particles:false},"minecraft:max_stack_size":64,\
"minecraft:custom_data":{\
\
place_type:0,\
\
settings:{\
translation:[0.0f,0.5f,0.0f],scale:[1.0f,1.0f,1.0f],\
interaction_height:1.0,interaction_width:0.75,interaction_translation_y:0,\
rotation_mode:"free","custom_handling":"none"},\
\
material_settings:{\
    material_count:3,\
    materials:[\
        {name:"$(display_type) Planks",id:"minecraft:$(id_type)_planks",count:3},\
        {name:"Stick",id:"minecraft:stick",count:3},\
    ]\
}},\
\
"minecraft:custom_name":'[{"text":"$(display_type) End Table","color":"white","italic":false}]',\
"minecraft:item_model":"minecraft:furniture/$(id_type)_end_table"}}
