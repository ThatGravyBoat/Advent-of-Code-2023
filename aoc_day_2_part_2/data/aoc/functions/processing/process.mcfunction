$data modify storage aoc:data current set value "$(input)"
scoreboard players set $highest_red aoc 0
scoreboard players set $highest_blue aoc 0
scoreboard players set $highest_green aoc 0
scoreboard players set $red aoc 0
scoreboard players set $blue aoc 0
scoreboard players set $green aoc 0

function aoc:processing/process_game
function aoc:subsets/process_subset_section

scoreboard players set $value aoc 0
scoreboard players operation $value aoc += $highest_red aoc
scoreboard players operation $value aoc *= $highest_blue aoc
scoreboard players operation $value aoc *= $highest_green aoc
scoreboard players operation $total aoc += $value aoc