execute store result score $length aoc run data get storage aoc:data current
execute if score $length aoc matches 0 run return 0

data modify storage aoc:data char set string storage aoc:data current 0 1

scoreboard players set $is_number aoc 0
function utils:equals/run { storage:"aoc:data", key: "char", value: "'0'" }
scoreboard players operation $is_number aoc > $is_equal utils
function utils:equals/run { storage:"aoc:data", key: "char", value: "'1'" }
scoreboard players operation $is_number aoc > $is_equal utils
function utils:equals/run { storage:"aoc:data", key: "char", value: "'2'" }
scoreboard players operation $is_number aoc > $is_equal utils
function utils:equals/run { storage:"aoc:data", key: "char", value: "'3'" }
scoreboard players operation $is_number aoc > $is_equal utils
function utils:equals/run { storage:"aoc:data", key: "char", value: "'4'" }
scoreboard players operation $is_number aoc > $is_equal utils
function utils:equals/run { storage:"aoc:data", key: "char", value: "'5'" }
scoreboard players operation $is_number aoc > $is_equal utils
function utils:equals/run { storage:"aoc:data", key: "char", value: "'6'" }
scoreboard players operation $is_number aoc > $is_equal utils
function utils:equals/run { storage:"aoc:data", key: "char", value: "'7'" }
scoreboard players operation $is_number aoc > $is_equal utils
function utils:equals/run { storage:"aoc:data", key: "char", value: "'8'" }
scoreboard players operation $is_number aoc > $is_equal utils
function utils:equals/run { storage:"aoc:data", key: "char", value: "'9'" }
scoreboard players operation $is_number aoc > $is_equal utils

data modify storage aoc:data current set string storage aoc:data current 1

execute if score $is_number aoc matches 0 run return 0
function aoc:number/push with storage aoc:data
function aoc:number/read
