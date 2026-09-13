function nbtstringify:save_frame

data modify storage nbtstringify: temporary set from storage nbtstringify: w

data modify storage nbtstringify: w.data.list set from entity @s text.extra
data modify storage nbtstringify: w.data.list2 set value []
execute unless data storage nbtstringify: w.data.list[2] run data modify storage nbtstringify: w.data.list2 set from storage nbtstringify: w.data.list
execute if data storage nbtstringify: w.data.list[2] run function nbtstringify:stringify/remove_space

data modify storage ssm: w set value {}
data modify storage ssm: w.input set from storage nbtstringify: w.data.list2
data modify storage ssm: frames append from storage ssm: w
function ssm:dangerous/join/main
data remove storage ssm: frames[-1]
data modify storage nbtstringify: w.data.output set from storage ssm: w.output