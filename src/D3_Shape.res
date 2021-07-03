type vector2d = (float, float)
type canvasContext2D

module Curve = {
  type t
  type curveFactoryGeneric<'a> = canvasContext2D => t
  type normal
  type lineonly
  type bundle
  type cardinal
  type catmullRom
  type curveFactory = curveFactoryGeneric<normal>
  type curveFactoryLineOnly = curveFactoryGeneric<lineonly>
  type curveBundleFactory = curveFactoryGeneric<bundle>
  type curveCardinalFactory = curveFactoryGeneric<cardinal>
  type curveCatmullRomFactory = curveFactoryGeneric<catmullRom>

  @send
  external alpha: (curveCatmullRomFactory, float) => curveCatmullRomFactory = "alpha"

  @send
  external beta: (curveBundleFactory, float) => curveBundleFactory = "beta"

  @send
  external tension: (curveCardinalFactory, float) => curveCardinalFactory = "tension"

  @module("d3")
  external curveBasis: curveFactory = "curveBasis"

  @module("d3")
  external curveBasisClosed: curveFactory = "curveBasisClosed"

  @module("d3")
  external curveBasisOpen: curveFactory = "curveBasisOpen"

  @module("d3")
  external curveBumpX: curveFactory = "curveBumpX"

  @module("d3")
  external curveBumpY: curveFactory = "curveBumpY"

  @module("d3")
  external curveBundle: curveFactory = "curveBundle"

  @module("d3")
  external curveCardinal: curveCardinalFactory = "curveCardinal"

  @module("d3")
  external curveCardinalClosed: curveCardinalFactory = "curveCardinalClosed"

  @module("d3")
  external curveCardinalOpen: curveCardinalFactory = "curveCardinalOpen"

  @module("d3")
  external curveCatmullRom: curveFactory = "curveCatmullRom"

  @module("d3")
  external curveCatmullClosed: curveFactory = "curveCatmullRomClosed"

  @module("d3")
  external curveCatmullOpen: curveFactory = "curveCatmullRomOpen"

  @module("d3")
  external curveLinear: curveFactory = "curveLinear"

  @module("d3")
  external curveMonotoneX: curveFactory = "curveMonotoneX"

  @module("d3")
  external curveMonotoneY: curveFactory = "curveMonotoneY"

  @module("d3")
  external curveNatural: curveFactory = "curveNatural"

  @module("d3")
  external curveStep: curveFactory = "curveStep"

  @module("d3")
  external curveStepAfter: curveFactory = "curveStepAfter"

  @module("d3")
  external curveStepBefore: curveFactory = "curveStepBefore"
}

module Arc = {
  type datum = {
    innerRadius: float,
    outerRadius: float,
    startAngle: float,
    endAngle: float,
  }
  type t = datum => string

  @module("d3")
  external make: unit => t = "arc"

  @send
  external centroid: (t, option<datum>) => vector2d = "centroid"

  @send
  external setInnerRadius: (t, float) => t = "innerRadius"

  @send
  external getInnerRadius: (t, t, datum) => float = "innerRadius"

  @send
  external setOuterRadius: (t, float) => t = "outerRadius"

  @send
  external getOuterRadius: (t, t, datum) => float = "outerRadius"

  @send
  external setCornerRadius: (t, float) => t = "cornerRadius"

  @send
  external getCornerRadius: (t, t, datum) => float = "cornerRadius"

  @send
  external setStartAngle: (t, float) => t = "startAngle"

  @send
  external getStartAngle: (t, t, datum) => float = "startAngle"

  @send
  external setEndAngle: (t, float) => t = "endAngle"

  @send
  external getEndAngle: (t, t, datum) => float = "endAngle"

  @send
  external setPadAngle: (t, float) => t = "padAngle"

  @send
  external getPadAngle: (t, t, option<datum>) => option<float> = "padAngle"

  @send
  external setPadRadius: (t, float) => t = "padRadius"

  @send
  external getPadRadius: (t, t, option<datum>) => option<float> = "padRadius"

  @send
  external getContext: t => canvasContext2D = "context"

  @send
  external setContext: (t, Js.null<canvasContext2D>) => t = "context"
}

module Pie = {
  type result<'a> = {
    data: 'a,
    value: float,
    index: int,
    startAngle: float,
    endAngle: float,
    padAngle: float,
  }
  type t<'a> = array<'a> => result<'a>

  @module("d3")
  external make: unit => t<'a> = "pie"

  @send
  external getValue: (t<'a>, 'a) => float = "value"

  @send
  external setValue: (t<'a>, 'a => float) => t<'a> = "value"

  @send
  external sort: (t<'a>, 'a, 'a => int) => t<'a> = "sort"

  @send
  external sortValues: (t<_>, float, float => int) => t<_> = "sortValues"

  @send
  external getStartAngle: (t<'a>, t<'a>, 'a) => float = "startAngle"

  @send
  external setStartAngle: (t<_>, float) => t<_> = "startAngle"

  @send
  external getEndAngle: (t<'a>, t<'a>, 'a) => float = "endAngle"

  @send
  external setEndAngle: (t<_>, float) => t<_> = "endAngle"

  @send
  external getPadAngle: (t<'a>, t<'a>, 'a) => float = "padAngle"

  @send
  external setPadAngle: (t<_>, float) => t<_> = "padAngle"

  @send
  external setCurve: (t<'a>, Curve.curveFactory) => t<'a> = "curve"
}

module Line = {
  type t<'a> = array<'a> => string

  @module("d3")
  external make: unit => t<'a> = "line"

  @send
  external getX: t<'a> => (t<'a>, 'a => float) = "x"

  @send
  external setX: (t<'a>, 'a => float) => t<'a> = "x"

  @send
  external getY: t<'a> => (t<'a>, 'a => float) = "y"

  @send
  external setY: (t<'a>, 'a => float) => t<'a> = "y"

  @send
  external getDefined: t<'a> => (t<'a>, 'a => bool) = "defined"

  @send
  external setDefined: (t<'a>, 'a => bool) => t<'a> = "defined"

  @send
  external getContext: t<_> => canvasContext2D = "context"

  @send
  external setContext: (t<'a>, Js.null<canvasContext2D>) => t<'a> = "context"

  @send
  external setCurve: (t<'a>, Curve.curveFactory) => t<'a> = "curve"
}

module LineRadial = {
  type t<'a> = array<'a> => string

  @module("d3")
  external make: unit => t<'a> = "lineRadial"

  @send
  external getAngle: t<'a> => (t<'a>, 'a => float) = "angle"

  @send
  external setAngle: (t<'a>, 'a => float) => t<'a> = "angle"

  @send
  external getRadius: t<'a> => (t<'a>, 'a => float) = "radius"

  @send
  external setRadius: (t<'a>, 'a => float) => t<'a> = "radius"

  @send
  external getDefined: t<'a> => (t<'a>, 'a => bool) = "defined"

  @send
  external setDefined: (t<'a>, 'a => bool) => t<'a> = "defined"

  @send
  external getContext: t<_> => canvasContext2D = "context"

  @send
  external setContext: (t<'a>, Js.null<canvasContext2D>) => t<'a> = "context"

  @send
  external setCurve: (t<'a>, Curve.curveFactory) => t<'a> = "curve"
}

module Area = {
  type t<'a> = array<'a> => string

  @module("d3")
  external make: unit => t<'a> = "area"

  @send
  external setX0: (t<'a>, ('a, int) => float) => t<'a> = "x0"

  @send
  external setX1: (t<'a>, ('a, int) => float) => t<'a> = "x1"

  @send
  external setY0: (t<'a>, ('a, int) => float) => t<'a> = "y0"

  @send
  external setY1: (t<'a>, ('a, int) => float) => t<'a> = "y0"

  @send
  external getDefined: t<'a> => (t<'a>, 'a => bool) = "defined"

  @send
  external setDefined: (t<'a>, 'a => bool) => t<'a> = "defined"

  @send
  external getContext: t<_> => canvasContext2D = "context"

  @send
  external setContext: (t<'a>, Js.null<canvasContext2D>) => t<'a> = "context"

  @send
  external lineX0: t<'a> => Line.t<'a> = "lineX0"
  @send
  external lineX1: t<'a> => Line.t<'a> = "lineX1"
  @send
  external lineY0: t<'a> => Line.t<'a> = "lineX0"
  @send
  external lineY1: t<'a> => Line.t<'a> = "lineX1"

  @send
  external setCurve: (t<'a>, Curve.curveFactory) => t<'a> = "curve"
}

module AreaRadial = {
  type t<'a> = array<'a> => string

  @module("d3")
  external make: unit => t<'a> = "area"

  @send
  external setStartAngle: (t<'a>, ('a, int) => float) => t<'a> = "startAngle"

  @send
  external setEndAngle: (t<'a>, ('a, int) => float) => t<'a> = "endAngle"

  @send
  external setInnerRadius: (t<'a>, ('a, int) => float) => t<'a> = "innerRadius"

  @send
  external setOuterRadius: (t<'a>, ('a, int) => float) => t<'a> = "outerRadius"

  @send
  external getDefined: t<'a> => (t<'a>, 'a => bool) = "defined"

  @send
  external setDefined: (t<'a>, 'a => bool) => t<'a> = "defined"

  @send
  external getContext: t<_> => canvasContext2D = "context"

  @send
  external setContext: (t<'a>, Js.null<canvasContext2D>) => t<'a> = "context"

  @send
  external lineStartAngle: t<'a> => Line.t<'a> = "lineStartAngle"
  @send
  external lineEndAngle: t<'a> => Line.t<'a> = "lineEndAngle"
  @send
  external lineInnerRadius: t<'a> => Line.t<'a> = "lineInnerRadius"
  @send
  external lineOuterRadius: t<'a> => Line.t<'a> = "lineOuterRadius"

  @send
  external setCurve: (t<'a>, Curve.curveFactory) => t<'a> = "curve"
}

module Link = {
  type datum = {
    source: vector2d,
    target: vector2d,
  }
  type t = datum => string

  @module("d3")
  external linkVertical: t = "linkVertical"

  @module("d3")
  external linkHorizontal: t = "linkHorizontal"

  @send
  external getContext: t => canvasContext2D = "context"

  @send
  external setContext: (t, Js.null<canvasContext2D>) => t = "context"
}

module LinkRadial = {
  type t = vector2d => string

  @module("d3")
  external make: t = "linkRadial"
}
