type t

@module("d3")
external dsvFormat: string => t = "dsvFormat"

@send
external parse: (t, string) => array<'a> = "parse"

@send
external parseRows: (t, string) => array<'a> = "parseRows"

@send
external format: (t, array<'a>) => string = "format"

@send
external formatBody: (t, array<'a>) => string = "formatBody"

@send
external formatRows: (t, array<'a>) => string = "formatRows"

@send
external formatRow: (t, array<'a>) => string = "formatRow"

@send
external formatValue: (t, array<'a>) => string = "formatValue"