type interval<'a>
type timeMillisecond
type utcMillisecond
type timeSecond
type utcSecond
type timeMinute
type utcMinute
type timeHour
type utcHour
type timeDay
type utcDay
type timeWeek
type utcWeek
type timeSunday
type utcSunday
type timeMonday
type utcMonday
type timeTuesday
type utcTuesday
type timeWednesday
type utcWednesday
type timeThursday
type utcThursday
type timeFriday
type utcFriday
type timeSaturday
type utcSaturday
type timeMonth
type utcMonth
type timeYear
type utcYear

@module("d3")
external timeMillisecond: interval<timeMillisecond> = "timeMillisecond"
@module("d3")
external utcMillisecond: interval<utcMillisecond> = "utcMillisecond"

@module("d3")
external timeSecond: interval<timeSecond> = "timeSecond"
@module("d3")
external utcSecond: interval<utcSecond> = "utcSecond"

@module("d3")
external timeMinute: interval<timeMinute> = "timeMinute"
@module("d3")
external utcMinute: interval<utcMinute> = "utcMinute"

@module("d3")
external timeHour: interval<timeHour> = "timeHour"
@module("d3")
external utcHour: interval<utcHour> = "utcHour"

@module("d3")
external timeDay: interval<timeDay> = "timeDay"
@module("d3")
external utcDay: interval<utcDay> = "utcDay"

@module("d3")
external timeWeek: interval<timeWeek> = "timeWeek"
@module("d3")
external utcWeek: interval<utcWeek> = "utcWeek"

@module("d3")
external timeSunday: interval<timeSunday> = "timeSunday"
@module("d3")
external utcSunday: interval<utcSunday> = "utcSunday"

@module("d3")
external timeMonday: interval<timeMonday> = "timeMonday"
@module("d3")
external utcMonday: interval<utcMonday> = "utcMonday"

@module("d3")
external timeTuesday: interval<timeTuesday> = "timeTuesday"
@module("d3")
external utcTuesday: interval<utcTuesday> = "utcTuesday"

@module("d3")
external timeWednesday: interval<timeWednesday> = "timeWednesday"
@module("d3")
external utcWednesday: interval<utcWednesday> = "utcWednesday"

@module("d3")
external timeThursday: interval<timeThursday> = "timeThursday"
@module("d3")
external utcThursday: interval<utcThursday> = "utcThursday"

@module("d3")
external timeFriday: interval<timeFriday> = "timeFriday"
@module("d3")
external utcFriday: interval<utcFriday> = "utcFriday"

@module("d3")
external timeSaturday: interval<timeSaturday> = "timeSaturday"
@module("d3")
external utcSaturday: interval<utcSaturday> = "utcSaturday"

@module("d3")
external timeMonth: interval<timeMonth> = "timeMonth"
@module("d3")
external utcMonth: interval<utcMonth> = "utcMonth"

@module("d3")
external timeYear: interval<timeYear> = "timeYear"
@module("d3")
external utcYear: interval<utcYear> = "utcYear"

@send
external floor: (interval<_>, Js.Date.t) => Js.Date.t = "floor"

@send
external round: (interval<_>, Js.Date.t) => Js.Date.t = "round"

@send
external ceil: (interval<_>, Js.Date.t) => Js.Date.t = "ceil"

@send
external offset: (interval<_>, Js.Date.t, option<int>) => Js.Date.t = "offset"

@send
external range: (interval<_>, Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "range"

@send
external filter: (interval<'t>, Js.Date.t => bool) => interval<'t> = "filter"

@send
external every: (interval<'t>, int) => interval<'t> = "every"

@send
external count: (interval<_>, Js.Date.t, Js.Date.t) => int = "count"

@send
external timeInterval: (
  interval<_>,
  (Js.Date.t, int) => unit,
  option<(Js.Date.t, Js.Date.t) => int>,
  option<Js.Date.t => int>,
) => interval<_> = "timeInterval"

@module("d3")
external timeMilliseconds: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> =
  "timeMilliseconds"
@module("d3")
external utcMilliseconds: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> =
  "utcMilliseconds"

@module("d3")
external timeSeconds: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "timeSeconds"
@module("d3")
external utcSeconds: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "utcSeconds"

@module("d3")
external timeMinutes: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "timeMinutes"
@module("d3")
external utcMinutes: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "utcMinutes"

@module("d3")
external timeHours: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "timeHours"
@module("d3")
external utcHours: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "utcHours"

@module("d3")
external timeDays: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "timeDays"
@module("d3")
external utcDays: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "utcDays"

@module("d3")
external timeWeeks: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "timeWeeks"
@module("d3")
external utcWeeks: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "utcWeeks"

@module("d3")
external timeSundays: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "timeSundays"
@module("d3")
external utcSundays: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "utcSundays"

@module("d3")
external timeMondays: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "timeMondays"
@module("d3")
external utcMondays: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "utcMondays"

@module("d3")
external timeTuesdays: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "timeTuesdays"
@module("d3")
external utcTuesdays: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "utcTuesdays"

@module("d3")
external timeWednesdays: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "timeWednesdays"
@module("d3")
external utcWednesdays: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "utcWednesdays"

@module("d3")
external timeThursdays: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "timeThursdays"
@module("d3")
external utcThursdays: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "utcThursdays"

@module("d3")
external timeFridays: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "timeFridays"
@module("d3")
external utcFridays: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "utcFridays"

@module("d3")
external timeSaturdays: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "timeSaturdays"
@module("d3")
external utcSaturdays: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "utcSaturdays"

@module("d3")
external timeMonths: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "timeMonths"
@module("d3")
external utcMonths: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "utcMonths"

@module("d3")
external timeYears: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "timeYears"
@module("d3")
external utcYears: (Js.Date.t, Js.Date.t, option<int>) => array<Js.Date.t> = "utcYears"

@module("d3")
external timeTicks: (Js.Date.t, Js.Date.t, int) =>  array<Js.Date.t> = "timeTicks"
@module("d3")
external timeTickInterval: (Js.Date.t, Js.Date.t, int) => interval<_> = "timeTickInterval"
@module("d3")
external utcTicks: (Js.Date.t, Js.Date.t, int) => array<Js.Date.t> = "utcTicks"
@module("d3")
external utcTickInterval: (Js.Date.t, Js.Date.t, int) => interval<_> = "utcTickInterval"