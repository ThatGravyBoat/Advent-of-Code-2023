$data modify storage aoc:data copying.amount set from storage aoc:data cards[$(index)]
$execute store result score $card_count aoc run data get storage aoc:data table[$(index)]
$scoreboard players set $card_index aoc $(index)
$scoreboard players set $card_max_index aoc $(index)
scoreboard players operation $card_max_index aoc += $card_count aoc

function aoc:copying/add_card