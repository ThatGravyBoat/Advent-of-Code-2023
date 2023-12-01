scoreboard objectives remove aoc2
scoreboard objectives add aoc2 dummy

data remove storage aoc2:data current
data remove storage aoc2:data letter

scoreboard players set $10 aoc2 10
scoreboard players set $0 aoc2 0
scoreboard objectives setdisplay sidebar aoc2

tellraw @a "Starting AOC Part 2"
tellraw @a "   in 5 seconds    "

schedule function aoc2:run 5s