# this script was generated automatically using numd
# https://github.com/nushell-prophet/numd
cd /Users/user/git/nudoc
const init_numd_pwd_const = '/Users/user/git/nudoc'
print "###numd-block-1"
print "```nu"
print ("> [1, 2, 3, 4] | insert 2 10" | nu-highlight)
[1, 2, 3, 4] | insert 2 10 | echo $in

print ("# [1, 2, 10, 3, 4]" | nu-highlight)

print "```"
print "###numd-block-4"
print "```nu"
print ("> [1, 2, 3, 4] | update 1 10" | nu-highlight)
[1, 2, 3, 4] | update 1 10 | echo $in

print ("# [1, 10, 3, 4]" | nu-highlight)

print "```"
print "###numd-block-7"
print "```nu"
print ("let colors = [yellow green]
let colors = ($colors | prepend red)
let colors = ($colors | append purple)
let colors = ($colors ++ \"blue\")
let colors = (\"black\" ++ $colors)
$colors # [black red yellow green purple blue]" | nu-highlight)
print '```
```numd-output'
let colors = [yellow green]
let colors = ($colors | prepend red)
let colors = ($colors | append purple)
let colors = ($colors ++ "blue")
let colors = ("black" ++ $colors)
$colors | echo $in

print "```"
print "###numd-block-12"
print "```nu"
print ("let colors = [red yellow green purple]
let colors = ($colors | skip 1)
let colors = ($colors | drop 2)
$colors # [yellow]" | nu-highlight)
print '```
```numd-output'
let colors = [red yellow green purple]
let colors = ($colors | skip 1)
let colors = ($colors | drop 2)
$colors | echo $in

print "```"
print "###numd-block-17"
print "```nu"
print ("let colors = [red yellow green purple black magenta]
let colors = ($colors | last 3)
$colors # [purple black magenta]" | nu-highlight)
print '```
```numd-output'
let colors = [red yellow green purple black magenta]
let colors = ($colors | last 3)
$colors | echo $in

print "```"
print "###numd-block-22"
print "```nu"
print ("let colors = [yellow green purple]
let colors = ($colors | first 2)
$colors # [yellow green]" | nu-highlight)
print '```
```numd-output'
let colors = [yellow green purple]
let colors = ($colors | first 2)
$colors | echo $in

print "```"
print "###numd-block-27"
print "```nu"
print ("let names = [Mark Tami Amanda Jeremy]
$names | each { |it| $\"Hello, ($it)!\" }
# Outputs \"Hello, Mark!\" and three more similar lines.

$names | enumerate | each { |it| $\"($it.index + 1) - ($it.item)\" }
# Outputs \"1 - Mark\", \"2 - Tami\", etc." | nu-highlight)
print '```
```numd-output'
let names = [Mark Tami Amanda Jeremy]
$names | each { |it| $"Hello, ($it)!" }
# Outputs "Hello, Mark!" and three more similar lines.

$names | enumerate | each { |it| $"($it.index + 1) - ($it.item)" } | echo $in

print "```"
print "###numd-block-32"
print "```nu"
print ("let colors = [red orange yellow green blue purple]
$colors | where ($it | str ends-with 'e')
# The block passed to `where` must evaluate to a boolean.
# This outputs the list [orange blue purple]." | nu-highlight)
print '```
```numd-output'
let colors = [red orange yellow green blue purple]
$colors | where ($it | str ends-with 'e')
# The block passed to `where` must evaluate to a boolean. | echo $in

print "```"
print "###numd-block-35"
print "```nu"
print ("let scores = [7 10 8 6 7]
$scores | where $it > 7 # [10 8]" | nu-highlight)
print '```
```numd-output'
let scores = [7 10 8 6 7]
$scores | where $it > 7 | echo $in

print "```"
print "###numd-block-40"
print "```nu"
print ("let scores = [3 8 4]
$\"total = ($scores | reduce { |it, acc| $acc + $it })\" # total = 15

$\"total = ($scores | math sum)\" # easier approach, same result

$\"product = ($scores | reduce --fold 1 { |it, acc| $acc * $it })\" # product = 96

$scores | enumerate | reduce --fold 0 { |it, acc| $acc + $it.index * $it.item } # 0*3 + 1*8 + 2*4 = 16" | nu-highlight)
print '```
```numd-output'
let scores = [3 8 4]
$"total = ($scores | reduce { |it, acc| $acc + $it })" # total = 15

$"total = ($scores | math sum)" # easier approach, same result

$"product = ($scores | reduce --fold 1 { |it, acc| $acc * $it })" # product = 96

$scores | enumerate | reduce --fold 0 { |it, acc| $acc + $it.index * $it.item } | echo $in

print "```"
print "###numd-block-45"
print "```nu"
print ("let names = [Mark Tami Amanda Jeremy]
$names.1 # gives Tami" | nu-highlight)
print '```
```numd-output'
let names = [Mark Tami Amanda Jeremy]
$names.1 | echo $in

print "```"
print "###numd-block-50"
print "```nu"
print ("let names = [Mark Tami Amanda Jeremy]
let index = 1
$names | get $index # gives Tami" | nu-highlight)
print '```
```numd-output'
let names = [Mark Tami Amanda Jeremy]
let index = 1
$names | get $index | echo $in

print "```"
print "###numd-block-55"
print "```nu"
print ("let colors = [red green blue]
$colors | is-empty # false

let colors = []
$colors | is-empty # true" | nu-highlight)
print '```
```numd-output'
let colors = [red green blue]
$colors | is-empty # false

let colors = []
$colors | is-empty | echo $in

print "```"
print "###numd-block-60"
print "```nu"
print ("let colors = [red green blue]
'blue' in $colors # true
'yellow' in $colors # false
'gold' not-in $colors # true" | nu-highlight)
print '```
```numd-output'
let colors = [red green blue]
'blue' in $colors # true
'yellow' in $colors # false
'gold' not-in $colors | echo $in

print "```"
print "###numd-block-65"
print "```nu"
print ("let colors = [red green blue]
# Do any color names end with \"e\"?
$colors | any {|it| $it | str ends-with \"e\" } # true

# Is the length of any color name less than 3?
$colors | any {|it| ($it | str length) < 3 } # false

let scores = [3 8 4]
# Are any scores greater than 7?
$scores | any {|it| $it > 7 } # true

# Are any scores odd?
$scores | any {|it| $it mod 2 == 1 } # true" | nu-highlight)
print '```
```numd-output'
let colors = [red green blue]
# Do any color names end with "e"?
$colors | any {|it| $it | str ends-with "e" } # true

# Is the length of any color name less than 3?
$colors | any {|it| ($it | str length) < 3 } # false

let scores = [3 8 4]
# Are any scores greater than 7?
$scores | any {|it| $it > 7 } # true

# Are any scores odd?
$scores | any {|it| $it mod 2 == 1 } | echo $in

print "```"
print "###numd-block-70"
print "```nu"
print ("let colors = [red green blue]
# Do all color names end with \"e\"?
$colors | all {|it| $it | str ends-with \"e\" } # false

# Is the length of all color names greater than or equal to 3?
$colors | all {|it| ($it | str length) >= 3 } # true

let scores = [3 8 4]
# Are all scores greater than 7?
$scores | all {|it| $it > 7 } # false

# Are all scores even?
$scores | all {|it| $it mod 2 == 0 } # false" | nu-highlight)
print '```
```numd-output'
let colors = [red green blue]
# Do all color names end with "e"?
$colors | all {|it| $it | str ends-with "e" } # false

# Is the length of all color names greater than or equal to 3?
$colors | all {|it| ($it | str length) >= 3 } # true

let scores = [3 8 4]
# Are all scores greater than 7?
$scores | all {|it| $it > 7 } # false

# Are all scores even?
$scores | all {|it| $it mod 2 == 0 } | echo $in

print "```"
print "###numd-block-75"
print "```nu"
print ("[1 [2 3] 4 [5 6]] | flatten # [1 2 3 4 5 6]

[[1 2] [3 [4 5 [6 7 8]]]] | flatten | flatten | flatten" | nu-highlight)
print '```
```numd-output'
[1 [2 3] 4 [5 6]] | flatten # [1 2 3 4 5 6]

[[1 2] [3 [4 5 [6 7 8]]]] | flatten | flatten | flatten | echo $in

print "```"
print "###numd-block-80"
print "```nu"
print ("let zones = [UTC CET Europe/Moscow Asia/Yekaterinburg]

# Show world clock for selected time zones
$zones | wrap 'Zone' | upsert Time {|it| (date now | date to-timezone $it.Zone | format date '%Y.%m.%d %H:%M')}" | nu-highlight)
print '```
```numd-output'
let zones = [UTC CET Europe/Moscow Asia/Yekaterinburg]

# Show world clock for selected time zones
$zones | wrap 'Zone' | upsert Time {|it| (date now | date to-timezone $it.Zone | format date '%Y.%m.%d %H:%M')} | echo $in

print "```"