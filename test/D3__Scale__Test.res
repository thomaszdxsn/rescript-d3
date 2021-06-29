open Test
open TestUtils
open D3.Scale


test("test call scale self", () => {
    let scale = LinearScale.make(~domain=[0, 1], ~range=["A", "Z"])
    let mappedValue = scale(1)
    assertTrue(mappedValue === "Z")
})

test("test scale invert", () => {
    let scale = LinearScale.make(~domain=[0, 10], ~range=[20, 40])
    let invertValue = scale->LinearScale.invert(21)
    assertTrue(invertValue == 0.5)
})

test("test scale invert return NaA", () => {
    let scale = LinearScale.make(~domain=[0, 10], ~range=["A", "B"])
    let invertValue = scale->LinearScale.invert("A")
    assertTrue(invertValue->Js.Float.isNaN)
})


test("test getDomain()", () => {
    let scale = LinearScale.makeDefault()
    let domain = scale-> LinearScale.getDomain
    assertTrue(
        domain->Js.Array2.toString == [0, 1]->Js.Array2.toString
    )
})

test("test setDomain()", () => {
    let scale = LinearScale.makeDefault()
    let domain = ["1", "10"]
    let newScale = scale->LinearScale.setDomain(_, domain)
    assertTrue(
        newScale->LinearScale.getDomain->Js.Array2.toString
        ==
        domain->Js.Array2.toString
    )
})

test("test getClamp()", () => {
    let scale = LinearScale.makeDefault()
    let clamp = scale-> LinearScale.getClamp
    assertTrue(clamp == false)
})

test("test setClamp", () => {
    let scale = LinearScale.makeDefault()
    let clamp = scale->LinearScale.setClamp(true)->LinearScale.getClamp

    assert(clamp == true)
})