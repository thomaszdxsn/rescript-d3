type selection

@module("d3")
external make: unit => selection = "selection"

@module("d3")
external makeWithSelector: string => selection = "select"

@module("d3")
external makeAllWithSelector: string => selection = "selectAll"

@send
external select: (selection, string) => selection = "select"

@send
external selectAll: (selection, string) => selection = "selectAll"

@send
external filter: (
  selection,
  @unwrap
  [
    | #Selector(string)
    | #Predicate((Dom.htmlElement, int) => bool)
  ],
) => selection = "filter"

@send
external merge: (selection, selection) => selection = "merge"

@send
external selectChild: (
  selection,
  @unwrap
  [
    | #Selector(string)
    | #SelectorFn((Dom.htmlElement, int, array<Dom.htmlElement>) => bool)
  ],
) => selection = "selectChild"

@send
external selectFirstChild: selection => selection = "selectChild"

@send
external selectAllChildren: selection => selection = "selectChildren"

@send
external selectChildren: (
  selection,
  @unwrap
  [
    | #Selector(string)
    | #SelectorFn((Dom.htmlElement, int, array<Dom.htmlElement>) => bool)
  ],
) => selection = "selectChildren"

@send
external getAttr: (selection, string) => string = "attr"

@send
external setAttr: (
  selection,
  @unwrap
  [
    | #String(string)
    | #Int(int)
    | #Float(float)
    | #Bool(bool)
  ],
) => selection = "attr"


/*
    Do not use this APIs to operate DOMs, just use DOM APIs
*/

// @send
// external hasClassesInFirstSelection: (selection, ~classNames: string) => bool = "classed"

// @send
// external setClassesForAllSelection: (selection, ~classNames: string, ~assign: bool) => selection =
//   "classed"

// @send
// external getStyle: (selection, ~styleName: string) => string = "style"

// @send
// external setStyle: (selection, ~styleName: string, ~styleValue: string) => selection = "style"

// @send
// external getProperty: (selection, ~properyName: string) => string = "property"

// @send
// external setProperty: (selection, ~propertyName: string, ~propertyValue: string) => selection =
//   "property"
