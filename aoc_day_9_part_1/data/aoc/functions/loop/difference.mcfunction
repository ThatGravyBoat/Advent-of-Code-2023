function aoc:loop/difference/run

scoreboard players set $is_zero aoc 1
function utils:foreach/run { storage:"aoc:data", key:"history[-1].value", function:"aoc:loop/check/is_zeros" }

execute if score $is_zero aoc matches 1 run return 0
function aoc:loop/difference