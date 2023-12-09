$data modify storage aoc:data current set value "$(input)"

execute store result score $length aoc run data get storage aoc:data current
execute if score $length aoc matches 0 run return 0

data remove storage aoc:data values
data remove storage aoc:data history

function aoc:processing/process_numbers

data modify storage aoc:data content.value set from storage aoc:data values
data modify storage aoc:data history append from storage aoc:data content

function aoc:loop/difference
function aoc:loop/add

execute store result score $value aoc run data get storage aoc:data history[0].value[-1]
scoreboard players operation $total aoc += $value aoc

data remove storage aoc:data values
data remove storage aoc:data content
data remove storage aoc:data new
data remove storage aoc:data array
data remove storage aoc:data index1
data remove storage aoc:data index
data remove storage aoc:data current
data remove storage aoc:data history