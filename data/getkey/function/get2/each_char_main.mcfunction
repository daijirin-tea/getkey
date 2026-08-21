data modify storage getkey: w.data.char set string storage getkey: w.data.content 0 1
data modify storage getkey: w.data.content set string storage getkey: w.data.content 1

execute if score $getkey getkey_in_string matches 1 run return run function getkey:get2/each_char_in_string
function getkey:get2/each_char_out_of_string