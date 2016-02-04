
class CFCalendar {
}
@available(*, deprecated, renamed="CFCalendar")
typealias CFCalendarRef = CFCalendar
func CFCalendarGetTypeID() -> CFTypeID
func CFCalendarCopyCurrent() -> CFCalendar!
func CFCalendarCreateWithIdentifier(allocator: CFAllocator!, _ identifier: CFString!) -> CFCalendar!
func CFCalendarGetIdentifier(calendar: CFCalendar!) -> CFString!
func CFCalendarCopyLocale(calendar: CFCalendar!) -> CFLocale!
func CFCalendarSetLocale(calendar: CFCalendar!, _ locale: CFLocale!)
func CFCalendarCopyTimeZone(calendar: CFCalendar!) -> CFTimeZone!
func CFCalendarSetTimeZone(calendar: CFCalendar!, _ tz: CFTimeZone!)
func CFCalendarGetFirstWeekday(calendar: CFCalendar!) -> CFIndex
func CFCalendarSetFirstWeekday(calendar: CFCalendar!, _ wkdy: CFIndex)
func CFCalendarGetMinimumDaysInFirstWeek(calendar: CFCalendar!) -> CFIndex
func CFCalendarSetMinimumDaysInFirstWeek(calendar: CFCalendar!, _ mwd: CFIndex)
struct CFCalendarUnit : OptionSetType {
  init(rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Era: CFCalendarUnit { get }
  static var Year: CFCalendarUnit { get }
  static var Month: CFCalendarUnit { get }
  static var Day: CFCalendarUnit { get }
  static var Hour: CFCalendarUnit { get }
  static var Minute: CFCalendarUnit { get }
  static var Second: CFCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10)
  static var Week: CFCalendarUnit { get }
  static var Weekday: CFCalendarUnit { get }
  static var WeekdayOrdinal: CFCalendarUnit { get }
  @available(OSX 10.6, *)
  static var Quarter: CFCalendarUnit { get }
  @available(OSX 10.7, *)
  static var WeekOfMonth: CFCalendarUnit { get }
  @available(OSX 10.7, *)
  static var WeekOfYear: CFCalendarUnit { get }
  @available(OSX 10.7, *)
  static var YearForWeekOfYear: CFCalendarUnit { get }
}
func CFCalendarGetMinimumRangeOfUnit(calendar: CFCalendar!, _ unit: CFCalendarUnit) -> CFRange
func CFCalendarGetMaximumRangeOfUnit(calendar: CFCalendar!, _ unit: CFCalendarUnit) -> CFRange
func CFCalendarGetRangeOfUnit(calendar: CFCalendar!, _ smallerUnit: CFCalendarUnit, _ biggerUnit: CFCalendarUnit, _ at: CFAbsoluteTime) -> CFRange
func CFCalendarGetOrdinalityOfUnit(calendar: CFCalendar!, _ smallerUnit: CFCalendarUnit, _ biggerUnit: CFCalendarUnit, _ at: CFAbsoluteTime) -> CFIndex
@available(OSX 10.5, *)
func CFCalendarGetTimeRangeOfUnit(calendar: CFCalendar!, _ unit: CFCalendarUnit, _ at: CFAbsoluteTime, _ startp: UnsafeMutablePointer<CFAbsoluteTime>, _ tip: UnsafeMutablePointer<CFTimeInterval>) -> Bool
var kCFCalendarComponentsWrap: CFOptionFlags { get }
