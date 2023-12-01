# if ($num1 != -1) {
#    $num2 = parseInt(letter)
# } else {
#     $num1 = parseInt(letter)
# }

$execute unless score $num1 aoc2 matches -1 run scoreboard players set $num2 aoc2 $(letter)
$execute if score $num1 aoc2 matches -1 run scoreboard players set $num1 aoc2 $(letter)