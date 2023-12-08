$data modify storage aoc:data key set value $(value)

scoreboard players set $value aoc 0

function aoc:loop/loop with storage aoc:data

function utils:print/score { format: "Value: %s", objective: "aoc", player: "$value" }

# Arbitrary number lcm, gcd, multiplication, and division is needed, but that
# is annoying so we just print the number and do lcm in a normal calculator
# scoreboard players operation $lcm.1 utils = $value aoc
# scoreboard players operation $lcm.2 utils = $total aoc
#
# function utils:math/lcm
#
# scoreboard players operation $total aoc = $lcm.result utils