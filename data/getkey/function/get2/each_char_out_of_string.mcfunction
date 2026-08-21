scoreboard players set $getkey getkey_count 0

execute if data storage getkey: w.data{char:"\""} run scoreboard players set $getkey getkey_count 1
execute if data storage getkey: w.data{char:"\""} run scoreboard players set $getkey getkey_in_string 1
execute if data storage getkey: w.data{char:"\""} run data modify storage getkey: w.data.string_char set value "\""
execute if data storage getkey: w.data{char:"\""} run function getkey:get2/add_key

execute if data storage getkey: w.data{char:"'"} run scoreboard players set $getkey getkey_count 1
execute if data storage getkey: w.data{char:"'"} run scoreboard players set $getkey getkey_in_string 1
execute if data storage getkey: w.data{char:"'"} run data modify storage getkey: w.data.string_char set value "'"
execute if data storage getkey: w.data{char:"'"} run function getkey:get2/add_key

execute if data storage getkey: w.data{char:"{"} run scoreboard players set $getkey getkey_count 1
execute if data storage getkey: w.data{char:"{"} run scoreboard players add $getkey getkey_depth 1

execute if data storage getkey: w.data{char:"["} run scoreboard players set $getkey getkey_count 1
execute if data storage getkey: w.data{char:"["} run scoreboard players add $getkey getkey_depth 1

execute if data storage getkey: w.data{char:"}"} run scoreboard players set $getkey getkey_count 1
execute if data storage getkey: w.data{char:"}"} run scoreboard players remove $getkey getkey_depth 1

execute if data storage getkey: w.data{char:"]"} run scoreboard players set $getkey getkey_count 1
execute if data storage getkey: w.data{char:"]"} run scoreboard players remove $getkey getkey_depth 1

execute if data storage getkey: w.data{char:":"} run scoreboard players set $getkey getkey_count 1
execute if data storage getkey: w.data{char:":"} if score $getkey getkey_depth matches 0 if score $getkey getkey_is_reading_key matches 1 run function getkey:get2/key_push

execute if data storage getkey: w.data{char:","} run scoreboard players set $getkey getkey_count 1
execute if data storage getkey: w.data{char:","} if score $getkey getkey_depth matches 0 run scoreboard players set $getkey getkey_is_reading_key 1

execute if data storage getkey: w.data{char:" "} run scoreboard players set $getkey getkey_count 1

execute if data storage getkey: w.data{char:"\t"} run scoreboard players set $getkey getkey_count 1

execute if score $getkey getkey_count matches 0 if score $getkey getkey_depth matches 0 if score $getkey getkey_is_reading_key matches 1 run data modify storage getkey: w.data.current_key append from storage getkey: w.data.char