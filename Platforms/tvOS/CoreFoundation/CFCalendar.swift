
class CFCalendar {
}
@available(*, deprecated, renamed="CFCalendar")
typealias CFCalendarRef = CFCalendar
func CFCalendarGetTypeID() -> CFTypeID
func CFCalendarCopyCurrent() -> CFCalendar!
func CFCalendarCreateWithIdentifier(_ allocator: CFAllocator!, _ identifier: CFString!) -> CFCalendar!
func CFCalendarGetIdentifier(_ calendar: CFCalendar!) -> CFString!
func CFCalendarCopyLocale(_ calendar: CFCalendar!) -> CFLocale!
func CFCalendarSetLocale(_ calendar: CFCalendar!, _ locale: CFLocale!)
func CFCalendarCopyTimeZone(_ calendar: CFCalendar!) -> CFTimeZone!
func CFCalendarSetTimeZone(_ calendar: CFCalendar!, _ tz: CFTimeZone!)
func CFCalendarGetFirstWeekday(_ calendar: CFCalendar!) -> CFIndex
func CFCalendarSetFirstWeekday(_ calendar: CFCalendar!, _ wkdy: CFIndex)
func CFCalendarGetMinimumDaysInFirstWeek(_ calendar: CFCalendar!) -> CFIndex
func CFCalendarSetMinimumDaysInFirstWeek(_ calendar: CFCalendar!, _ mwd: CFIndex)
struct CFCalendarUnit : OptionSetType {
  init(rawValue rawValue: CFOptionFlags)
  let rawValue: CFOptionFlags
  static var Era: CFCalendarUnit { get }
  static var Year: CFCalendarUnit { get }
  static var Month: CFCalendarUnit { get }
  static var Day: CFCalendarUnit { get }
  static var Hour: CFCalendarUnit { get }
  static var Minute: CFCalendarUnit { get }
  static var Second: CFCalendarUnit { get }
  @available(tvOS, introduced=2.0, deprecated=8.0)
  static var Week: CFCalendarUnit { get }
  static var Weekday: CFCalendarUnit { get }
  static var WeekdayOrdinal: CFCalendarUnit { get }
  @available(tvOS 4.0, *)
  static var Quarter: CFCalendarUnit { get }
  @available(tvOS 5.0, *)
  static var WeekOfMonth: CFCalendarUnit { get }
  @available(tvOS 5.0, *)
  static var WeekOfYear: CFCalendarUnit { get }
  @available(tvOS 5.0, *)
  static var YearForWeekOfYear: CFCalendarUnit { get }
}
func CFCalendarGetMinimumRangeOfUnit(_ calendar: CFCalendar!, _ unit: CFCalendarUnit) -> CFRange
func CFCalendarGetMaximumRangeOfUnit(_ calendar: CFCalendar!, _ unit: CFCalendarUnit) -> CFRange
func CFCalendarGetRangeOfUnit(_ calendar: CFCalendar!, _ smallerUnit: CFCalendarUnit, _ biggerUnit: CFCalendarUnit, _ at: CFAbsoluteTime) -> CFRange
func CFCalendarGetOrdinalityOfUnit(_ calendar: CFCalendar!, _ smallerUnit: CFCalendarUnit, _ biggerUnit: CFCalendarUnit, _ at: CFAbsoluteTime) -> CFIndex
@available(tvOS 2.0, *)
func CFCalendarGetTimeRangeOfUnit(_ calendar: CFCalendar!, _ unit: CFCalendarUnit, _ at: CFAbsoluteTime, _ startp: UnsafeMutablePointer<CFAbsoluteTime>, _ tip: UnsafeMutablePointer<CFTimeInterval>) -> Bool
var kCFCalendarComponentsWrap: CFOptionFlags { get }
