scoreboard objectives remove aoc
scoreboard objectives add aoc dummy

data remove storage aoc:data current
data remove storage aoc:data winning
data remove storage aoc:data ours
data remove storage aoc:data winnings
data remove storage aoc:data table
data remove storage aoc:data cards

scoreboard objectives setdisplay sidebar aoc

tellraw @a "Starting AOC Day 4 Part 1"

function aoc:run
function aoc:copying/check_cards
function utils:foreach/run { storage:"aoc:data", key:"cards", function:"aoc:finish" }