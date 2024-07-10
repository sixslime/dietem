#> dietem:_/clear/each_item
#--------------------
# ./on_death
#--------------------

data modify storage sism:in convert_path.slot set from storage dietem:implement drop[-1].in.items[-1].Slot
data merge storage sism:in {convert_path:{path:"Inventory"}}
function sism:api/convert_path

function dietem:_/clear/each_item.1 with storage sism:out convert_path.result

data remove storage dietem:implement drop[-1].in.items[-1]
execute if data storage dietem:implement drop[-1].in.items[] run function dietem:_/clear/each_item