execute store result storage nbtstringify: w.scores[{objectives:"nbtstringify_success"}].value int 1 run scoreboard players get $nbtstringify nbtstringify_success
execute store result storage nbtstringify: w.scores[{objectives:"nbtstringify_type"}].value int 1 run scoreboard players get $nbtstringify nbtstringify_type
execute store result storage nbtstringify: w.scores[{objectives:"nbtstringify_extra"}].value int 1 run scoreboard players get $nbtstringify nbtstringify_extra

data remove storage nbtstringify: frames[-1]
data modify storage nbtstringify: frames append from storage nbtstringify: w