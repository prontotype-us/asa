# Wait until test() is true
# If it is true call cb(),
# Otherwise retry in 50ms

module.exports = once = (test, cb) ->
    if test() then cb() else setTimeout (-> once(test, cb)), 50

