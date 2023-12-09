execute if score $index aoc < $0 utils run return 0

scoreboard players operation $num2 aoc = $num1 aoc
$execute store result score $num1 aoc run data get storage aoc:data history[$(index)].value[-1]

scoreboard players operation $num1 aoc += $num2 aoc
execute store result storage aoc:data value int 1 run scoreboard players get $num1 aoc
$data modify storage aoc:data history[$(index)].value append from storage aoc:data value

scoreboard players remove $index aoc 1
execute store result storage aoc:data index int 1 run scoreboard players get $index aoc
function aoc:loop/adding/run with storage aoc:data