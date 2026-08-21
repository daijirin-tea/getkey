function getkey:save_frame

data modify storage getkey: temporary set from storage getkey: w

data remove storage ssm: w
data modify storage ssm: w.input set from storage getkey: temporary.data.current_key

data modify storage ssm: frames append from storage ssm: w
function ssm:dangerous/join/main

data modify storage getkey: temporary.data.output set from storage ssm: w.output
data remove storage ssm: frames[-1]
function getkey:set_frame

data modify storage getkey: w.data.key_compound set value {}
data modify storage getkey: w.data.key_compound.key set from storage getkey: temporary.data.output
data modify storage getkey: w.data.keys append from storage getkey: w.data.key_compound


data modify storage getkey: w.data.current_key set value []
scoreboard players set $getkey getkey_is_reading_key 0