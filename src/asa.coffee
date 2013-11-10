# Wait until test() is true
# If it is true call cb(),
# Otherwise retry in 50ms

module.exports = asa = (test, cb) ->
    loop_timer = setInterval ->
        if test()
            clearInterval loop_timer
            cb()
    , 50

