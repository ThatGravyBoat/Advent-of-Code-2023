scoreboard objectives remove aoc
scoreboard objectives add aoc dummy

data remove storage aoc:data current
data remove storage aoc:data tiles

scoreboard objectives setdisplay sidebar aoc

tellraw @a "Starting AOC Day 9 Part 1"
tellraw @a "       in 5 seconds      "

# schedule function aoc:run 5s
function aoc:run
function aoc:travel/travel
function utils:print/score {format:"Answer: %s", objective:"aoc", player:"$answer"}