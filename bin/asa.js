#!/usr/bin/env node
// Generated by CoffeeScript 1.6.2
(function() {
  var asa;

  module.exports = asa = function(test, cb) {
    var loop_timer;

    return loop_timer = setInterval(function() {
      if (test()) {
        clearInterval(loop_timer);
        return cb();
      }
    }, 50);
  };

}).call(this);
