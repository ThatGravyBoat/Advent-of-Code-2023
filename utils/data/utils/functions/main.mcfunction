scoreboard objectives remove utils
scoreboard objectives add utils dummy

scoreboard players set $1000 utils 1000
scoreboard players set $100 utils 100
scoreboard players set $10 utils 10
scoreboard players set $2 utils 2
scoreboard players set $1 utils 1
scoreboard players set $0 utils 0

data modify storage utils:utils number.1 set value [1]