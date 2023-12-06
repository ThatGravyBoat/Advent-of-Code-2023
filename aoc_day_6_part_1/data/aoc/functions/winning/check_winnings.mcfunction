scoreboard players set $total aoc 0

function utils:foreach/run { storage:"aoc:data", key:"distance", function:"aoc:winning/check_winning" }