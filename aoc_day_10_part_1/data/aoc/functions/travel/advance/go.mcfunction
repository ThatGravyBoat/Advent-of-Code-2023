# X1

scoreboard players operation $x aoc = $x1 aoc
scoreboard players operation $y aoc = $y1 aoc
scoreboard players operation $xo aoc = $x1o aoc
scoreboard players operation $yo aoc = $y1o aoc

function aoc:travel/advance/advance

scoreboard players operation $x1o aoc = $x1 aoc
scoreboard players operation $y1o aoc = $y1 aoc
scoreboard players operation $x1 aoc = $x aoc
scoreboard players operation $y1 aoc = $y aoc

# X2

scoreboard players operation $x aoc = $x2 aoc
scoreboard players operation $y aoc = $y2 aoc
scoreboard players operation $xo aoc = $x2o aoc
scoreboard players operation $yo aoc = $y2o aoc

function aoc:travel/advance/advance

scoreboard players operation $x2o aoc = $x2 aoc
scoreboard players operation $y2o aoc = $y2 aoc
scoreboard players operation $x2 aoc = $x aoc
scoreboard players operation $y2 aoc = $y aoc

# Step check

scoreboard players add $step aoc 1

execute if score $x1 aoc = $x2 aoc if score $y1 aoc = $y2 aoc run return 0

# tellraw @a {"type":"translatable", "translate":"1: [%s, %s] [%s, %s]", "with":[{"score":{"name":"$y1o","objective":"aoc"}},{"score":{"name":"$x1o","objective":"aoc"}},{"score":{"name":"$y1","objective":"aoc"}},{"score":{"name":"$x1","objective":"aoc"}}]}
# tellraw @a {"type":"translatable", "translate":"2: [%s, %s] [%s, %s]", "with":[{"score":{"name":"$y2o","objective":"aoc"}},{"score":{"name":"$x2o","objective":"aoc"}},{"score":{"name":"$y2","objective":"aoc"}},{"score":{"name":"$x2","objective":"aoc"}}]}
# tellraw @a "----------------------------------------"

function aoc:travel/advance/go