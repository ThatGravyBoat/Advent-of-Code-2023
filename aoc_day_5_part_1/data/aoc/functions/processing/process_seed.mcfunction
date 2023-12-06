execute store result score $length aoc run data get storage aoc:data current
execute if score $length aoc matches 0 run return 0

function aoc:number/parse

data modify storage aoc:data seed.number set from storage aoc:data value
data modify storage aoc:data seeds append from storage aoc:data seed

function aoc:processing/process_seed