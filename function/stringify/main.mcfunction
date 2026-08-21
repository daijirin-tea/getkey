#> nbtstringify:stringify/main
#
# NBTを文字列化します
#
# @input storage nbtstringify: frames[-1].input: (byte | short | int | long | float | double | byte_array | string | list | compound | int_array | long_array)
# @output storage nbtstringify: frames[-1].output: string

function nbtstringify:set_frame_data
data modify storage nbtstringify: w.data.input set from storage nbtstringify: w.input

execute positioned ~ -100000 ~ summon armor_stand run function nbtstringify:stringify/get_item

data modify storage nbtstringify: w.output set from storage nbtstringify: w.data.output
function nbtstringify:save_frame_data
function nbtstringify:reset_score