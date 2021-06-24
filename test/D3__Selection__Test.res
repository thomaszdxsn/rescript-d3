open Test
open TestUtils
open D3


test("test D3_Selection filter is defined", () => {
    let selectorFilter = Selection.filter(_, #Selector(".section"))
    assertDefined(selectorFilter, ())

    let predicateFilter = Selection.filter(_, #Predicate((_, index) => mod(index, 2) === 0))
    assertDefined(predicateFilter, ())
})