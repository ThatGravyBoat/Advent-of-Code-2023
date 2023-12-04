$data modify storage utils:utils print.format set value "$(format)"
$execute store result storage utils:utils print.value long 1 run scoreboard players get $(player) $(objective)
function utils:print/print with storage utils:utils print