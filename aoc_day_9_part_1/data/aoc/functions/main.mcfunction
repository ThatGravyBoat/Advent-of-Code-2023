scoreboard objectives remove aoc
scoreboard objectives add aoc dummy

data remove storage aoc:data numbers
data remove storage aoc:data current
data remove storage aoc:data content
data remove storage aoc:data history
data remove storage aoc:data value
data remove storage aoc:data char

scoreboard objectives setdisplay sidebar aoc

tellraw @a "Starting AOC Day 9 Part 2"
tellraw @a "       in 5 seconds      "

# schedule function aoc:run 5s
function aoc:run
function utils:print/score {format:"Total: %s", objective:"aoc", player:"$total"}