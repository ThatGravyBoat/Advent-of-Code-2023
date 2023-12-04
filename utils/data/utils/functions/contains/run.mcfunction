$data modify storage utils:utils contains.value set value $(value)
scoreboard players set $contained utils 0

$function utils:foreach/run { storage:"$(storage)", key:"$(key)", function:"utils:contains/contains" }

