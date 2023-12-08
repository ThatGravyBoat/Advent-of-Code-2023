execute if score $gcd.2 utils matches 0 run return run scoreboard players operation $gcd.result utils = $gcd.1 utils
scoreboard players operation $gcd.1 utils %= $gcd.2 utils
scoreboard players operation $gcd.1 utils >< $gcd.2 utils
function utils:math/gcd