type t

@module("d3")
external make: (Js.TypedArray2.Float64Array.t) => t = "Delaunary"


@send
external points: (t) => Js.TypedArray2.Float64Array.t = "points"