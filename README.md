# rescript-d3

- [x] D3_Time
- [x] D3_Time_Format
- [ ] D3_Timer
- [ ] D3_Scale
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
- [ ] D3_Array
- [ ] D3_Fetch

## Usage

### d3-time (D3_Time)

> The specific usage please refer to [d3-time](https://github.com/d3/d3-time)

```rescript
open D3
let ceil = Time.timeDay->Time.ceil(Js.Date.make())
Js.log(ceil)
// 2021-06-21T00:00:00.000Z
```