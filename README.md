# rescript-d3

- [x] D3_Time
- [x] D3_Time_Format
- [x] D3_Timer
- [x] D3_Scale
- [x] D3_Axis
- [x] D3_Scale_Chromatica
- [x] D3_Selection
- [x] D3_Transition
- [x] D3_Zoom
- [x] D3_Shape
- [x] D3_Random
- [x] D3_Quadtree
- [x] D3_Polygon
- [x] D3_Path
- [x] D3_Interpolate
- [x] D3_Hierarchy
- [x] D3_Geo
- [x] D3_Format
- [x] D3_Force
- [x] D3_Easy
- [x] D3_Dsv
- [x] D3_Drag
- [x] D3_Dispatch
- [x] D3_Delaunay
- [x] D3_Contour
- [x] D3_Color
- [x] D3_Chord
- [x] D3_Brush
- [x] D3_Array
- [x] D3_Fetch

## Usage

### d3-time (D3_Time)

> [d3-time](https://github.com/d3/d3-time) has full specification

```rescript
open D3
let ceil = Time.timeDay->Time.ceil(Js.Date.make())
Js.log(ceil)
// 2021-06-21T00:00:00.000Z
```

### d3-timer (D3_Timer)

> [d3-timer](https://github.com/d3/d3-timer) has full specification

```rescript
open D3
let timer = Timer.timer(~callback=elapsed=> elapsed < 200 ? Js.log(elapsed) : timer->Timer.stop)
```


### d3-time-format (D3_Time_Format)

> [d3-time-format](https://github.com/d3/d3-time-format)

```rescript
open D3

let parser = "%Y-%m-%d"->TimeFormat.timeParse
let isoString = "2021-06-23"->parser->Js.Date.toISOString
Js.log(isoString)
```