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

scoreboard players set $num1 aoc2 -1
scoreboard players set $num2 aoc2 -1
$data modify storage aoc2:data current set value $(input)
function aoc2:substring
execute if score $num2 aoc2 matches -1 run scoreboard players operation $total aoc2 += $num1 aoc2
execute unless score $num2 aoc2 matches -1 run scoreboard players operation $total aoc2 += $num2 aoc2
scoreboard players operation $num1 aoc2 *= $10 aoc2
scoreboard players operation $total aoc2 += $num1 aoc2