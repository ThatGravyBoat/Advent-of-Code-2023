execute if score $winnings.index aoc >= $winnings.length aoc run return 0
$data modify storage aoc:data winnings.value set from storage aoc:data winning[$(index)]
function aoc:processing/check_card with storage aoc:data winnings
scoreboard players add $winnings.index aoc 1
execute store result storage aoc:data winnings.index int 1 run scoreboard players get $winnings.index aoc
function aoc:processing/process_winnings with storage aoc:data winnings