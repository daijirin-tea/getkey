data modify storage getkey: w set from storage getkey: frames[-1]

execute store result score $getkey getkey_depth run data get storage getkey: w.scores[{objectives:"getkey_depth"}].value
execute store result score $getkey getkey_in_string run data get storage getkey: w.scores[{objectives:"getkey_in_string"}].value
execute store result score $getkey getkey_string_type run data get storage getkey: w.scores[{objectives:"getkey_string_type"}].value
execute store result score $getkey getkey_is_escaped run data get storage getkey: w.scores[{objectives:"getkey_is_escaped"}].value
execute store result score $getkey getkey_is_reading_key run data get storage getkey: w.scores[{objectives:"getkey_is_reading_key"}].value
execute store result score $getkey getkey_success run data get storage getkey: w.scores[{objectives:"getkey_success"}].value
execute store result score $getkey getkey_count run data get storage getkey: w.scores[{objectives:"getkey_count"}].value