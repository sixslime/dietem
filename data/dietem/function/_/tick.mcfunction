#> dietem:_/tick
#--------------------
# @TICK
#--------------------

execute as @a[scores={_dietem-die=1..}] at @s run function dietem:_/on_death

schedule function dietem:_/tick 1t