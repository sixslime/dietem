#> dietem:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *dietem load-status 1

# settings
execute unless data storage dietem:settings {PERSIST:true} run function dietem:settings

#declare storage dietem:hook
#declare storage dietem:implement
#declare storage dietem:var

# setup
gamerule keepInventory true

# scoreboards
scoreboard objectives add -dietem dummy
scoreboard objectives add --dietem dummy
scoreboard objectives add _dietem-die deathCount
scoreboard objectives add _dietem-xp xp

# tick
schedule clear dietem:_/tick
function dietem:_/tick