execute store result score $height aoc run data get storage aoc:data tiles
execute store result score $width aoc run data get storage aoc:data tiles[0].value

scoreboard players set $x1 aoc -1
scoreboard players operation $x1o aoc = $startingx aoc
scoreboard players set $x2 aoc -1
scoreboard players operation $x2o aoc = $startingx aoc
scoreboard players set $y1 aoc -1
scoreboard players operation $y1o aoc = $startingy aoc
scoreboard players set $y2 aoc -1
scoreboard players operation $y2o aoc = $startingy aoc

# Go to left
scoreboard players operation $x aoc = $startingx aoc
scoreboard players operation $y aoc = $startingy aoc

scoreboard players remove $x aoc 1
scoreboard players set $continue aoc 0

function aoc:travel/get/get
function utils:equals/run { storage:"aoc:data", key: "result", value: 2 }
scoreboard players operation $continue aoc > $is_equal utils
function utils:equals/run { storage:"aoc:data", key: "result", value: 3 }
scoreboard players operation $continue aoc > $is_equal utils
function utils:equals/run { storage:"aoc:data", key: "result", value: 6 }
scoreboard players operation $continue aoc > $is_equal utils

execute if score $x aoc matches 0.. if score $continue aoc matches 1 run function aoc:travel/start/set

# Go to right
scoreboard players operation $x aoc = $startingx aoc
scoreboard players operation $y aoc = $startingy aoc

scoreboard players add $x aoc 1
scoreboard players set $continue aoc 0

function aoc:travel/get/get
function utils:equals/run { storage:"aoc:data", key: "result", value: 2 }
scoreboard players operation $continue aoc > $is_equal utils
function utils:equals/run { storage:"aoc:data", key: "result", value: 4 }
scoreboard players operation $continue aoc > $is_equal utils
function utils:equals/run { storage:"aoc:data", key: "result", value: 5 }
scoreboard players operation $continue aoc > $is_equal utils

execute if score $x aoc < $width aoc if score $continue aoc matches 1 run function aoc:travel/start/set

# Go to top
scoreboard players operation $x aoc = $startingx aoc
scoreboard players operation $y aoc = $startingy aoc

scoreboard players remove $y aoc 1
scoreboard players set $continue aoc 0

function aoc:travel/get/get
function utils:equals/run { storage:"aoc:data", key: "result", value: 1 }
scoreboard players operation $continue aoc > $is_equal utils
function utils:equals/run { storage:"aoc:data", key: "result", value: 5 }
scoreboard players operation $continue aoc > $is_equal utils
function utils:equals/run { storage:"aoc:data", key: "result", value: 6 }
scoreboard players operation $continue aoc > $is_equal utils

execute if score $y aoc matches 0.. if score $continue aoc matches 1 run function aoc:travel/start/set

# Go to bottom
scoreboard players operation $x aoc = $startingx aoc
scoreboard players operation $y aoc = $startingy aoc

scoreboard players add $y aoc 1
scoreboard players set $continue aoc 0

function aoc:travel/get/get
function utils:equals/run { storage:"aoc:data", key: "result", value: 1 }
scoreboard players operation $continue aoc > $is_equal utils
function utils:equals/run { storage:"aoc:data", key: "result", value: 3 }
scoreboard players operation $continue aoc > $is_equal utils
function utils:equals/run { storage:"aoc:data", key: "result", value: 4 }
scoreboard players operation $continue aoc > $is_equal utils

execute if score $y aoc < $height aoc if score $continue aoc matches 1 run function aoc:travel/start/set

scoreboard players add $step aoc 1

# Reset
scoreboard players reset $startingx aoc
scoreboard players reset $startingy aoc
scoreboard players reset $width aoc
scoreboard players reset $height aoc
scoreboard players reset $length aoc
scoreboard players reset $continue aoc