open Test
open TestUtils
open D3

test("test D3_Time_Format timeParse", () => {
  let parser = "%Y-%m-%d"->TimeFormat.timeParse
  let date = "2021-06-22"->parser->Js.Date.toISOString
  assertDate(date, ())
})

test("test D3_Time_Format timeFormat", () => {
  let formatter = "%Y-%m-%d"->TimeFormat.timeFormat
  let dateStr = Js.Date.make()->formatter
  assertTrue(
    dateStr |> Js.Re.test_("\d{4}-\d{2}-\d{2}"->Js.Re.fromString),
    ~message="The dateStr is " ++ dateStr,
  )
})
