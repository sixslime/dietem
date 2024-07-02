#>dietem:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *dietem load-status 1

# settings
execute unless data storage dietem:settings {PERSIST:true} run function dietem:settings

#declare storage dietem:hook
#declare storage dietem:var

# scoreboards
scoreboard objectives add -dietem dummy
scoreboard objectives add --dietem dummy
scoreboard objectives add _dietem-die deathCount