scoreboard objectives remove aoc
scoreboard objectives add aoc dummy

data remove storage aoc:data current
data remove storage aoc:data letter

scoreboard players set $10 aoc 10
scoreboard players set $0 aoc 0
scoreboard objectives setdisplay sidebar aoc

# Hide unless scoreboard info
scoreboard players display name $0 aoc ""
scoreboard players display name $10 aoc ""
scoreboard players display numberformat $0 aoc blank
scoreboard players display numberformat $10 aoc blank


tellraw @a "Starting AOC Part 1"
tellraw @a "   in 5 seconds    "

schedule function aoc:run 5s