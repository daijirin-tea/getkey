execute store result storage getkey: w.scores[{objectives:"getkey_depth"}].value int 1 run scoreboard players get $getkey getkey_depth
execute store result storage getkey: w.scores[{objectives:"getkey_in_string"}].value int 1 run scoreboard players get $getkey getkey_in_string
execute store result storage getkey: w.scores[{objectives:"getkey_string_type"}].value int 1 run scoreboard players get $getkey getkey_string_type
execute store result storage getkey: w.scores[{objectives:"getkey_is_escaped"}].value int 1 run scoreboard players get $getkey getkey_is_escaped
execute store result storage getkey: w.scores[{objectives:"getkey_is_reading_key"}].value int 1 run scoreboard players get $getkey getkey_is_reading_key
execute store result storage getkey: w.scores[{objectives:"getkey_success"}].value int 1 run scoreboard players get $getkey getkey_success
execute store result storage getkey: w.scores[{objectives:"getkey_count"}].value int 1 run scoreboard players get $getkey getkey_count

data remove storage getkey: frames[-1]
data modify storage getkey: frames append from storage getkey: w