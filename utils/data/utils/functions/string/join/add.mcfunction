data modify storage utils:utils string.value set from storage utils:utils string.inputs[0]
function utils:string/join/update with storage utils:utils string

data modify storage utils:utils string.popped set value []
function utils:foreach/run { storage:"utils:utils", key:"string.inputs", function:"utils:string/join/pop" }
data modify storage utils:utils string.inputs set from storage utils:utils string.popped

execute store result score $join.length utils run data get storage utils:utils string.inputs
execute if score $join.length utils matches 0 run return 0

function utils:string/join/add