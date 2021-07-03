type t

@module("d3")
external make: unit => t = "path"

@send
external moveTo: (t, ~x: float, ~y: float) => unit = "moveTo"

@send
external closePath: t => unit = "closePath"

@send
external lineTo: (t, ~x: float, ~y: float) => unit = "lineTo"

@send
external quadraticCurveTo: (t, ~cpx: float, ~cpy: float, ~x: float, ~y: float) => unit =
  "quadraticCurveTo"

@send
external bezierCurveTo: (
  t,
  ~cpx1: float,
  ~cpy1: float,
  ~cpx2: float,
  ~cpy2: float,
  ~x: float,
  ~y: float,
) => unit = "bezierCurveTo"

@send
external arcTo: (t, ~x1: float, ~x2: float, ~y1: float, ~y2: float, ~radius: float) => unit =
  "arcTo"

@send
external arc: (
  t,
  ~x: float,
  ~y: float,
  ~startAngle: float,
  ~endAngle: float,
  ~anticlockwise: bool=?,
) => unit = "arc"

@send
external rect: (t, ~x: float, ~y: float, ~w: float, ~h: float) => unit = "rect"

@send
external toString: t => string = "toString"
