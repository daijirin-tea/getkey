data modify storage nbtstringify: w.data.item_1 set from storage nbtstringify: w.data.list[0]
data modify storage nbtstringify: w.data.item_2 set from storage nbtstringify: w.data.list[1]
data modify storage nbtstringify: w.data.item_3 set from storage nbtstringify: w.data.list[2]

data modify storage nbtstringify: w.data.list2 append from storage nbtstringify: w.data.item_1
data remove storage nbtstringify: w.data.list[0]

function nbtstringify:stringify/remove_space2

execute if data storage nbtstringify: w.data.list[2] run return run function nbtstringify:stringify/remove_space
data modify storage nbtstringify: w.data.list2 append from storage nbtstringify: w.data.list[0]
data modify storage nbtstringify: w.data.list2 append from storage nbtstringify: w.data.list[1]