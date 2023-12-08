scoreboard players operation $lcm.numerator utils = $lcm.1 utils
scoreboard players operation $lcm.numerator utils *= $lcm.2 utils
scoreboard players operation $gcd.1 utils = $lcm.1 utils
scoreboard players operation $gcd.2 utils = $lcm.2 utils
function utils:math/gcd
scoreboard players operation $lcm.result utils = $lcm.numerator utils
scoreboard players operation $lcm.result utils /= $gcd.result utils