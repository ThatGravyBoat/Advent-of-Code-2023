execute if score $index1 aoc >= $size aoc run return 0

$execute store result score $num1 aoc run data get storage aoc:data array[$(index)]
$execute store result score $num2 aoc run data get storage aoc:data array[$(index1)]

# $tellraw @a "Indexes: [$(index), $(index1)]"
# function utils:print/score { format: "Num1: %s", objective: "aoc", player: "$num1" }
# function utils:print/score { format: "Num2: %s", objective: "aoc", player: "$num2" }

scoreboard players operation $num2 aoc -= $num1 aoc
execute store result storage aoc:data value int 1 run scoreboard players get $num2 aoc
data modify storage aoc:data new append from storage aoc:data value

# function utils:print/score { format: "Difference: %s", objective: "aoc", player: "$num2" }

scoreboard players add $index aoc 1
scoreboard players add $index1 aoc 1

# function utils:print/score { format: "Index 1: %s", objective: "aoc", player: "$index" }
# function utils:print/score { format: "Index 2: %s", objective: "aoc", player: "$index1" }

execute store result storage aoc:data index int 1 run scoreboard players get $index aoc
execute store result storage aoc:data index1 int 1 run scoreboard players get $index1 aoc

# tellraw @a "-------------------------"
function aoc:loop/difference/number with storage aoc:data