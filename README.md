# asa

Simple module that takes two functions, `is_ready` and `doit`, waiting until `is_ready` returns true to call `doit`. Useful when waiting for asynchronous entities to become available, for example if writing a command line script that accesses a database.

```coffee
asa = require 'asa'

# is_ready: a function that determines readiness.
ready = false
is_ready = -> dogs

# doit: a function that does something.
doit = -> console.log 'it has been done'

# As soon as it's ready, do it.
asa is_ready, doit

# After 1.5 seconds, is_ready will return true and doit will be called.
setTimeout ->
  ready = true
, 1500
```
