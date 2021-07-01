# rescript-d3

- [x] D3_Time
- [x] D3_Time_Format
- [x] D3_Timer
- [x] D3_Scale
- [ ] D3_Axis
- [ ] D3_Scale_Chromatica
- [ ] D3_Selection
- [ ] D3_Transition
- [ ] D3_Zoom
- [ ] D3_Shape
- [ ] D3_Random
- [ ] D3_Quadtree
- [ ] D3_Polygon
- [ ] D3_Path
- [ ] D3_Interpolate
- [ ] D3_Hierarchy
- [ ] D3_Geo
- [ ] D3_Format
- [ ] D3_Force
- [ ] D3_Easy
- [ ] D3_Dsv
- [ ] D3_Drag
- [ ] D3_Dispatch
- [ ] D3_Delaunay
- [ ] D3_Contour
- [ ] D3_Color
- [ ] D3_Chord
- [ ] D3_Brush
- [x] D3_Array
- [ ] D3_Fetch

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