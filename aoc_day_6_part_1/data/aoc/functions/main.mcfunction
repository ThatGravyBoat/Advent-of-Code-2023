scoreboard objectives remove aoc
scoreboard objectives add aoc dummy

data remove storage aoc:data current
data remove storage aoc:data distance
data remove storage aoc:data time
data remove storage aoc:data push
data remove storage aoc:data distances
data remove storage aoc:data winnings
data remove storage aoc:data checking_array

scoreboard objectives setdisplay sidebar aoc

tellraw @a "Starting AOC Day 6 Part 1"
tellraw @a "       in 5 seconds      "

# schedule function aoc:run 5s
function aoc:run
function aoc:checking/check_times
function aoc:winning/check_winnings