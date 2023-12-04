execute if score $current_card_index aoc = $card_length aoc run return 0
execute store result storage aoc:data foreach.index int 1 run scoreboard players get $current_card_index aoc
function aoc:copying/add_cards with storage aoc:data foreach

scoreboard players add $current_card_index aoc 1

function aoc:copying/check_cards_foreach