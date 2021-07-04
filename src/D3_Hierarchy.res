type rec hierarchyNode<'a> = {
  data: 'a,
  depth: int,
  height: int,
  parent: Js.null<hierarchyNode<'a>>,
  children: option<array<hierarchyNode<'a>>>,
  value: float,
}

type rec pointNode<'a> = {
  data: 'a,
  depth: int,
  height: int,
  parent: Js.null<pointNode<'a>>,
  children: option<array<pointNode<'a>>>,
  value: float,
  x: float,
  y: float,
}

type rec rectNode<'a> = {
  data: 'a,
  depth: int,
  height: int,
  parent: Js.null<rectNode<'a>>,
  children: option<array<rectNode<'a>>>,
  value: float,
  x0: float,
  y0: float,
  x1: float,
  y1: float,
}

type rec circularNode<'a> = {
  data: 'a,
  depth: int,
  height: int,
  parent: Js.null<circularNode<'a>>,
  children: option<array<circularNode<'a>>>,
  value: float,
  x: float,
  y: float,
  r: float,
}

type node<'a> = @unwrap
[
  | #Node(hierarchyNode<'a>)
  | #PointNode(pointNode<'a>)
  | #RectNode(rectNode<'a>)
  | #CircularNode(circularNode<'a>)
]

type link<'a> = {
  source: node<'a>,
  target: node<'a>,
}

type childrenAccessor<'a> = 'a => Js.null<array<'a>>

@module("d3")
external hierarchy: ('a, ~children: childrenAccessor<'a>=?) => node<'a> = "hierarchy"

@send
external ancestors: node<'a> => array<node<'a>> = "ancestors"

@send
external descendants: node<'a> => array<node<'a>> = "descendants"

@send
external leaves: node<'a> => array<node<'a>> = "leaves"

@send
external find: (node<'a>, node<'a> => bool) => option<node<'a>> = "find"

@send
external path: (node<'a>, ~target: node<'a>) => array<node<'a>> = "path"

@send
external links: node<'a> => array<link<'a>> = "links"

@send
external sum: (node<'a>, 'a => float) => node<'a> = "sum"

@send
external count: node<'a> => node<'a> = "count"

@send
external sort: (node<'a>, (node<'a>, node<'a>) => int) => node<'a> = "sort"

@send
external each: (node<'a>, (node<'a>, int) => unit) => unit = "each"

@send
external eachAfter: (node<'a>, (node<'a>, int) => unit) => unit = "eachAfter"

@send
external eachBefore: (node<'a>, (node<'a>, int) => unit) => unit = "eachBefore"

@send
external copy: node<'a> => node<'a> = "copy"

module Stratify = {
  type t<'a> = array<'a> => node<'a>

  @module("d3")
  external make: unit => t<'a> = "stratify"

  @send
  external id: (t<'a>, 'a => string) => t<'a> = "id"

  @send
  external parentId: (t<'a>, 'a => Js.null<string>) => t<'a> = "parentId"
}

module Cluster = {
  type t<'a> = hierarchyNode<'a> => pointNode<'a>

  @module("d3")
  external make: unit => t<'a> = "cluster"

  @send
  external getSize: t<'a> => (float, float) = "size"

  @send
  external setSize: (t<'a>, (float, float)) => t<'a> = "size"

  @send
  external getNodeSize: t<'a> => (float, float) = "nodeSize"

  @send
  external setNodeSize: (t<'a>, (float, float)) => t<'a> = "nodeSize"

  @send
  external separation: (t<'a>, (pointNode<'a>, pointNode<'a>) => int) => t<'a> = "separation"
}

module Tree = {
  type t<'a> = hierarchyNode<'a> => pointNode<'a>

  @module("d3")
  external make: unit => t<'a> = "tree"

  @send
  external getSize: t<'a> => (float, float) = "size"

  @send
  external setSize: (t<'a>, (float, float)) => t<'a> = "size"

  @send
  external getNodeSize: t<'a> => (float, float) = "nodeSize"

  @send
  external setNodeSize: (t<'a>, (float, float)) => t<'a> = "nodeSize"

  @send
  external separation: (t<'a>, (pointNode<'a>, pointNode<'a>) => int) => t<'a> = "separation"
}

module TreeMap = {
  type t<'a> = hierarchyNode<'a> => rectNode<'a>
  type tile<'a> = (rectNode<'a>, float, float, float, float) => unit

  @module("d3")
  external make: unit => t<'a> = "treemap"

  @send
  external setTile: (t<'a>, tile<'a>) => t<'a> = "tile"

  @send
  external setSize: (t<'a>, (float, float)) => t<'a> = "size"

  @send
  external setRound: (t<'a>, bool) => t<'a> = "round"

  @send
  external setPaddingInner: (t<'a>, float) => t<'a> = "paddingInner"

  @send
  external setPaddingOuter: (t<'a>, float) => t<'a> = "paddingOuter"

  @send
  external setPaddingTop: (t<'a>, float) => t<'a> = "paddingTop"

  @send
  external setPaddingRight: (t<'a>, float) => t<'a> = "paddingRight"

  @send
  external setPaddingBottom: (t<'a>, float) => t<'a> = "paddingBottom"

  @send
  external setPaddingLeft: (t<'a>, float) => t<'a> = "paddingLeft"

  @module("d3")
  external treemapBinary: tile<'a> = "treemapBinary"

  @module("d3")
  external treemapDice: tile<'a> = "treemapDice"

  @module("d3")
  external treemapSlice: tile<'a> = "treemapSlice"

  @module("d3")
  external treemapSliceDice: tile<'a> = "treemapSliceDice"

  @module("d3")
  external treemapResquarify: tile<'a> = "treemapResquarify"

  @send
  external ratio: (tile<'a>, float) => tile<'a> = "ratio"
}

module Partition = {
  type t<'a> = hierarchyNode<'a> => rectNode<'a>
  type tile<'a> = (rectNode<'a>, float, float, float, float) => unit

  @module("d3")
  external make: unit => t<'a> = "partition"

  @send
  external setSize: (t<'a>, (float, float)) => t<'a> = "size"

  @send
  external setRound: (t<'a>, bool) => t<'a> = "round"

  @send
  external setPadding: (t<'a>, float) => t<'a> = "padding"
}

module Pack = {
  type t<'a> = hierarchyNode<'a> => circularNode<'a>
  type packCircle = {
    x: float,
    y: float,
    r: float,
  }

  @module("d3")
  external make: unit => t<'a> = "pack"

  @send
  external setSize: (t<'a>, (float, float)) => t<'a> = "size"

  @send
  external setRadius: (t<'a>, bool) => t<'a> = "radius"

  @send
  external setPadding: (t<'a>, float) => t<'a> = "padding"

  @module("d3")
  external packSiblings: array<circularNode<'a>> => array<circularNode<'a>> = "packSiblings"

  @module("d3")
  external packEnclose: array<circularNode<'a>> => packCircle = "packEnclose"
}
