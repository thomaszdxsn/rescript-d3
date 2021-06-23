open Test
open TestUtils
open D3

test("test Timer.timer", () => {
  let timer = Timer.timer(~callback=elapsed => Js.log(elapsed), ())
  assertDefined(timer, ())
})

test("test Timer.timer stop is work", () => {
  assertDefined(Timer.stop, ())
  let timer = Timer.timer(~callback=elapsed => Js.log(elapsed), ())
  timer->Timer.stop
})

test("test Timer.restart is work", () => {
  assertDefined(Timer.restart, ())
  let timer = Timer.timer(~callback=elapsed => Js.log(elapsed), ())
  timer->Timer.restart(~callback=_ => Js.log("callback2"), ())
})

test("test Timer.now", () => {
  let now = Timer.now()
  assertDefined(now, ())
  open Belt.Int
  assertDefined(now->toString->fromString, ())
})

test("test Timer.interval is defined", () => {
  let timer = Timer.interval(~callback=elapsed => Js.log(elapsed), ())
  assertDefined(timer, ())
})

test("test Timer.timeout is defined", () => {
  let timer = Timer.interval(~callback=elapsed => Js.log(elapsed), ())
  assertDefined(timer, ())

})
