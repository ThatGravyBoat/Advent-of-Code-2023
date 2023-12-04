$function utils:contains/run { storage: "aoc:data", key: "ours", value: "$(value)" }

execute if score $contained utils matches 1 run scoreboard players add $amount aoc 1