data modify storage aoc:data array set from storage aoc:data history[-1].value
data modify storage aoc:data new set value []

execute store result score $size aoc run data get storage aoc:data array

scoreboard players set $index aoc 0
scoreboard players set $index1 aoc 1
function aoc:loop/difference/number { index: 0, index1: 1 }

data modify storage aoc:data content.value set from storage aoc:data new
data modify storage aoc:data history append from storage aoc:data content