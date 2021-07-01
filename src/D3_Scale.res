type scale<'s, 'd, 'r> = 'd => 'r
type range<'s> = array<'s>
type domain<'s> = array<'s>

module LinearScale = {
  type linear
  type t<'d, 't> = scale<linear, 'd, 't>

  @module("d3")
  external makeDefault: unit => t<int, int> = "scaleLinear"

  @module("d3")
  external make: (~domain: domain<'d>, ~range: range<'r>) => t<'d, 'r> = "scaleLinear"

  @send
  external invert: (t<'d, 'r>, 'r) => float = "invert"

  @send
  external getDomain: t<'d, _> => domain<'d> = "domain"

  @send
  external setDomain: (t<'d, 'r>, domain<'newD>) => t<'newD, 'r> = "domain"

  @send
  external getRange: t<_, 'r> => range<'r> = "range"

  @send
  external setRange: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "range"

  @send
  external setRangeRound: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "rangeRound"

  @send
  external getClamp: t<_> => bool = "clamp"

  @send
  external setClamp: (t<_>, bool) => t<_> = "clamp"

  @send
  external getInterpolate: t<_> => D3_Interpolate.t<_> = "interpolate"

  @send
  external setInterpolate: (t<_>, D3_Interpolate.t<_>) => t<_> = "interpolate"

  @send
  external ticks: (t<'d, _>, ~count: int=?) => array<'d> = "ticks"

  @send
  external tickFormat: (t<_>, ~count: int=?, ~specifier: int=?) => string = "tickFormat"

  @send
  external nice: (t<_>, ~count: int=?) => t<_> = "nice"

  @send
  external copy: t<_> => t<_> = "copy"
}

module PowerScale = {
  type power
  type t<'d, 't> = scale<power, 'd, 't>

  @module("d3")
  external makeDefault: unit => t<int, int> = "scalePow"

  @module("d3")
  external make: (~domain: domain<'d>, ~range: range<'r>) => t<'d, 'r> = "scalePow"

  @module("d3")
  external makeSqrt: unit => t<int, int> = "scaleSqrt"

  @send
  external getExponent: t<_> => float = "exponent"

  @send
  external setExponent: (t<_>, float) => t<_> = "exponent"

  @send
  external invert: (t<'d, 'r>, 'r) => float = "invert"

  @send
  external getDomain: t<'d, _> => domain<'d> = "domain"

  @send
  external setDomain: (t<'d, 'r>, domain<'newD>) => t<'newD, 'r> = "domain"

  @send
  external getRange: t<_, 'r> => range<'r> = "range"

  @send
  external setRange: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "range"

  @send
  external setRangeRound: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "rangeRound"

  @send
  external getClamp: t<_> => bool = "clamp"

  @send
  external setClamp: (t<_>, bool) => t<_> = "clamp"

  @send
  external getInterpolate: t<_> => D3_Interpolate.t<_> = "interpolate"

  @send
  external setInterpolate: (t<_>, D3_Interpolate.t<_>) => t<_> = "interpolate"

  @send
  external ticks: (t<'d, _>, ~count: int=?) => array<'d> = "ticks"

  @send
  external tickFormat: (t<_>, ~count: int=?, ~specifier: int=?) => string = "tickFormat"

  @send
  external nice: (t<_>, ~count: int=?) => t<_> = "nice"

  @send
  external copy: t<_> => t<_> = "copy"
}

module LogScale = {
  type log
  type t<'d, 't> = scale<log, 'd, 't>

  @module("d3")
  external makeDefault: unit => t<int, int> = "scaleLog"

  @module("d3")
  external make: (~domain: domain<'d>, ~range: range<'r>) => t<'d, 'r> = "scaleLog"

  @send
  external invert: (t<'d, 'r>, 'r) => float = "invert"

  @send
  external getDomain: t<'d, _> => domain<'d> = "domain"

  @send
  external setDomain: (t<'d, 'r>, domain<'newD>) => t<'newD, 'r> = "domain"

  @send
  external getRange: t<_, 'r> => range<'r> = "range"

  @send
  external setRange: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "range"

  @send
  external setRangeRound: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "rangeRound"

  @send
  external getClamp: t<_> => bool = "clamp"

  @send
  external setClamp: (t<_>, bool) => t<_> = "clamp"

  @send
  external getInterpolate: t<_> => D3_Interpolate.t<_> = "interpolate"

  @send
  external setInterpolate: (t<_>, D3_Interpolate.t<_>) => t<_> = "interpolate"

  @send
  external ticks: (t<'d, _>, ~count: int=?) => array<'d> = "ticks"

  @send
  external tickFormat: (t<_>, ~count: int=?, ~specifier: int=?) => string = "tickFormat"

  @send
  external nice: (t<_>, ~count: int=?) => t<_> = "nice"

  @send
  external copy: t<_> => t<_> = "copy"
}

module SymlogScale = {
  type symlog
  type t<'d, 't> = scale<symlog, 'd, 't>

  @module("d3")
  external makeDefault: unit => t<int, int> = "scaleSymlog"

  @module("d3")
  external make: (~domain: domain<'d>, ~range: range<'r>) => t<'d, 'r> = "scaleSymlog"

  @send
  external getConstant: t<_> => float = "constant"

  @send
  external setConstant: (t<_>, float) => t<_> = "constant"

  @send
  external invert: (t<'d, 'r>, 'r) => float = "invert"

  @send
  external getDomain: t<'d, _> => domain<'d> = "domain"

  @send
  external setDomain: (t<'d, 'r>, domain<'newD>) => t<'newD, 'r> = "domain"

  @send
  external getRange: t<_, 'r> => range<'r> = "range"

  @send
  external setRange: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "range"

  @send
  external setRangeRound: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "rangeRound"

  @send
  external getClamp: t<_> => bool = "clamp"

  @send
  external setClamp: (t<_>, bool) => t<_> = "clamp"

  @send
  external getInterpolate: t<_> => D3_Interpolate.t<_> = "interpolate"

  @send
  external setInterpolate: (t<_>, D3_Interpolate.t<_>) => t<_> = "interpolate"

  @send
  external ticks: (t<'d, _>, ~count: int=?) => array<'d> = "ticks"

  @send
  external tickFormat: (t<_>, ~count: int=?, ~specifier: int=?) => string = "tickFormat"

  @send
  external nice: (t<_>, ~count: int=?) => t<_> = "nice"

  @send
  external copy: t<_> => t<_> = "copy"
}

module IdentityScale = {
  type identity
  type t<'d, 't> = scale<identity, 'd, 't>

  @module("d3")
  external make: (~domain: domain<'d>, ~range: range<'r>) => t<'d, 'r> = "scaleIdentity"

  @send
  external invert: (t<'d, 'r>, 'r) => float = "invert"

  @send
  external getDomain: t<'d, _> => domain<'d> = "domain"

  @send
  external setDomain: (t<'d, 'r>, domain<'newD>) => t<'newD, 'r> = "domain"

  @send
  external getRange: t<_, 'r> => range<'r> = "range"

  @send
  external setRange: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "range"

  @send
  external ticks: (t<'d, _>, ~count: int=?) => array<'d> = "ticks"

  @send
  external tickFormat: (t<_>, ~count: int=?, ~specifier: int=?) => string = "tickFormat"

  @send
  external nice: (t<_>, ~count: int=?) => t<_> = "nice"

  @send
  external copy: t<_> => t<_> = "copy"
}

module RadialScale = {
  type radial
  type t<'d, 't> = scale<radial, 'd, 't>

  @module("d3")
  external makeDefault: unit => t<int, int> = "scaleRadial"

  @module("d3")
  external make: (~domain: domain<'d>, ~range: range<'r>) => t<'d, 'r> = "scaleRadial"

  @send
  external invert: (t<'d, 'r>, 'r) => float = "invert"

  @send
  external getDomain: t<'d, _> => domain<'d> = "domain"

  @send
  external setDomain: (t<'d, 'r>, domain<'newD>) => t<'newD, 'r> = "domain"

  @send
  external getRange: t<_, 'r> => range<'r> = "range"

  @send
  external setRange: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "range"

  @send
  external getClamp: t<_> => bool = "clamp"

  @send
  external setClamp: (t<_>, bool) => t<_> = "clamp"

  @send
  external ticks: (t<'d, _>, ~count: int=?) => array<'d> = "ticks"

  @send
  external tickFormat: (t<_>, ~count: int=?, ~specifier: int=?) => string = "tickFormat"

  @send
  external nice: (t<_>, ~count: int=?) => t<_> = "nice"

  @send
  external copy: t<_> => t<_> = "copy"
}

module TimeScale = {
  type time
  type t<'t> = scale<time, Js.Date.t, 't>
  type timeDomain = domain<Js.Date.t>

  @module("d3")
  external makeDefault: unit => t<int> = "scaleTime"

  @module("d3")
  external make: (~domain: timeDomain, ~range: range<'r>) => t<'r> = "scaleTime"

  @module("d3")
  external makeUtcDefault: unit => t<int> = "scaleUtc"

  @module("d3")
  external makeUtc: (~domain: timeDomain, ~range: range<'r>) => t<'r> = "scaleUtc"

  @send
  external invert: (t<'r>, 'r) => Js.Date.t = "invert"

  @send
  external getDomain: t<_> => timeDomain = "domain"

  @send
  external setDomain: (t<_>, timeDomain) => t<_> = "domain"

  @send
  external getRange: t<'r> => range<'r> = "range"

  @send
  external setRange: (t<'r>, range<'newR>) => t<'newR> = "range"

  @send
  external setRangeRound: (t<'r>, range<'newR>) => t<'newR> = "rangeRound"

  @send
  external getClamp: t<_> => bool = "clamp"

  @send
  external setClamp: (t<_>, bool) => t<_> = "clamp"

  @send
  external getInterpolate: t<_> => D3_Interpolate.t<_> = "interpolate"

  @send
  external setInterpolate: (t<_>, D3_Interpolate.t<_>) => t<_> = "interpolate"

  @send
  external ticks: (
    t<_>,
    ~count: @unwrap
    [
      | #Int(int)
      | #Interval(D3_Time.interval<_>)
    ]=?,
  ) => array<Js.Date.t> = "ticks"

  @send
  external tickFormat: (t<_>, ~count: int=?, ~specifier: int=?) => string = "tickFormat"

  @send
  external nice: (
    t<_>,
    ~count: @unwrap
    [
      | #Int(int)
      | #Interval(D3_Time.interval<_>)
    ]=?,
  ) => t<_> = "nice"

  @send
  external copy: t<_> => t<_> = "copy"
}

module SequentialScale = {
  type sequential
  type t<'d, 't> = scale<sequential, 'd, 't>

  @module("d3")
  external make: unit => t<int, int> = "scaleLinear"

  @module("d3")
  external makeLog: unit => t<int, int> = "scaleSequentialLog"

  @module("d3")
  external makePow: unit => t<int, int> = "scaleSequentialPow"

  @module("d3")
  external makeSqrt: unit => t<int, int> = "scaleSequentialSqrt"

  @module("d3")
  external makeSymlog: unit => t<int, int> = "scaleSequentialSymlog"

  @module("d3")
  external makeQuantile: unit => t<int, int> = "scaleSequentialQuantile"

  @send
  external invert: (t<'d, 'r>, 'r) => float = "invert"

  @send
  external getDomain: t<'d, _> => domain<'d> = "domain"

  @send
  external setDomain: (t<'d, 'r>, domain<'newD>) => t<'newD, 'r> = "domain"

  @send
  external getRange: t<_, 'r> => range<'r> = "range"

  @send
  external setRange: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "range"

  @send
  external setRangeRound: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "rangeRound"

  @send
  external getClamp: t<_> => bool = "clamp"

  @send
  external setClamp: (t<_>, bool) => t<_> = "clamp"

  @send
  external getInterpolate: t<_> => D3_Interpolate.t<_> = "interpolator"

  @send
  external setInterpolate: (t<_>, D3_Interpolate.t<_>) => t<_> = "interpolator"

  @send
  external copy: t<_> => t<_> = "copy"
}

module DivergingScale = {
  type diverging
  type t<'d, 't> = scale<diverging, 'd, 't>

  @module("d3")
  external make: unit => t<int, int> = "scaleDiverging"

  @module("d3")
  external makeLog: unit => t<int, int> = "scaleDivergingLog"

  @module("d3")
  external makePow: unit => t<int, int> = "scaleDivergingPow"

  @module("d3")
  external makeSqrt: unit => t<int, int> = "scaleDivergingSqrt"

  @module("d3")
  external makeSymlog: unit => t<int, int> = "scaleDivergingSymlog"

  @send
  external getDomain: t<'d, _> => domain<'d> = "domain"

  @send
  external setDomain: (t<'d, 'r>, domain<'newD>) => t<'newD, 'r> = "domain"

  @send
  external getClamp: t<_> => bool = "clamp"

  @send
  external setClamp: (t<_>, bool) => t<_> = "clamp"

  @send
  external ticks: (t<'d, _>, ~count: int=?) => array<'d> = "ticks"

  @send
  external tickFormat: (t<_>, ~count: int=?, ~specifier: int=?) => string = "tickFormat"

  @send
  external nice: (t<_>, ~count: int=?) => t<_> = "nice"

  @send
  external copy: t<_> => t<_> = "copy"
}

module QuantizeScale = {
  type quantize
  type t<'d, 't> = scale<quantize, 'd, 't>

  @module("d3")
  external makeDefault: unit => t<int, int> = "scaleQuantize"

  @module("d3")
  external make: (~domain: domain<'d>, ~range: range<'r>) => t<'d, 'r> = "scaleQuantize"

  @send
  external invertExtent: (t<'d, 'r>, 'r) => (float, float) = "invert"

  @send
  external thresholds: t<_> => array<float> = "thresholds"

  @send
  external getDomain: t<'d, _> => domain<'d> = "domain"

  @send
  external setDomain: (t<'d, 'r>, domain<'newD>) => t<'newD, 'r> = "domain"

  @send
  external getRange: t<_, 'r> => range<'r> = "range"

  @send
  external setRange: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "range"

  @send
  external ticks: (t<'d, _>, ~count: int=?) => array<'d> = "ticks"

  @send
  external tickFormat: (t<_>, ~count: int=?, ~specifier: int=?) => string = "tickFormat"

  @send
  external nice: (t<_>, ~count: int=?) => t<_> = "nice"

  @send
  external copy: t<_> => t<_> = "copy"
}

module QualtileScale = {
  type quantile
  type t<'d, 't> = scale<quantile, 'd, 't>

  @module("d3")
  external makeDefault: unit => t<int, int> = "scaleQuantile"

  @module("d3")
  external make: (~domain: domain<'d>, ~range: range<'r>) => t<'d, 'r> = "scaleQuantile"

  @send
  external invertExtent: (t<'d, 'r>, 'r) => (float, float) = "invert"

  @send
  external quantiles: t<_> => array<float> = "thresholds"

  @send
  external getDomain: t<'d, _> => domain<'d> = "domain"

  @send
  external setDomain: (t<'d, 'r>, domain<'newD>) => t<'newD, 'r> = "domain"

  @send
  external getRange: t<_, 'r> => range<'r> = "range"

  @send
  external setRange: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "range"

  @send
  external copy: t<_> => t<_> = "copy"
}

module ThresholdScale = {
  type threshold
  type t<'d, 't> = scale<threshold, 'd, 't>

  @module("d3")
  external makeDefault: unit => t<int, int> = "scaleThreshold"

  @module("d3")
  external make: (~domain: domain<'d>, ~range: range<'r>) => t<'d, 'r> = "scaleThreshold"

  @send
  external invertExtent: (t<'d, 'r>, 'r) => (float, float) = "invert"

  @send
  external getDomain: t<'d, _> => domain<'d> = "domain"

  @send
  external setDomain: (t<'d, 'r>, domain<'newD>) => t<'newD, 'r> = "domain"

  @send
  external getRange: t<_, 'r> => range<'r> = "range"

  @send
  external setRange: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "range"

  @send
  external copy: t<_> => t<_> = "copy"
}

module OrdinalScale = {
  type ordinal
  type t<'d, 't> = scale<ordinal, 'd, 't>

  @module("d3")
  external makeDefault: unit => t<int, int> = "scaleOrdinal"

  @module("d3")
  external make: (~domain: domain<'d>, ~range: range<'r>) => t<'d, 'r> = "scaleOrdinal"

  @send
  external invertExtent: (t<'d, 'r>, 'r) => (float, float) = "invert"

  @send
  external thresholds: t<_> => array<float> = "thresholds"

  @send
  external getDomain: t<'d, _> => domain<'d> = "domain"

  @send
  external setDomain: (t<'d, 'r>, domain<'newD>) => t<'newD, 'r> = "domain"

  @send
  external getRange: t<_, 'r> => range<'r> = "range"

  @send
  external setRange: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "range"

  @send
  external copy: t<_> => t<_> = "copy"
}

module BandScale = {
  type band
  type t<'d, 't> = scale<band, 'd, 't>

  @module("d3")
  external makeDefault: unit => t<int, int> = "scaleBand"

  @module("d3")
  external make: (~domain: domain<'d>, ~range: range<'r>) => t<'d, 'r> = "scaleBand"

  @send
  external getDomain: t<'d, _> => domain<'d> = "domain"

  @send
  external setDomain: (t<'d, 'r>, domain<'newD>) => t<'newD, 'r> = "domain"

  @send
  external setRangeRound: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "rangeRound"

  @send
  external getRange: t<_, 'r> => range<'r> = "range"

  @send
  external setRange: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "range"

  @send
  external copy: t<_> => t<_> = "copy"

  @send
  external getPaddingInner: t<_> => float = "paddingInner"

  @send
  external setPaddingInner: (t<_>, float) => float = "paddingInner"

  @send
  external setPaddingOuter: (t<_>, float) => float = "paddingOuter"

  @send
  external getPaddingOuter: t<_> => float = "paddingOuter"

  @send
  external setPadding: (t<_>, float) => float = "padding"

  @send
  external getPadding: t<_> => float = "padding"

  @send
  external setAlign: (t<_>, float) => float = "align"

  @send
  external getAlign: t<_> => float = "align"

  @send
  external getBandWidth: t<_> => float = "bandwidth"

  @send
  external getStep: t<_> => float = "step"
}

module PointScale = {
  type point
  type t<'d, 't> = scale<point, 'd, 't>

  @module("d3")
  external makeDefault: unit => t<int, int> = "scaleBand"

  @module("d3")
  external make: (~domain: domain<'d>, ~range: range<'r>) => t<'d, 'r> = "scaleBand"

  @send
  external getDomain: t<'d, _> => domain<'d> = "domain"

  @send
  external setDomain: (t<'d, 'r>, domain<'newD>) => t<'newD, 'r> = "domain"

  @send
  external setRangeRound: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "rangeRound"

  @send
  external getRange: t<_, 'r> => range<'r> = "range"

  @send
  external setRange: (t<'d, 'r>, range<'newR>) => t<'d, 'newR> = "range"

  @send
  external copy: t<_> => t<_> = "copy"

  @send
  external setPadding: (t<_>, float) => float = "padding"

  @send
  external getPadding: t<_> => float = "padding"

  @send
  external setAlign: (t<_>, float) => float = "align"

  @send
  external getAlign: t<_> => float = "align"

  @send
  external getBandWidth: t<_> => float = "bandwidth"

  @send
  external getStep: t<_> => float = "step"
}
