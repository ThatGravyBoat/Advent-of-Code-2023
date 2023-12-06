execute if score $index aoc >= $length aoc run return 0
$execute store result score $value aoc run data get storage aoc:data checking_array[$(winning_index)]

execute if score $value aoc > $distance_to_beat aoc run scoreboard players add $amount aoc 1

scoreboard players add $index aoc 1
execute store result storage aoc:data winning_index int 1 run scoreboard players get $index aoc

function aoc:winning/check_winning_distances with storage aoc:data