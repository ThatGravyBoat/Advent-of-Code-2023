data modify storage utils:utils number.parse.value set value ""
$data modify storage utils:utils number.parse.input set from storage $(storage) $(key)

scoreboard players set $parse.is_negitive utils 0

data modify storage utils:utils number.parse.char set string storage utils:utils number.parse.input 0 1
function utils:equals/run { storage:"utils:utils", key: "number.parse.char", value: "'-'" }
execute if score $is_equal utils matches 1 run scoreboard players set $parse.is_negitive utils 1
execute if score $is_equal utils matches 1 run data modify storage utils:utils number.parse.input set string storage utils:utils number.parse.input 1

function utils:math/parse/read
function utils:math/parse/cast with storage utils:utils number.parse

execute store result score $parse.result utils run data get storage utils:utils number.parse.value
execute if score $parse.is_negitive utils matches 1 run scoreboard players operation $parse.result utils *= $-1 utils
$data modify storage $(storage) $(key) set from storage utils:utils number.parse.input