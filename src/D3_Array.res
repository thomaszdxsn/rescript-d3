type _number = @unwrap [#Float(float) | #Int(int)]

@module("d3")
external min: Js.Array2.t<'a> => 'a = "min"

@module("d3")
external minIndex: Js.Array2.t<_> => int = "minIndex"

@module("d3")
external max: Js.Array2.t<'a> => 'a = "max"

@module("d3")
external maxIndex: Js.Array2.t<_> => int = "max"

@module("d3")
external extent: Js.Array2.t<'a> => (option<'a>, option<'a>) = "extent"

@module("d3")
external mode: Js.Array2.t<'a> => 'a = "mode"

@module("d3")
external sumInt: Js.Array2.t<int> => int = "sum"

@module("d3")
external sumFloat: Js.Array2.t<float> => float = "sum"

@module("d3")
external fsum: Js.Array2.t<float> => float = "fsum"

@module("d3")
external mean: Js.Array2.t<_number> => float = "mean"

@module("d3")
external medianInt: Js.Array2.t<int> => int = "meadianInt"

@module("d3")
external medianFloat: Js.Array2.t<float> => float = "medianFloat"

@module("d3")
external cumsumInt: Js.Array2.t<int> => int = "cumsum"

@module("d3")
external cumsumFloat: Js.Array2.t<float> => float = "cumsum"

@module("d3")
external fcumsum: Js.Array2.t<float> => float = "fcumsum"

@module("d3")
external quantile: (Js.Array2.t<_number>, _number) => _number = "quantile"

@module("d3")
external quantileSorted: (Js.Array2.t<_number>, _number) => _number = "quantileSorted"

@module("d3")
external variance: Js.Array2.t<_number> => float = "variance"

@module("d3")
external deviation: Js.Array2.t<_number> => float = "deviation"

module Adder = {
  type t

  @module("d3")
  external make: unit => t = "adder"

  @send
  external add: (t, _number) => t = "add"

  @send
  external valueOf: t => float = "valueOf"
}

type arrayWithAccessor<'a, 'b> = (Js.Array2.t<'a>, 'a => 'b) => 'a
type arrayWithComparator<'a> = (Js.Array2.t<'a>, ('a, 'a) => int) => 'a

@module("d3")
external leastWithComparator: arrayWithComparator<'a> = "least"

@module("d3")
external leastWithAccessor: arrayWithAccessor<'a, 'b> = "least"

@module("d3")
external leastIndexWithComparator: arrayWithComparator<'a> = "leastIndex"

@module("d3")
external leastIndexWithAccessor: arrayWithAccessor<'a, 'b> = "leastIndex"

@module("d3")
external greatestWithComparator: arrayWithComparator<'a> = "greatest"

@module("d3")
external greatestWithAccessor: arrayWithAccessor<'a, 'b> = "greatest"

@module("d3")
external greatestIndexWithComparator: arrayWithComparator<'a> = "greatestIndex"

@module("d3")
external greatestIndexWithAccessor: arrayWithAccessor<'a, 'b> = "greatestIndex"

type arrayBisect<'a> = (Js.Array2.t<'a>, 'a, ~low: int=?, ~high: int=?) => int

@module("d3")
external bisectLeft: arrayBisect<'a> = "bisectLeft"

@module("d3")
external bisect: arrayBisect<'a> = "bisect"

@module("d3")
external bisectRight: arrayBisect<'a> = "bisectRight"

@module("d3")
external bisectCenter: arrayBisect<'a> = "bisectCenter"

type bisector<'a> = {
  left: arrayBisect<'a>,
  right: arrayBisect<'a>,
  center: arrayBisect<'a>,
}

@module("d3")
external bisectorFromAccessor: arrayWithAccessor<'a, 'b> => bisector<'a> = "bisector"

@module("d3")
external bisectorFromComparator: arrayWithComparator<'a> => bisector<'a> = "bisector"

@module("d3")
external quickselect: (
  Js.Array2.t<'a>,
  int,
  ~left: int=?,
  ~right: int=?,
  ~cmp: ('a, 'a) => int=?,
) => Js.Array2.t<'a> = "quickselect"

@module("d3")
external ascending: ('a, 'a) => int = "ascending"

@module("d3")
external descending: ('a, 'a) => int = "descending"
