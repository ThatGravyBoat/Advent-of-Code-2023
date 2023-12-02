scoreboard objectives remove aoc
scoreboard objectives add aoc dummy

data remove storage aoc:data current

scoreboard players set $1000 aoc 1000
scoreboard players set $100 aoc 100
scoreboard players set $10 aoc 10
scoreboard players set $0 aoc 0

scoreboard players set $max_red aoc 12
scoreboard players set $max_blue aoc 14
scoreboard players set $max_green aoc 13
scoreboard objectives setdisplay sidebar aoc

# Hide unless scoreboard info


tellraw @a "Starting AOC Day 2 Part 1"
tellraw @a "       in 5 seconds      "

schedule function aoc:run 5s