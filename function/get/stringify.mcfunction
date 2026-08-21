function getkey:save_frame

data modify storage getkey: temporary set from storage getkey: w

data remove storage nbtstringify: w
data modify storage nbtstringify: w.input set from storage getkey: temporary.data.input

data modify storage nbtstringify: frames append from storage nbtstringify: w
function nbtstringify:stringify/main

data modify storage getkey: temporary.data.output set from storage nbtstringify: w.output
data remove storage nbtstringify: frames[-1]
function getkey:set_frame

data modify storage getkey: w.data.string set from storage getkey: temporary.data.output