$data modify storage aoc:data current set value "$(input)"
scoreboard players set $failed aoc 0
function aoc:subsets/colors/reset

function aoc:processing/process_game
function aoc:subsets/process_subset_section

execute if score $failed aoc matches 0 run scoreboard players operation $total aoc += $game aoc