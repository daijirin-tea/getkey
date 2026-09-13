execute if data storage nbtstringify: w.data{item_1:"\""} if data storage nbtstringify: w.data{item_3:"\""} run return 1
execute if data storage nbtstringify: w.data{item_1:"'"} if data storage nbtstringify: w.data{item_3:"'"} run return 1

execute if data storage nbtstringify: w.data{item_2:" "} run data modify storage nbtstringify: w.data.list[0] set value ""