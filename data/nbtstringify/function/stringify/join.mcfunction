function nbtstringify:save_frame

data modify storage nbtstringify: temporary set from storage nbtstringify: w

data remove storage nbtstringify: w
data modify storage nbtstringify: w.input set from entity @s equipment.mainhand.components."minecraft:custom_name"

data modify storage nbtstringify: frames append from storage nbtstringify: w
function nbtstringify:join_text_component/main

data modify storage nbtstringify: temporary.data.output set from storage nbtstringify: w.output
data remove storage nbtstringify: frames[-1]
function nbtstringify:set_frame

data modify storage nbtstringify: w.data.output set from storage nbtstringify: temporary.data.output