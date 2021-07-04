type t

@module("d3") @variadic
external make: array<string> => t = "dispatch"

@send
external copy: t => t = "copy"

@send
external call: (t, string, 'a => unit) => unit = "call"

@send
external apply: (t, string, 'a => unit) => unit = "apply"
