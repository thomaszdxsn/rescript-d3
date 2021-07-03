type vector2d = (float, float)
type polygon = array<vector2d>

@module("d3")
external polygonArea: polygon => float = "polygonArea"

@module("d3")
external polygonCentroid: polygon => vector2d = "polygonCentroid"

@module("d3")
external polygonHull: polygon => Js.null<vector2d> = "polygonHull"

@module("d3")
external polygonContains: (polygon, vector2d) => bool = "polygonContains"

@module("d3")
external polygonLength: polygon => float = "polygonLength"
