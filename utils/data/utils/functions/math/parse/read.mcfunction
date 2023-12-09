execute store result score $length utils run data get storage utils:utils number.parse.input
execute if score $length utils matches 0 run return 0

data modify storage utils:utils number.parse.char set string storage utils:utils number.parse.input 0 1

scoreboard players set $is_number utils 0
function utils:equals/run { storage:"utils:utils", key: "number.parse.char", value: "'0'" }
scoreboard players operation $is_number utils > $is_equal utils
function utils:equals/run { storage:"utils:utils", key: "number.parse.char", value: "'1'" }
scoreboard players operation $is_number utils > $is_equal utils
function utils:equals/run { storage:"utils:utils", key: "number.parse.char", value: "'2'" }
scoreboard players operation $is_number utils > $is_equal utils
function utils:equals/run { storage:"utils:utils", key: "number.parse.char", value: "'3'" }
scoreboard players operation $is_number utils > $is_equal utils
function utils:equals/run { storage:"utils:utils", key: "number.parse.char", value: "'4'" }
scoreboard players operation $is_number utils > $is_equal utils
function utils:equals/run { storage:"utils:utils", key: "number.parse.char", value: "'5'" }
scoreboard players operation $is_number utils > $is_equal utils
function utils:equals/run { storage:"utils:utils", key: "number.parse.char", value: "'6'" }
scoreboard players operation $is_number utils > $is_equal utils
function utils:equals/run { storage:"utils:utils", key: "number.parse.char", value: "'7'" }
scoreboard players operation $is_number utils > $is_equal utils
function utils:equals/run { storage:"utils:utils", key: "number.parse.char", value: "'8'" }
scoreboard players operation $is_number utils > $is_equal utils
function utils:equals/run { storage:"utils:utils", key: "number.parse.char", value: "'9'" }
scoreboard players operation $is_number utils > $is_equal utils

data modify storage utils:utils number.parse.input set string storage utils:utils number.parse.input 1

execute if score $is_number utils matches 0 run return 0
function utils:math/parse/push with storage utils:utils number.parse
function utils:math/parse/read
