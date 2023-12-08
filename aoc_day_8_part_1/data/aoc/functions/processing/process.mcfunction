$data modify storage aoc:data current set value "$(input)"

execute store result score $length aoc run data get storage aoc:data current
execute if score $length aoc matches 0 run return 0

execute unless data storage aoc:data sequence run return run data modify storage aoc:data sequence set from storage aoc:data current

data modify storage aoc:data key set string storage aoc:data current 0 3
data modify storage aoc:data values append string storage aoc:data current 7 10
data modify storage aoc:data values append string storage aoc:data current 12 15

function aoc:processing/push with storage aoc:data

# Clear data

data remove storage aoc:data values
data remove storage aoc:data key
data remove storage aoc:data current