scoreboard objectives remove aoc
scoreboard objectives add aoc dummy

data remove storage aoc:data current
data remove storage aoc:data winning
data remove storage aoc:data ours
data remove storage aoc:data winnings

scoreboard objectives setdisplay sidebar aoc

# Hide unless scoreboard info


tellraw @a "Starting AOC Day 4 Part 1"
tellraw @a "       in 5 seconds      "

# schedule function aoc:run 5s
function aoc:run