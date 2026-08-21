#> nbtstringify:join_text_component/main
#
# シンプルなテキストコンポーネントを結合します
#
# type limitedTextComponent = string | {text:string,extra?:limitedTextComponent[]}
# @input storage nbtstringify: frames[-1].input: limitedTextComponent
# @output storage nbtstringify: frames[-1].output: string

function nbtstringify:set_frame_data
data modify storage nbtstringify: w.data.input set from storage nbtstringify: w.input

execute store success score $nbtstringify nbtstringify_type run data get storage nbtstringify: w.data.input{}

execute if score $nbtstringify nbtstringify_type matches 1 run function nbtstringify:join_text_component/compound/main
execute if score $nbtstringify nbtstringify_type matches 0 run data modify storage nbtstringify: w.data.output set from storage nbtstringify: w.data.input
# マクロでは間の空白を削除するため。NBTの文字列の`" "`は`{color: "green", text:" "}`として入力されるため、`w.data{input:" "}`ではなく`w.data{input:{text:" "}}`となるので置き換えられない
execute if score $nbtstringify nbtstringify_type matches 0 if data storage nbtstringify: w.data{input:" "} run data modify storage nbtstringify: w.data.output set value ""

data modify storage nbtstringify: w.output set from storage nbtstringify: w.data.output
function nbtstringify:save_frame_data
function nbtstringify:reset_score