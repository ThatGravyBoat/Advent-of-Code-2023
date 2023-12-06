scoreboard objectives remove aoc
scoreboard objectives add aoc dummy

data remove storage aoc:data current
data remove storage aoc:data char
data remove storage aoc:data seed
data remove storage aoc:data seeds
data remove storage aoc:data seed-to-soil
data remove storage aoc:data soil-to-fertilizer
data remove storage aoc:data fertilizer-to-water
data remove storage aoc:data water-to-light
data remove storage aoc:data light-to-temperature
data remove storage aoc:data temperature-to-humidity
data remove storage aoc:data humidity-to-location

scoreboard objectives setdisplay sidebar aoc

# Hide unless scoreboard info


tellraw @a "Starting AOC Day 5 Part 1"
tellraw @a "       in 5 seconds      "

# schedule function aoc:run 5s
function aoc:run