data modify storage nbtstringify: w.data.extra_copy set from storage nbtstringify: w.data.input.extra
data modify storage nbtstringify: w.data.child_input set value []
data modify storage nbtstringify: w.data.child_input append from storage nbtstringify: w.data.input.text

function nbtstringify:join_text_component/compound/extra_each


function nbtstringify:save_frame

data modify storage nbtstringify: temporary set from storage nbtstringify: w

data remove storage ssm: w
data modify storage ssm: w.input set from storage nbtstringify: temporary.data.child_input

data modify storage ssm: frames append from storage ssm: w
function ssm:dangerous/join/main

data modify storage nbtstringify: temporary.data.output set from storage ssm: w.output
data remove storage ssm: frames[-1]
function nbtstringify:set_frame

data modify storage nbtstringify: w.data.output set from storage nbtstringify: temporary.data.output