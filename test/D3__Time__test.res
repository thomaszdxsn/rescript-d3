open Test

let isTrue = (~message=?, value) => assertion(~message?, (a, b) => a === b, value, true)
let isFalse = (~message=?, value) => assertion(~message?, (a, b) => a === b, value, false)

let isDate = (~message="is valid date object", value, ()) =>
  isTrue(
    ~message,
    {
      try {
        let _ = value->Js.Date.fromString
        true
      } catch {
      | Js.Exn.Error(_) => false
      | _ => false
      }
    },
  )

test("D3__Time interval ceil", () => {
  open D3
  let result = Interval.timeSecond->Interval.ceil(Js.Date.make())->Js.Date.toISOString
  isDate(result, ())
})

test("D3__Time interval floor", () => {
  open D3
  let result = Interval.timeSecond->Interval.floor(Js.Date.make())->Js.Date.toISOString
  isDate(result, ())
})
