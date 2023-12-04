data remove storage aoc:data current
data remove storage aoc:data winning
data remove storage aoc:data ours
data remove storage aoc:data winnings

$data modify storage aoc:data current set value "$(input)"
data modify storage aoc:data current set string storage aoc:data current 10

scoreboard players add $card aoc 1
scoreboard players set $ours aoc 0
scoreboard players set $last aoc 0
scoreboard players set $amount aoc 0

function aoc:processing/process_number

data modify storage aoc:data winnings.index set value 0
scoreboard players set $winnings.index aoc 0
execute store result score $winnings.length aoc run data get storage aoc:data winning

function aoc:processing/process_winnings with storage aoc:data winnings

scoreboard players operation $total aoc += $amount aoc