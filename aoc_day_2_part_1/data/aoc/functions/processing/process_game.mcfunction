scoreboard players set $game aoc -1

data modify storage aoc:data current set string storage aoc:data current 5

data modify storage aoc:data game set string storage aoc:data current 0 3
function aoc:processing/set_game_num with storage aoc:data
data modify storage aoc:data game set string storage aoc:data current 0 2
function aoc:processing/set_game_num with storage aoc:data
data modify storage aoc:data game set string storage aoc:data current 0 1
function aoc:processing/set_game_num with storage aoc:data

execute if score $game aoc > $0 aoc if score $game aoc < $10 aoc run data modify storage aoc:data current set string storage aoc:data current 3
execute if score $game aoc >= $10 aoc if score $game aoc < $100 aoc run data modify storage aoc:data current set string storage aoc:data current 4
execute if score $game aoc >= $100 aoc if score $game aoc < $1000 aoc run data modify storage aoc:data current set string storage aoc:data current 5