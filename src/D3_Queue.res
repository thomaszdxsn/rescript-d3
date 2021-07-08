type t

@module("d3")
external make: (~concurrency: int=?) => t = "queue"

@send
external defer: (t, unit => unit) => t = "defer"

@send
external abort: t => t = "abort"

@send
external await: (t, unit => unit) => t = "await"

@send
external awaitAll: (t, unit => unit) => t = "awaitAll"
