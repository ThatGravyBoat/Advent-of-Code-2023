execute if score $startup_time aoc >= $current_time aoc run return 0

scoreboard players operation $distance aoc = $current_time aoc
scoreboard players operation $distance aoc -= $startup_time aoc
scoreboard players operation $distance aoc *= $startup_time aoc

execute store result storage aoc:data value int 1 run scoreboard players get $distance aoc
data modify storage aoc:data time_distances append from storage aoc:data value

scoreboard players add $startup_time aoc 1

function aoc:checking/check_distance