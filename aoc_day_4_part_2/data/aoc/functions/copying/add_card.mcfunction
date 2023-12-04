execute if score $card_index aoc >= $card_max_index aoc run return 0
scoreboard players add $card_index aoc 1
execute store result storage aoc:data copying.index int 1 run scoreboard players get $card_index aoc

function aoc:copying/add_card_amount with storage aoc:data copying
function aoc:copying/add_card
