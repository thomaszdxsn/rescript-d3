open D3
open Test
open TestUtils

// Interval tests

test("D3__Time interval:timeMillisecond", () => {
  assertFalse(
    Some(Time.timeMillisecond)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable,
  )
})

test("D3__Time interval:utcMillisecond", () => {
  assertFalse(Some(Time.utcMillisecond)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeSecond", () => {
  assertFalse(Some(Time.timeSecond)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcSecond", () => {
  assertFalse(Some(Time.utcSecond)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeMinute", () => {
  assertFalse(Some(Time.timeMinute)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcMinute", () => {
  assertFalse(Some(Time.utcMinute)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeHour", () => {
  assertFalse(Some(Time.timeHour)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcHour", () => {
  assertFalse(Some(Time.utcHour)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeDay", () => {
  assertFalse(Some(Time.timeDay)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcDay", () => {
  assertFalse(Some(Time.utcDay)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeWeek", () => {
  assertFalse(Some(Time.timeWeek)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcWeek", () => {
  assertFalse(Some(Time.utcWeek)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeSunday", () => {
  assertFalse(Some(Time.timeSunday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcSunday", () => {
  assertFalse(Some(Time.utcSunday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeMonday", () => {
  assertFalse(Some(Time.timeMonday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcMonday", () => {
  assertFalse(Some(Time.utcMonday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeTuesday", () => {
  assertFalse(Some(Time.timeTuesday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcTuesday", () => {
  assertFalse(Some(Time.utcTuesday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeWednesday", () => {
  assertFalse(Some(Time.timeWednesday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcWednesday", () => {
  assertFalse(Some(Time.utcWednesday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeThursday", () => {
  assertFalse(Some(Time.timeThursday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcThursday", () => {
  assertFalse(Some(Time.utcThursday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeFriday", () => {
  assertFalse(Some(Time.timeFriday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcFriday", () => {
  assertFalse(Some(Time.utcFriday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeSaturday", () => {
  assertFalse(Some(Time.timeSaturday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcSaturday", () => {
  assertFalse(Some(Time.utcSaturday)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeMonth", () => {
  assertFalse(Some(Time.timeMonth)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcMonth", () => {
  assertFalse(Some(Time.utcMonth)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:timeYear", () => {
  assertFalse(Some(Time.timeYear)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

test("D3__Time interval:utcYear", () => {
  assertFalse(Some(Time.utcYear)->Js.Null_undefined.fromOption->Js.Null_undefined.isNullable)
})

// interval function tests

test("D3__Time interval ceil", () => {
  let dateStr = Time.timeSecond->Time.ceil(Js.Date.make())->Js.Date.toISOString
  assertDate(dateStr, ())
})

test("D3__Time interval floor", () => {
  let dateStr = Time.timeSecond->Time.floor(Js.Date.make())->Js.Date.toISOString
  assertDate(dateStr, ())
})

test("D3__Time interval round", () => {
  let dateStr = Time.timeSecond->Time.round(Js.Date.make())->Js.Date.toISOString
  assertDate(dateStr, ())
})

test("D3__Time interval offset", () => {
  let dateStr = Time.timeSecond->Time.offset(Js.Date.make(), ())->Js.Date.toISOString
  assertDate(dateStr, ())
})

test("D3__Time interval range", () => {
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.timeSecond->Time.range(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time interval filter", () => {
  let newInterval = Time.timeSecond->Time.filter(_ => true)
  assertDefined(newInterval, ())
})

test("D3__Time interval every", () => {
  let newInterval = Time.timeSecond->Time.every(2)
  assertDefined(newInterval, ())
})

test("D3__Time interval count", () => {
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(3.0)->Js.Date.fromFloat
  let count = Time.timeHour->Time.count(~start, ~end)
  assertTrue(count === 2, ~message=count->Js.Int.toString ++ " is count")
})

// Range tests
test("D3__Time range timeMilliseconds", () => {
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.timeMilliseconds(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcMilliseconds", () => {
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.utcMilliseconds(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeSeconds", () => {
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.timeSeconds(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcSeconds", () => {
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.utcSeconds(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeMinutes", () => {
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.timeMinutes(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcMinutes", () => {
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.utcMinutes(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeHours", () => {
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.timeHours(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcHours", () => {
  let start = Js.Date.make()->Js.Date.setHours(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setHours(2.0)->Js.Date.fromFloat
  let dates = Time.utcHours(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeDays", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeDays(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcDays", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcDays(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeWeeks", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeWeeks(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcWeeks", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcWeeks(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeSundays", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeSundays(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcSundays", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcSundays(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeMondays", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeMondays(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcMondays", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcMondays(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeTuesdays", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeTuesdays(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcTuesdays", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcTuesdays(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeWednesdays", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeWednesdays(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcWednesdays", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcWednesdays(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeThursdays", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeThursdays(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcThursdays", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcThursdays(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeFridays", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeFridays(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcFridays", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcFridays(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeSaturdays", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.timeSaturdays(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcSaturdays", () => {
  let start = Js.Date.make()->Js.Date.setDate(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setDate(30.0)->Js.Date.fromFloat
  let dates = Time.utcSaturdays(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeMonths", () => {
  let start = Js.Date.make()->Js.Date.setMonth(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setMonth(10.0)->Js.Date.fromFloat
  let dates = Time.timeMonths(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcMonths", () => {
  let start = Js.Date.make()->Js.Date.setMonth(1.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setMonth(10.0)->Js.Date.fromFloat
  let dates = Time.utcMonths(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range timeYears", () => {
  let start = Js.Date.make()->Js.Date.setFullYear(2000.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setFullYear(2020.0)->Js.Date.fromFloat
  let dates = Time.timeYears(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time range utcYears", () => {
  let start = Js.Date.make()->Js.Date.setFullYear(2000.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setFullYear(2020.0)->Js.Date.fromFloat
  let dates = Time.utcYears(~start, ~stop=end, ())
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

// Tick tests

test("D3__Time tick timeTicks", () => {
  let start = Js.Date.make()->Js.Date.setFullYear(2000.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setFullYear(2020.0)->Js.Date.fromFloat
  let dates = Time.timeTicks(~start, ~stop=end, ~count=2)
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time tick timeTickInterval", () => {
  let start = Js.Date.make()->Js.Date.setFullYear(2000.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setFullYear(2020.0)->Js.Date.fromFloat
  let interval = Time.timeTickInterval(~start, ~stop=end, ~count=2)
  assertDefined(interval, ())
})

test("D3__Time tick utcTicks", () => {
  let start = Js.Date.make()->Js.Date.setFullYear(2000.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setFullYear(2020.0)->Js.Date.fromFloat
  let dates = Time.utcTicks(~start, ~stop=end, ~count=2)
  assertTrue(dates->Js.Array2.length > 0)
  dates
  ->Js.Array2.slice(~start=0, ~end_=3)
  ->Js.Array2.forEach(d => assertDate(d->Js.Date.toISOString, ()))
})

test("D3__Time tick utcTickInterval", () => {
  let start = Js.Date.make()->Js.Date.setFullYear(2000.0)->Js.Date.fromFloat
  let end = Js.Date.make()->Js.Date.setFullYear(2020.0)->Js.Date.fromFloat
  let interval = Time.utcTickInterval(~start, ~stop=end, ~count=2)
  assertDefined(interval, ())
})
