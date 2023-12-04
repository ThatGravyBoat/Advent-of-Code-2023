$data modify storage utils:utils print.format set value "$(format)"
$data modify storage utils:utils print.value set from storage $(storage) $(key)
function utils:print/print with storage utils:utils print