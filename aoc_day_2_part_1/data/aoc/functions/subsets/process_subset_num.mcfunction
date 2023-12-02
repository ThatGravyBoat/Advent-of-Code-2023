scoreboard players set $num aoc -1
data modify storage aoc:data num set string storage aoc:data current 0 3
function aoc:subsets/set_subset_num with storage aoc:data
data modify storage aoc:data num set string storage aoc:data current 0 2
function aoc:subsets/set_subset_num with storage aoc:data
data modify storage aoc:data num set string storage aoc:data current 0 1
function aoc:subsets/set_subset_num with storage aoc:data

execute if score $num aoc > $0 aoc if score $num aoc < $10 aoc run data modify storage aoc:data current set string storage aoc:data current 2
execute if score $num aoc >= $10 aoc if score $num aoc < $100 aoc run data modify storage aoc:data current set string storage aoc:data current 3
execute if score $num aoc >= $100 aoc if score $num aoc < $1000 aoc run data modify storage aoc:data current set string storage aoc:data current 4