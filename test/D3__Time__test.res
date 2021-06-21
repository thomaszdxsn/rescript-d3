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
      | _ => false
      }
    },
  )

let isDefined = (~message="is defined", value, ()) =>
  isFalse(~message, Some(value)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)

// Interval tests

test("D3__Time interval:timeMillisecond", () => {
  open D3
  isFalse(Some(Time.timeMillisecond)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcMillisecond", () => {
  open D3
  isFalse(Some(Time.utcMillisecond)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeSecond", () => {
  open D3
  isFalse(Some(Time.timeSecond)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcSecond", () => {
  open D3
  isFalse(Some(Time.utcSecond)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeMinute", () => {
  open D3
  isFalse(Some(Time.timeMinute)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcMinute", () => {
  open D3
  isFalse(Some(Time.utcMinute)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeHour", () => {
  open D3
  isFalse(Some(Time.timeHour)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcHour", () => {
  open D3
  isFalse(Some(Time.utcHour)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeDay", () => {
  open D3
  isFalse(Some(Time.timeDay)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcDay", () => {
  open D3
  isFalse(Some(Time.utcDay)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeWeek", () => {
  open D3
  isFalse(Some(Time.timeWeek)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcWeek", () => {
  open D3
  isFalse(Some(Time.utcWeek)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeSunday", () => {
  open D3
  isFalse(Some(Time.timeSunday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcSunday", () => {
  open D3
  isFalse(Some(Time.utcSunday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeMonday", () => {
  open D3
  isFalse(Some(Time.timeMonday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcMonday", () => {
  open D3
  isFalse(Some(Time.utcMonday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeTuesday", () => {
  open D3
  isFalse(Some(Time.timeTuesday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcTuesday", () => {
  open D3
  isFalse(Some(Time.utcTuesday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeWednesday", () => {
  open D3
  isFalse(Some(Time.timeWednesday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcWednesday", () => {
  open D3
  isFalse(Some(Time.utcWednesday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeThursday", () => {
  open D3
  isFalse(Some(Time.timeThursday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcThursday", () => {
  open D3
  isFalse(Some(Time.utcThursday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeFriday", () => {
  open D3
  isFalse(Some(Time.timeFriday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcFriday", () => {
  open D3
  isFalse(Some(Time.utcFriday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeSaturday", () => {
  open D3
  isFalse(Some(Time.timeSaturday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcSaturday", () => {
  open D3
  isFalse(Some(Time.utcSaturday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeMonth", () => {
  open D3
  isFalse(Some(Time.timeMonth)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcMonth", () => {
  open D3
  isFalse(Some(Time.utcMonth)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeYear", () => {
  open D3
  isFalse(Some(Time.timeYear)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcYear", () => {
  open D3
  isFalse(Some(Time.utcYear)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

// interval function tests

test("D3__Time interval ceil", () => {
  open D3
  let dateStr = Time.timeSecond->Time.ceil(Js.Date.make())->Js.Date.toISOString
  isDate(dateStr, ())
})

test("D3__Time interval floor", () => {
  open D3
  let dateStr = Time.timeSecond->Time.floor(Js.Date.make())->Js.Date.toISOString
  isDate(dateStr, ())
})

test("D3__Time interval round", () => {
  open D3
  let dateStr = Time.timeSecond->Time.round(Js.Date.make())->Js.Date.toISOString
  isDate(dateStr, ())
})

test("D3__Time interval offset", () => {
  open D3
  let dateStr = Time.timeSecond->Time.offset(Js.Date.make(), None)->Js.Date.toISOString
  isDate(dateStr, ())
})

test("D3__Time interval range", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.timeSecond->Time.range(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time interval filter", () => {
  open D3
  let newInterval = Time.timeSecond->Time.filter(_ => true)
  isDefined(newInterval, ())
})

test("D3__Time interval every", () => {
  open D3
  let newInterval = Time.timeSecond->Time.every(2)
  isDefined(newInterval, ())
})

// Range tests
test("D3__Time range timeMilliseconds", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.timeMilliseconds(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcMilliseconds", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.utcMilliseconds(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeSeconds", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.timeSeconds(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcSeconds", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.utcSeconds(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeMinutes", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.timeMinutes(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcMinutes", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.utcMinutes(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeHours", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.timeHours(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcHours", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.utcHours(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeDays", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeDays(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcDays", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcDays(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeWeeks", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeWeeks(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcWeeks", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcWeeks(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeSundays", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeSundays(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcSundays", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcSundays(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeMondays", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeMondays(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcMondays", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcMondays(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeTuesdays", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeTuesdays(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcTuesdays", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcTuesdays(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeWednesdays", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeWednesdays(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcWednesdays", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcWednesdays(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeThursdays", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeThursdays(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcThursdays", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcThursdays(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeFridays", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeFridays(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcFridays", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcFridays(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeSaturdays", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeSaturdays(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcSaturdays", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcSaturdays(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeMonths", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setMonth(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setMonth(10.0)->Js.Date.fromFloat
  let dates = Time.timeMonths(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcMonths", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setMonth(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setMonth(10.0)->Js.Date.fromFloat
  let dates = Time.utcMonths(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeYears", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setFullYear(2000.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setFullYear(2020.0)->Js.Date.fromFloat
  let dates = Time.timeYears(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcYears", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setFullYear(2000.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setFullYear(2020.0)->Js.Date.fromFloat
  let dates = Time.utcYears(start, end, None)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

// Tick tests

test("D3__Time tick timeTicks", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setFullYear(2000.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setFullYear(2020.0)->Js.Date.fromFloat
  let dates = Time.timeTicks(start, end, 2)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time tick timeTickInterval", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setFullYear(2000.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setFullYear(2020.0)->Js.Date.fromFloat
  let interval = Time.timeTickInterval(start, end, 2)
  isDefined(interval, ())
})

test("D3__Time tick utcTicks", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setFullYear(2000.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setFullYear(2020.0)->Js.Date.fromFloat
  let dates = Time.utcTicks(start, end, 2)
  isTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => isDate(d->Js.Date.toISOString, ()))
})

test("D3__Time tick utcTickInterval", () => {
  open D3
  let start = Js.Date.make()->Js.Date.setFullYear(2000.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setFullYear(2020.0)->Js.Date.fromFloat
  let interval = Time.utcTickInterval(start, end, 2)
  isDefined(interval, ())
})
