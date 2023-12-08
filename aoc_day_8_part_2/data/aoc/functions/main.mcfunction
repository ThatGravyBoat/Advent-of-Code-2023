scoreboard objectives remove aoc
scoreboard objectives add aoc dummy

data remove storage aoc:data current
data remove storage aoc:data value
data remove storage aoc:data side
data remove storage aoc:data sequence
data remove storage aoc:data keys

scoreboard objectives setdisplay sidebar aoc

tellraw @a "Starting AOC Day 8 Part 1"
tellraw @a "       in 5 seconds      "

tellraw @a ""
tellraw @a "Due to minecraft limits LCM will have to be done on the values below manually"
function aoc:run
function aoc:loop/run