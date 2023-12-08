execute store result score $length aoc run data get storage aoc:data value
execute if score $length aoc matches 0 run data modify storage aoc:data value set from storage aoc:data sequence

data modify storage aoc:data side set string storage aoc:data value 0 1
data modify storage aoc:data value set string storage aoc:data value 1

function utils:equals/run { storage: "aoc:data", key: "side", value: "L" }

$execute if score $is_equal utils matches 1 run data modify storage aoc:data key set from storage aoc:data $(key)[0]
$execute if score $is_equal utils matches 0 run data modify storage aoc:data key set from storage aoc:data $(key)[1]

scoreboard players add $value aoc 1

data modify storage aoc:data letter set string storage aoc:data key 2 3
function utils:equals/run { storage: "aoc:data", key: "letter", value: "Z" }
execute if score $is_equal utils matches 1 run return 0

function aoc:loop/loop with storage aoc:data