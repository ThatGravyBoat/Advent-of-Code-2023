$data modify storage utils:utils foreach.array set from storage $(storage) $(key)
$data modify storage utils:utils foreach.function set value "$(function)"
execute store result score $foreach.length utils run data get storage utils:utils foreach.array
data modify storage utils:utils foreach.index set value 0
scoreboard players set $foreach.index utils 0

function utils:foreach/foreach with storage utils:utils foreach