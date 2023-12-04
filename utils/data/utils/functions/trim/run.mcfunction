$data modify storage utils:utils trim.value set from storage $(storage) $(key)

function utils:trim/trim_start
function utils:trim/trim_end

$data modify storage $(storage) $(key) set from storage utils:utils trim.value