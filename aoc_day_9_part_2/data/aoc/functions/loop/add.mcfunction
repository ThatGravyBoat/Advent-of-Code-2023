execute store result score $size aoc run data get storage aoc:data history
scoreboard players operation $index aoc = $size aoc
# remove 2 from the index
scoreboard players remove $index aoc 2
execute store result storage aoc:data index int 1 run scoreboard players get $index aoc

scoreboard players set $num1 aoc 0

function aoc:loop/adding/run with storage aoc:data