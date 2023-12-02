execute if score $red aoc > $highest_red aoc run scoreboard players operation $highest_red aoc = $red aoc
execute if score $blue aoc > $highest_blue aoc run scoreboard players operation $highest_blue aoc = $blue aoc
execute if score $green aoc > $highest_green aoc run scoreboard players operation $highest_green aoc = $green aoc

scoreboard players set $red aoc 0
scoreboard players set $blue aoc 0
scoreboard players set $green aoc 0