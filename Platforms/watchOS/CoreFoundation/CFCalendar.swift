
class CFCalendar {
}
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
  static var era: CFCalendarUnit { get }
  static var year: CFCalendarUnit { get }
  static var month: CFCalendarUnit { get }
  static var day: CFCalendarUnit { get }
  static var hour: CFCalendarUnit { get }
  static var minute: CFCalendarUnit { get }
  static var second: CFCalendarUnit { get }
  @available(watchOS, introduced=2.0, deprecated=2.0)
  static var week: CFCalendarUnit { get }
  static var weekday: CFCalendarUnit { get }
  static var weekdayOrdinal: CFCalendarUnit { get }
  @available(watchOS 2.0, *)
  static var quarter: CFCalendarUnit { get }
  @available(watchOS 2.0, *)
  static var weekOfMonth: CFCalendarUnit { get }
  @available(watchOS 2.0, *)
  static var weekOfYear: CFCalendarUnit { get }
  @available(watchOS 2.0, *)
  static var yearForWeekOfYear: CFCalendarUnit { get }
}
func CFCalendarGetMinimumRangeOfUnit(calendar: CFCalendar!, _ unit: CFCalendarUnit) -> CFRange
func CFCalendarGetMaximumRangeOfUnit(calendar: CFCalendar!, _ unit: CFCalendarUnit) -> CFRange
func CFCalendarGetRangeOfUnit(calendar: CFCalendar!, _ smallerUnit: CFCalendarUnit, _ biggerUnit: CFCalendarUnit, _ at: CFAbsoluteTime) -> CFRange
func CFCalendarGetOrdinalityOfUnit(calendar: CFCalendar!, _ smallerUnit: CFCalendarUnit, _ biggerUnit: CFCalendarUnit, _ at: CFAbsoluteTime) -> CFIndex
@available(watchOS 2.0, *)
func CFCalendarGetTimeRangeOfUnit(calendar: CFCalendar!, _ unit: CFCalendarUnit, _ at: CFAbsoluteTime, _ startp: UnsafeMutablePointer<CFAbsoluteTime>, _ tip: UnsafeMutablePointer<CFTimeInterval>) -> Bool
var kCFCalendarComponentsWrap: CFOptionFlags { get }
