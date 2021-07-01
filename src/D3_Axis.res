type t

@module("d3")
external axisTop: D3_Scale.scale<_> => t = "axisTop"

@module("d3")
external axisRight: D3_Scale.scale<_> => t = "axisRight"

@module("d3")
external axisBottom: D3_Scale.scale<_> => t = "axisBottom"

@module("d3")
external axisLeft: D3_Scale.scale<_> => t = "axisLeft"

@module("d3")
external axis: (~orient: int, ~scale: D3_Scale.scale<_>) => t = "axis"

@send
external setScale: (t, D3_Scale.scale<_>) => t = "scale"

@send
external getScale: t => D3_Scale.scale<_> = "scale"

@send
external ticksWithCount: (t, int) => array<_> = "ticks"

@send
external ticksWithInterval: (t, D3_Time.interval<_>) => array<_> = "ticks"

@send
external setTickValues: (t, array<_>) => t = "tickValues"

@send
external getTickValues: t => array<_> = "tickValues"

@send
external setTickSizeBoth: (t, int) => t = "tickSize"

@send
external setTickSizeInner: (t, int) => t = "tickSizeInner"

@send
external getTickSizeInner: t => int = "tickSizeInner"

@send
external setTickSiztOuter: (t, int) => t = "tickSizeOuter"

@send
external getTickSizeOuter: t => int = "tickSizeOuter"

@send
external setTickPadding: (t, int) => t = "tickPadding"

@send
external getTickPadding: t => int = "tickPadding"

@send
external setOffset: (t, float) => t = "offset"

@send
external getOffset: t => float = "offset"
