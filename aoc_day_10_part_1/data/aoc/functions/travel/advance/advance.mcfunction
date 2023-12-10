function aoc:travel/get/get
execute store result score $result aoc run data get storage aoc:data result

# function utils:print/data {format: "Result: %s", storage: "aoc:data", key: "result"}
# function utils:print/score {format: "X: %s", objective: "aoc", player: "$x"}
# function utils:print/score {format: "X old: %s", objective: "aoc", player: "$xo"}
# function utils:print/score {format: "Y: %s", objective: "aoc", player: "$y"}
# function utils:print/score {format: "Y old: %s", objective: "aoc", player: "$yo"}

# Vertical
execute if score $result aoc matches 1 run scoreboard players add $y aoc 1
execute if score $result aoc matches 1 if score $yo aoc = $y aoc run scoreboard players remove $y aoc 2

# Horizontal
execute if score $result aoc matches 2 run scoreboard players add $x aoc 1
execute if score $result aoc matches 2 if score $xo aoc = $x aoc run scoreboard players remove $x aoc 2

# North to East
execute if score $result aoc matches 3 if score $yo aoc = $y aoc run scoreboard players remove $y aoc 1
execute if score $result aoc matches 3 if score $xo aoc = $x aoc run scoreboard players add $x aoc 1

# North to West
execute if score $result aoc matches 4 if score $yo aoc = $y aoc run scoreboard players remove $y aoc 1
execute if score $result aoc matches 4 if score $xo aoc = $x aoc run scoreboard players remove $x aoc 1

# South to West
execute if score $result aoc matches 5 if score $yo aoc = $y aoc run scoreboard players add $y aoc 1
execute if score $result aoc matches 5 if score $xo aoc = $x aoc run scoreboard players remove $x aoc 1

# South to East
execute if score $result aoc matches 6 if score $yo aoc = $y aoc run scoreboard players add $y aoc 1
execute if score $result aoc matches 6 if score $xo aoc = $x aoc run scoreboard players add $x aoc 1