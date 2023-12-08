scoreboard objectives remove aoc
scoreboard objectives add aoc dummy

data remove storage aoc:data current
data remove storage aoc:data value
data remove storage aoc:data side
data remove storage aoc:data sequence

scoreboard objectives setdisplay sidebar aoc

tellraw @a "Starting AOC Day 8 Part 1"
tellraw @a "       in 5 seconds      "

# schedule function aoc:run 5s
function aoc:run
function aoc:loop/loop { key: "AAA" }