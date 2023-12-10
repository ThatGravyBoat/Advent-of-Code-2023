$data modify storage aoc:data current set value "$(input)"

execute store result score $length aoc run data get storage aoc:data current
execute if score $length aoc matches 0 run return 0

data modify storage aoc:data line set value []
scoreboard players set $x aoc 0

function aoc:processing/process_char

data modify storage aoc:data content.value set from storage aoc:data line
data modify storage aoc:data tiles append from storage aoc:data content

scoreboard players add $y aoc 1