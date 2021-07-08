type t

@module("d3")
external make: string => t = "color"

@module("d3")
external fromRGB: (~r: int, ~g: int, ~b: int, ~opacity: float=?) => t = "rgb"

@module("d3")
external fromHSL: (~h: int, ~s: int, ~l: int, ~opacity: float=?) => t = "hsl"

@module("d3")
external fromLAB: (~l: int, ~a: int, ~b: int, ~opacity: float=?) => t = "lab"

@module("d3")
external fromHCL: (~h: int, ~c: int, ~l: int, ~opacity: float=?) => t = "hcl"

@module("d3")
external fromLCH: (~l: int, ~c: int, ~h: int, ~opacity: float=?) => t = "lch"

@module("d3")
external fromCubehelix: (~h: int, ~s: int, ~l: int, ~opacity: float=?) => t = "cubehelix"

@send
external opacity: t => float = "opacity"

@send
external rgb: t => t = "rgb"

@send
external copy: t => t = "copy"

@send
external darker: (t, ~k: float=?) => t = "darker"

@send
external brighter: (t, ~k: float=?) => t = "brighter"

@send
external displayable: t => bool = "displayable"

@send
external formatHex: t => string = "formatHex"

@send
external formtHsl: t => string = "formatHsl"

@send
external formatRgb: t => string = "formatRgb"

@send
external toString: t => string = "toString"
