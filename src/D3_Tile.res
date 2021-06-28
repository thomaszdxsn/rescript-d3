type t

@module("d3")
external make: () => t = "tile"

@send
external extent: (t, ((int, int), (int, int))) => unit = "extent"

@send
external size: (t, (int, int)) => unit = "size"

@send
external scale: (t, @unwrap[
    | #Callback((D3_Zoom.transform) => int)
    | #Int(int)
]) => unit = "scale"

@send
external translate: (t, @unwrap[
    | #Callback((D3_Zoom.transform) => (int, int))
    | #Vector((int, int))
]) => unit = "translate"

@send
external clampX: (t, bool) => unit = "clampX"

@send
external clampY: (t, bool) => unit = "clampY"

@send
external clamp: (t, bool) => unit = "clamp"

@send
external tileSize: (t, int) => unit = "tileSize"

@send
external zoomDelta: (t, int) => unit = "zoomDelta"

@module("d3")
external tileWrap: ((int, int, int)) => (int, int, int) = "tileWrap"