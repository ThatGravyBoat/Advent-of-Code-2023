$scoreboard players set $distance_to_beat aoc $(value)
$execute store result score $length aoc run data get storage aoc:data distances[$(index)].array
$data modify storage aoc:data checking_array set from storage aoc:data distances[$(index)].array

scoreboard players set $index aoc 0
scoreboard players set $amount aoc 0
execute store result storage aoc:data winning_index int 1 run scoreboard players get $index aoc

function aoc:winning/check_winning_distances with storage aoc:data

execute unless score $amount aoc matches 0 if score $total aoc matches 0 run scoreboard players set $total aoc 1
execute unless score $amount aoc matches 0 run scoreboard players operation $total aoc *= $amount aoc