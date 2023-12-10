execute unless score $x1 aoc matches -1 run scoreboard players operation $x2 aoc = $x aoc
execute unless score $y1 aoc matches -1 run scoreboard players operation $y2 aoc = $y aoc
execute if score $x1 aoc matches -1 run scoreboard players operation $x1 aoc = $x aoc
execute if score $y1 aoc matches -1 run scoreboard players operation $y1 aoc = $y aoc