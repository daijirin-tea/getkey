scoreboard players set $getkey getkey_count 0

execute if score $getkey getkey_is_escaped matches 1 run return run function getkey:get/in_string_in_escaped

execute if data storage getkey: w.data{char:"\\"} run scoreboard players set $getkey getkey_count 1
execute if data storage getkey: w.data{char:"\\"} run function getkey:get/add_key
execute if data storage getkey: w.data{char:"\\"} run scoreboard players set $getkey getkey_is_escaped 1

data modify storage getkey: w.data.char_copy set from storage getkey: w.data.char
execute store success score $getkey getkey_success run data modify storage getkey: w.data.char_copy set from storage getkey: w.data.string_char
execute if score $getkey getkey_success matches 0 run scoreboard players set $getkey getkey_count 1
execute if score $getkey getkey_success matches 0 run function getkey:get/add_key
execute if score $getkey getkey_success matches 0 run scoreboard players set $getkey getkey_in_string 0

execute if score $getkey getkey_count matches 0 run function getkey:get/add_key