open Test

let assertTrue = (~message=?, value) => assertion(~message?, (a, b) => a === b, value, true)
let assertFalse = (~message=?, value) => assertion(~message?, (a, b) => a === b, value, false)

let assertThrow = (~message="This expression must throw exception", cb: unit => unit, ()) => {
  assertTrue(
    ~message,
    {
      try {
        cb()
        false
      } catch {
      | _ => true
      }
    },
  )
}

let assertDate = (~message="is valid date object", value, ()) =>
  assertTrue(
    ~message,
    {
      try {
        let _ = value->Js.Date.fromString
        true
      } catch {
      | _ => false
      }
    },
  )

let assertDefined = (~message="is defined", value, ()) =>
  assertFalse(~message, Some(value)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
