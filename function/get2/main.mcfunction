#> getkey:get2/main
#
# コンパウンドのキーを取得します
#
# @input storage getkey: frames[-1].input: compound
# @output storage getkey: frames[-1].output: {key:string}[]

function getkey:set_frame_data
data modify storage getkey: w.data.input set from storage getkey: w.input

function getkey:get2/stringify

data modify storage getkey: w.data.content set string storage getkey: w.data.string 1 -1

data modify storage getkey: w.data.keys set value []
data modify storage getkey: w.data.current_key set value []
scoreboard players set $getkey getkey_depth 0
scoreboard players set $getkey getkey_in_string 0
scoreboard players set $getkey getkey_is_escaped 0
scoreboard players set $getkey getkey_is_reading_key 1

function getkey:get2/each_char

data modify storage getkey: w.data.output set from storage getkey: w.data.keys

data modify storage getkey: w.output set from storage getkey: w.data.output
function getkey:save_frame_data
function getkey:reset_score