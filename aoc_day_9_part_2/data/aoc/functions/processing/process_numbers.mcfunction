execute store result score $length aoc run data get storage aoc:data current
execute if score $length aoc matches 0 run return 0

function utils:math/parse { storage: "aoc:data", key: "current" }

execute store result storage aoc:data value int 1 run scoreboard players get $parse.result utils
data modify storage aoc:data values prepend from storage aoc:data value

function aoc:processing/process_numbers