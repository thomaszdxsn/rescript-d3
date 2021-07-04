type matrix = array<array<float>>
type chordGroup = {
  startAngle: float,
  endAngle: float,
  value: float,
  index: int,
}
type chord = {
  source: chordGroup,
  target: chordGroup,
}
type chordLayout = matrix => array<chord>

type ribbonGroup = {
  startAngle: float,
  endAngle: float,
  radius: float,
}
type ribbonDatum<'a> = {
  source: 'a,
  target: 'a,
}
type ribbon = ribbonDatum<ribbonGroup>

type ribbonGenerator<'a> = ribbonDatum<'a> => string

@module("d3")
external chord: unit => chordLayout = "chord"

@send
external setPadAngle: (chordLayout, float) => chordLayout = "padAngle"

@send
external sortGroups: (chordLayout, (float, float) => int) => chordLayout = "sortGroups"

@send
external sortSubGroups: (chordLayout, (float, float) => int) => chordLayout = "sortSubGroups"

@send
external sortChords: (chordLayout, (float, float) => int) => chordLayout = "sortChords"

@module("d3")
external ribbon: unit => ribbonGenerator<'a> = "ribbon"

@send
external setSource: (ribbonGenerator<'a>, 'a => float) => ribbonGenerator<'a> = "source"

@send
external setTarget: (ribbonGenerator<'a>, 'a => float) => ribbonGenerator<'a> = "target"

@send
external setRadius: (ribbonGenerator<'a>, 'a => float) => ribbonGenerator<'a> = "radius"

@send
external setSourceRadius: (ribbonGenerator<'a>, 'a => float) => ribbonGenerator<'a> = "sourceRadius"

@send
external setTargetRadius: (ribbonGenerator<'a>, 'a => float) => ribbonGenerator<'a> = "targetRadius"

@send
external setStartAngle: (ribbonGenerator<'a>, 'a => float) => ribbonGenerator<'a> = "startAngle"

@send
external setEndAngle: (ribbonGenerator<'a>, 'a => float) => ribbonGenerator<'a> = "endAngle"

@send
external setRibbonPadAngle: (ribbonGenerator<'a>, 'a => float) => ribbonGenerator<'a> = "padAngle"
