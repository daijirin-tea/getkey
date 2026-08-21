data remove storage nbtstringify: w.data.extra_item
execute store success score $nbtstringify nbtstringify_success run data modify storage nbtstringify: w.data.extra_item set from storage nbtstringify: w.data.extra_copy[0]
data remove storage nbtstringify: w.data.extra_copy[0]

execute if score $nbtstringify nbtstringify_success matches 1 run function nbtstringify:join_text_component/compound/extra_each_success