type t<'a>
type vector2d = (float, float)
type rec leaf<'a> = {
  data: 'a,
  next: option<leaf<'a>>,
  length: option<int>,
}

@module("d3")
external make: (array<'a>, ~x: float=?, ~y: float=?) => t<'a> = "quadtree"

@send
external setX: (t<'a>, 'a => float) => t<'a> = "x"

@send
external setY: (t<'a>, 'a => float) => t<'a> = "y"

@send
external setExtent: (t<'a>, (vector2d, vector2d)) => t<'a> = "extent"

@send
external cover: (t<'a>, float, float) => t<'a> = "cover"

@send
external add: (t<'a>, 'a) => t<'a> = "add"

@send
external addAll: (t<'a>, array<'a>) => t<'a> = "addAll"

@send
external remove: (t<'a>, 'a) => t<'a> = "remove"

@send
external removeAll: (t<'a>, array<'a>) => t<'a> = "removeAll"

@send
external copy: t<'a> => t<'a> = "copy"

@send
external data: t<'a> => array<'a> = "data"

@send
external size: t<'a> => int = "size"

@send
external root: t<'a> => leaf<'a> = "root"

@send
external find: (t<'a>, ~x: float, ~y: float, ~radius: float=?) => 'a = "find"

@send
external visit: (t<'a>, (leaf<'a>, float, float, float, float) => unit) => t<'a> = "visit"

@send
external visitAfter: (t<'a>, (leaf<'a>, float, float, float, float) => unit) => t<'a> = "visitAfter"
