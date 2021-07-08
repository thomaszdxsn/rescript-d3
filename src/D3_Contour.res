type contourMultiPolygon
type contours = array<float> => array<contourMultiPolygon>
type contourDensity = ((float, float)) => array<contourMultiPolygon>
type t = contours

@module("d3")
external make: unit => t = "contours"

@send
external contour: (t, ~values: array<float>, ~threshold: float) => array<contourMultiPolygon> =
  "coutour"

@send
external getSize: t => (float, float) = "size"

@send
external setSize: (t, (float, float)) => t = "size"

@send
external getSmooth: t => bool = "smooth"

@send
external setSmooth: (t, bool) => t = "smooth"

@module("d3")
external contourDensity: contourDensity = "contourDensity"

@send
external x: (contourDensity, float, float) => float = "x"

@send
external y: (contourDensity, float, float) => float = "y"

@send
external weight: (contourDensity, float, float) => float = "weight"

@send
external size: contourDensity => (float, float) = "size"

@send
external cellSize: contourDensity => float = "cellSize"

@send
external bandwidth: contourDensity => float = "bandwidth"
