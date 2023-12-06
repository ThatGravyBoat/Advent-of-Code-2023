$scoreboard players set $current_time aoc $(value)
scoreboard players set $startup_time aoc 1

data remove storage aoc:data time_distances
data remove storage aoc:data distances_obj

function aoc:checking/check_distance

data modify storage aoc:data distances_obj.array set from storage aoc:data time_distances
data modify storage aoc:data distances append from storage aoc:data distances_obj

data remove storage aoc:data time_distances
data remove storage aoc:data distances_obj