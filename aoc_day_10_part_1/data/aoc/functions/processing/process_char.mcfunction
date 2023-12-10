# Types:
# 0 - floor
# 1 - Vertical
# 2 - Horizontal
# 3 - North to East
# 4 - North to West
# 5 - South to West
# 6 - South to East
# 7 - Start
execute store result score $length aoc run data get storage aoc:data current
execute if score $length aoc matches 0 run return 0

data modify storage aoc:data char set string storage aoc:data current 0 1
data modify storage aoc:data current set string storage aoc:data current 1

data modify storage aoc:data type set value 0

function utils:equals/run { storage:"aoc:data", key: "char", value: "'|'" }
execute if score $is_equal utils matches 1 run data modify storage aoc:data type set value 1

function utils:equals/run { storage:"aoc:data", key: "char", value: "'-'" }
execute if score $is_equal utils matches 1 run data modify storage aoc:data type set value 2

function utils:equals/run { storage:"aoc:data", key: "char", value: "'L'" }
execute if score $is_equal utils matches 1 run data modify storage aoc:data type set value 3

function utils:equals/run { storage:"aoc:data", key: "char", value: "'J'" }
execute if score $is_equal utils matches 1 run data modify storage aoc:data type set value 4

function utils:equals/run { storage:"aoc:data", key: "char", value: "'7'" }
execute if score $is_equal utils matches 1 run data modify storage aoc:data type set value 5

function utils:equals/run { storage:"aoc:data", key: "char", value: "'F'" }
execute if score $is_equal utils matches 1 run data modify storage aoc:data type set value 6

function utils:equals/run { storage:"aoc:data", key: "char", value: "'S'" }
execute if score $is_equal utils matches 1 run data modify storage aoc:data type set value 7
execute if score $is_equal utils matches 1 run scoreboard players operation $startingx aoc = $x aoc
execute if score $is_equal utils matches 1 run scoreboard players operation $startingy aoc = $y aoc

data modify storage aoc:data line append from storage aoc:data type

scoreboard players add $x aoc 1

function aoc:processing/process_char