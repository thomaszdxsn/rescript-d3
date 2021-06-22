type parser = string => Js.Date.t
type formatter = Js.Date.t => string

@module("d3")
external timeParse: string => parser = "timeParse"

@module("d3")
external utcParse: string => parser = "utcParse"

@module("d3")
external isoParse: string => parser = "isoParse"

@module("d3")
external timeFormat: string => formatter = "timeFormat"

@module("d3")
external utcFormat: string => formatter = "utcFormat"

@module("d3")
external isoFormat: string => formatter = "isoFormat"
