type t<'a> = float => 'a
type number = @unwrap
[
  | #Float(float)
  | #Int(int)
]

@module("d3")
external make: ('a, 'a) => t<'a> = "interpolate"

@module("d3")
external interpolateNumber: (number, number) => t<float> = "interpolateNumber"

@module("d3")
external interpolateRound: (number, number) => t<int> = "interpolateRound"

@module("d3")
external interpolateString: (string, string) => t<string> = "interpolateString"

@module("d3")
external interpolateDate: (Js.Date.t, Js.Date.t) => t<Js.Date.t> = "interpolateDate"

@module("d3")
external interpolateArray: (
  Js.TypedArray2.array_like<'a>,
  Js.TypedArray2.array_like<'a>,
) => t<Js.TypedArray2.array_like<'a>> = "interpolateArray"

@module("d3")
external interpolateNumberArray: (array<number>, array<number>) => t<array<number>> =
  "interpolateNumberArray"

@module("d3")
external interpolateObject: ('a, 'b) => t<'c> = "interpolateObject"

@module("d3")
external interpolateTransformCss: (string, string) => t<string> = "interpolateTransformCss"

@module("d3")
external interpolateTransformSvg: (string, string) => t<string> = "interpolateTransformSvg"

@module("d3")
external interpolateZoom: (array<float>, array<float>) => t<float> = "interpolateZoom"

@module("d3")
external interpolateDiscrete: array<'a> => t<'a> = "interpolateDiscrete"

@module("d3")
external quantize: (t<'a>, int) => 'a = "quantize"

type rgb = {
  r: int,
  g: int,
  b: int,
  opacity: float,
}

@module("d3")
external interpolateRgb: ('a, 'b) => t<rgb> = "interpolateRgb"

@module("d3")
external interpolateRgbBasis: array<string> => t<string> = "interpolateRgbBasis"

@module("d3")
external interpolateRgbBasisClosed: array<string> => t<string> = "interpolateRgbBasisClosed"

@module("d3")
external interpolateHsl: (string, string) => t<string> = "interpolateHsl"

@module("d3")
external interpolateHslLong: (string, string) => t<string> = "interpolateHslLong"

@module("d3")
external interpolateLab: (string, string) => t<string> = "interpolateLab"

@module("d3")
external interpolateHcl: (string, string) => t<string> = "interpolateHcl"

@module("d3")
external interpolateHclLoing: (string, string) => t<string> = "interpolateHclLong"

@module("d3")
external interpolateCubehelix: (string, string) => t<string> = "interpolateCubehelix"

@module("d3")
external interpolateCubehelixLong: (string, string) => t<string> = "interpolateCubehelixLong"

@send
external gamma: (t<_>, float, string, string) => t<string> = "gamma"

@module("d3")
external interpolateHue: (int, int) => t<int> = "interpolateHue"


