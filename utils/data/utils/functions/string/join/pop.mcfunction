$execute if score $0 utils matches $(index) run return 0
$data modify storage utils:utils string.popped append value $(value)