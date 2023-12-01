# $num1 = -1
# $num2 = -1
# aoc.data.current = $(input)
# aoc.substring()
# if ($num2 == -1) {
#   $total += $num1
# } else {
#   $total += $num2    
# }
# $num1 *= 10
# $total += $num1

scoreboard players set $num1 aoc -1
scoreboard players set $num2 aoc -1
$data modify storage aoc:data current set value $(input)
function aoc:substring
execute if score $num2 aoc matches -1 run scoreboard players operation $total aoc += $num1 aoc
execute unless score $num2 aoc matches -1 run scoreboard players operation $total aoc += $num2 aoc
scoreboard players operation $num1 aoc *= $10 aoc
scoreboard players operation $total aoc += $num1 aoc