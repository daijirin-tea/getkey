data modify storage nbtstringify: w set from storage nbtstringify: frames[-1]

execute store result score $nbtstringify nbtstringify_success run data get storage nbtstringify: w.scores[{objectives:"nbtstringify_success"}].value
execute store result score $nbtstringify nbtstringify_type run data get storage nbtstringify: w.scores[{objectives:"nbtstringify_type"}].value
execute store result score $nbtstringify nbtstringify_extra run data get storage nbtstringify: w.scores[{objectives:"nbtstringify_extra"}].value