# asa

```coffee
asa = require 'asa'

dogs = false
is_dogs = -> dogs

asa is_dogs, -> console.log 'they is'

setTimeout ->
  dogs = true
, 1500
```
