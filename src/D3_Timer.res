type timer

@module("d3")
external now: unit => int = "now"

@module("d3")
external timer: (~callback: int => unit, ~delay: int=?, ~time: int=?, unit) => timer = "timer"

@send
external restart: (timer, ~callback: int => unit, ~delay: int=?, ~time: int=?, unit) => unit =
  "restart"

@send
external stop: timer => unit = "stop"

@module("d3")
external timerFlush: unit => unit = "timerFlush"

@module("d3")
external timeout: (~callback: int => unit, ~delay: int=?, ~time: int=?, unit) => timer = "timeout"

@module("d3")
external interval: (~callback: int => unit, ~delay: int=?, ~time: int=?, unit) => timer = "interval"
