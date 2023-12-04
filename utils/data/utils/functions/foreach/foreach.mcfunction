execute if score $foreach.index utils >= $foreach.length utils run return 0
$data modify storage utils:utils foreach.value set from storage utils:utils foreach.array[$(index)]
scoreboard players set $foreach.result utils 0
$execute store result score $foreach.result utils run function $(function) with storage utils:utils foreach
execute if score $foreach.result utils matches 19201516 run return 0
scoreboard players add $foreach.index utils 1
execute store result storage utils:utils foreach.index int 1 run scoreboard players get $foreach.index utils
function utils:foreach/foreach with storage utils:utils foreach