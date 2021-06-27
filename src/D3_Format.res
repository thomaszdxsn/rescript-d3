type number = @unwrap [#Float(float) | #Int(int)]
type format = (string, number) => string
type formatPrefix = (string, number, number) => string
type formatLocaleDefinition = {
  decimal: string,
  thousands: string,
  grouping: array<number>,
  currency: (string, string),
  numerals: option<array<string>>,
  percent: option<string>,
  minus: option<string>,
  nan: option<string>,
}
type formatLocaleObject
type formatSpecifierObject = {
  fill: option<string>,
  align: option<string>,
  sign: option<string>,
  zero: option<string>,
  width: option<string>,
  comma: option<string>,
  precision: option<string>,
  trim: option<string>,
  @as("type")
  type_: option<string>,
}
type formatSpecifier = {
  fill: string,
  align: string,
  sign: string,
  symbol: string,
  zero: bool,
  width: option<number>,
  comma: bool,
  precision: option<number>,
  trim: bool,
  @as("type")
  type_: string,
}

@module("d3")
external format: format = "format"

@module("d3")
external formatPrefix: formatPrefix = "formatPrefix"

@module("d3")
external formatLocale: formatLocaleDefinition => formatLocaleObject = "formatLocale"

@module("d3")
external precisionFixed: number => number = "precisionFixed"

@module("d3")
external precisionPrefix: (number, number) => number = "precisionPrefix"

@module("d3")
external precisionRound: (number, number) => number = "precisionRound"

@module("d3")
external makeFormatSpecifier: formatSpecifierObject => formatSpecifier = "FormatSpecifier"

@send
external localeFormat: formatLocaleObject => format = "format"

@send
external localeFormatPrefix: formatLocaleObject => formatPrefix = "formatPrefix"
