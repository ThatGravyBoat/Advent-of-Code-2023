$function utils:contains/run { storage: "aoc:data", key: "ours", value: "$(value)" }

execute if score $contained utils matches 1 unless score $amount aoc matches 0 run scoreboard players operation $amount aoc *= $2 utils
execute if score $contained utils matches 1 if score $amount aoc matches 0 run scoreboard players set $amount aoc 1