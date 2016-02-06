
@available(watchOS 2.0, *)
let calendarIdentifierGregorian: String
@available(watchOS 2.0, *)
let calendarIdentifierBuddhist: String
@available(watchOS 2.0, *)
let calendarIdentifierChinese: String
@available(watchOS 2.0, *)
let calendarIdentifierCoptic: String
@available(watchOS 2.0, *)
let calendarIdentifierEthiopicAmeteMihret: String
@available(watchOS 2.0, *)
let calendarIdentifierEthiopicAmeteAlem: String
@available(watchOS 2.0, *)
let calendarIdentifierHebrew: String
@available(watchOS 2.0, *)
let calendarIdentifierISO8601: String
@available(watchOS 2.0, *)
let calendarIdentifierIndian: String
@available(watchOS 2.0, *)
let calendarIdentifierIslamic: String
@available(watchOS 2.0, *)
let calendarIdentifierIslamicCivil: String
@available(watchOS 2.0, *)
let calendarIdentifierJapanese: String
@available(watchOS 2.0, *)
let calendarIdentifierPersian: String
@available(watchOS 2.0, *)
let calendarIdentifierRepublicOfChina: String
@available(watchOS 2.0, *)
let calendarIdentifierIslamicTabular: String
@available(watchOS 2.0, *)
let calendarIdentifierIslamicUmmAlQura: String
struct CalendarUnit : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Era: CalendarUnit { get }
  static var Year: CalendarUnit { get }
  static var Month: CalendarUnit { get }
  static var Day: CalendarUnit { get }
  static var Hour: CalendarUnit { get }
  static var Minute: CalendarUnit { get }
  static var Second: CalendarUnit { get }
  static var Weekday: CalendarUnit { get }
  static var WeekdayOrdinal: CalendarUnit { get }
  @available(watchOS 2.0, *)
  static var Quarter: CalendarUnit { get }
  @available(watchOS 2.0, *)
  static var WeekOfMonth: CalendarUnit { get }
  @available(watchOS 2.0, *)
  static var WeekOfYear: CalendarUnit { get }
  @available(watchOS 2.0, *)
  static var YearForWeekOfYear: CalendarUnit { get }
  @available(watchOS 2.0, *)
  static var Nanosecond: CalendarUnit { get }
  @available(watchOS 2.0, *)
  static var Calendar: CalendarUnit { get }
  @available(watchOS 2.0, *)
  static var TimeZone: CalendarUnit { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSCalendarUnitEra instead")
  static var eraCalendarUnit: CalendarUnit { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSCalendarUnitYear instead")
  static var yearCalendarUnit: CalendarUnit { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSCalendarUnitMonth instead")
  static var monthCalendarUnit: CalendarUnit { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSCalendarUnitDay instead")
  static var dayCalendarUnit: CalendarUnit { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSCalendarUnitHour instead")
  static var hourCalendarUnit: CalendarUnit { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSCalendarUnitMinute instead")
  static var minuteCalendarUnit: CalendarUnit { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSCalendarUnitSecond instead")
  static var secondCalendarUnit: CalendarUnit { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSCalendarUnitWeekOfMonth or NSCalendarUnitWeekOfYear, depending on which you mean")
  static var weekCalendarUnit: CalendarUnit { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSCalendarUnitWeekday instead")
  static var weekdayCalendarUnit: CalendarUnit { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSCalendarUnitWeekdayOrdinal instead")
  static var weekdayOrdinalCalendarUnit: CalendarUnit { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSCalendarUnitQuarter instead")
  static var quarterCalendarUnit: CalendarUnit { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSCalendarUnitWeekOfMonth instead")
  static var weekOfMonthCalendarUnit: CalendarUnit { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSCalendarUnitWeekOfYear instead")
  static var weekOfYearCalendarUnit: CalendarUnit { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSCalendarUnitYearForWeekOfYear instead")
  static var yearForWeekOfYearCalendarUnit: CalendarUnit { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSCalendarUnitCalendar instead")
  static var calendarCalendarUnit: CalendarUnit { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSCalendarUnitTimeZone instead")
  static var timeZoneCalendarUnit: CalendarUnit { get }
}
struct CalendarOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WrapComponents: CalendarOptions { get }
  @available(watchOS 2.0, *)
  static var MatchStrictly: CalendarOptions { get }
  @available(watchOS 2.0, *)
  static var SearchBackwards: CalendarOptions { get }
  @available(watchOS 2.0, *)
  static var MatchPreviousTimePreservingSmallerUnits: CalendarOptions { get }
  @available(watchOS 2.0, *)
  static var MatchNextTimePreservingSmallerUnits: CalendarOptions { get }
  @available(watchOS 2.0, *)
  static var MatchNextTime: CalendarOptions { get }
  @available(watchOS 2.0, *)
  static var MatchFirst: CalendarOptions { get }
  @available(watchOS 2.0, *)
  static var MatchLast: CalendarOptions { get }
}
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSCalendarWrapComponents instead")
var wrapCalendarComponents: Int { get }
class Calendar : Object, Copying, SecureCoding {
  class func current() -> Calendar
  @available(watchOS 2.0, *)
  class func autoupdatingCurrent() -> Calendar
  @available(watchOS 2.0, *)
  /*not inherited*/ init?(identifier calendarIdentifierConstant: String)
  init?(calendarIdentifier ident: String)
  var calendarIdentifier: String { get }
  @NSCopying var locale: Locale?
  @NSCopying var timeZone: TimeZone
  var firstWeekday: Int
  var minimumDaysInFirstWeek: Int
  @available(watchOS 2.0, *)
  var eraSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var longEraSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var monthSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var shortMonthSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var veryShortMonthSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var standaloneMonthSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var shortStandaloneMonthSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var veryShortStandaloneMonthSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var weekdaySymbols: [String] { get }
  @available(watchOS 2.0, *)
  var shortWeekdaySymbols: [String] { get }
  @available(watchOS 2.0, *)
  var veryShortWeekdaySymbols: [String] { get }
  @available(watchOS 2.0, *)
  var standaloneWeekdaySymbols: [String] { get }
  @available(watchOS 2.0, *)
  var shortStandaloneWeekdaySymbols: [String] { get }
  @available(watchOS 2.0, *)
  var veryShortStandaloneWeekdaySymbols: [String] { get }
  @available(watchOS 2.0, *)
  var quarterSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var shortQuarterSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var standaloneQuarterSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var shortStandaloneQuarterSymbols: [String] { get }
  @available(watchOS 2.0, *)
  var amSymbol: String { get }
  @available(watchOS 2.0, *)
  var pmSymbol: String { get }
  func minimumRangeOf(unit: CalendarUnit) -> NSRange
  func maximumRangeOf(unit: CalendarUnit) -> NSRange
  func rangeOf(smaller: CalendarUnit, in larger: CalendarUnit, forDate date: Date) -> NSRange
  func ordinalityOf(smaller: CalendarUnit, in larger: CalendarUnit, forDate date: Date) -> Int
  @available(watchOS 2.0, *)
  func rangeOf(unit: CalendarUnit, start datep: AutoreleasingUnsafeMutablePointer<Date?>, interval tip: UnsafeMutablePointer<TimeInterval>, forDate date: Date) -> Bool
  func dateFrom(comps: DateComponents) -> Date?
  func components(unitFlags: CalendarUnit, from date: Date) -> DateComponents
  func dateByAdding(comps: DateComponents, to date: Date, options opts: CalendarOptions = []) -> Date?
  func components(unitFlags: CalendarUnit, from startingDate: Date, to resultDate: Date, options opts: CalendarOptions = []) -> DateComponents
  @available(watchOS 2.0, *)
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, year yearValuePointer: UnsafeMutablePointer<Int>, month monthValuePointer: UnsafeMutablePointer<Int>, day dayValuePointer: UnsafeMutablePointer<Int>, from date: Date)
  @available(watchOS 2.0, *)
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, yearForWeekOfYear yearValuePointer: UnsafeMutablePointer<Int>, weekOfYear weekValuePointer: UnsafeMutablePointer<Int>, weekday weekdayValuePointer: UnsafeMutablePointer<Int>, from date: Date)
  @available(watchOS 2.0, *)
  func getHour(hourValuePointer: UnsafeMutablePointer<Int>, minute minuteValuePointer: UnsafeMutablePointer<Int>, second secondValuePointer: UnsafeMutablePointer<Int>, nanosecond nanosecondValuePointer: UnsafeMutablePointer<Int>, from date: Date)
  @available(watchOS 2.0, *)
  func component(unit: CalendarUnit, from date: Date) -> Int
  @available(watchOS 2.0, *)
  func dateWith(era eraValue: Int, year yearValue: Int, month monthValue: Int, day dayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> Date?
  @available(watchOS 2.0, *)
  func dateWith(era eraValue: Int, yearForWeekOfYear yearValue: Int, weekOfYear weekValue: Int, weekday weekdayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> Date?
  @available(watchOS 2.0, *)
  func startOfDayFor(date: Date) -> Date
  @available(watchOS 2.0, *)
  func componentsIn(timezone: TimeZone, from date: Date) -> DateComponents
  @available(watchOS 2.0, *)
  func compare(date1: Date, to date2: Date, toUnitGranularity unit: CalendarUnit) -> ComparisonResult
  @available(watchOS 2.0, *)
  func isDate(date1: Date, equalTo date2: Date, toUnitGranularity unit: CalendarUnit) -> Bool
  @available(watchOS 2.0, *)
  func isDate(date1: Date, inSameDayAs date2: Date) -> Bool
  @available(watchOS 2.0, *)
  func isDateIn(today date: Date) -> Bool
  @available(watchOS 2.0, *)
  func isDateIn(yesterday date: Date) -> Bool
  @available(watchOS 2.0, *)
  func isDateIn(tomorrow date: Date) -> Bool
  @available(watchOS 2.0, *)
  func isDateIn(weekend date: Date) -> Bool
  @available(watchOS 2.0, *)
  func rangeOfWeekendStart(datep: AutoreleasingUnsafeMutablePointer<Date?>, interval tip: UnsafeMutablePointer<TimeInterval>, containing date: Date) -> Bool
  @available(watchOS 2.0, *)
  func nextWeekendStart(datep: AutoreleasingUnsafeMutablePointer<Date?>, interval tip: UnsafeMutablePointer<TimeInterval>, options: CalendarOptions = [], after date: Date) -> Bool
  @available(watchOS 2.0, *)
  func components(unitFlags: CalendarUnit, from startingDateComp: DateComponents, to resultDateComp: DateComponents, options: CalendarOptions = []) -> DateComponents
  @available(watchOS 2.0, *)
  func dateByAdding(unit: CalendarUnit, value: Int, to date: Date, options: CalendarOptions = []) -> Date?
  @available(watchOS 2.0, *)
  func enumerateDatesStartingAfter(start: Date, matching comps: DateComponents, options opts: CalendarOptions = [], usingBlock block: (Date?, Bool, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(watchOS 2.0, *)
  func nextDateAfter(date: Date, matching comps: DateComponents, options: CalendarOptions = []) -> Date?
  @available(watchOS 2.0, *)
  func nextDateAfter(date: Date, matching unit: CalendarUnit, value: Int, options: CalendarOptions = []) -> Date?
  @available(watchOS 2.0, *)
  func nextDateAfter(date: Date, matchingHour hourValue: Int, minute minuteValue: Int, second secondValue: Int, options: CalendarOptions = []) -> Date?
  @available(watchOS 2.0, *)
  func dateBy(settingUnit unit: CalendarUnit, value v: Int, of date: Date, options opts: CalendarOptions = []) -> Date?
  @available(watchOS 2.0, *)
  func dateBy(settingHour h: Int, minute m: Int, second s: Int, of date: Date, options opts: CalendarOptions = []) -> Date?
  @available(watchOS 2.0, *)
  func date(date: Date, matchesComponents components: DateComponents) -> Bool
  func copyWith(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
let calendarDayChangedNotification: String
var dateComponentUndefined: Int { get }
@available(watchOS, introduced=2.0, deprecated=2.0, message="Use NSDateComponentUndefined instead")
var undefinedDateComponent: Int { get }
class DateComponents : Object, Copying, SecureCoding {
  @available(watchOS 2.0, *)
  @NSCopying var calendar: Calendar?
  @available(watchOS 2.0, *)
  @NSCopying var timeZone: TimeZone?
  var era: Int
  var year: Int
  var month: Int
  var day: Int
  var hour: Int
  var minute: Int
  var second: Int
  @available(watchOS 2.0, *)
  var nanosecond: Int
  var weekday: Int
  var weekdayOrdinal: Int
  @available(watchOS 2.0, *)
  var quarter: Int
  @available(watchOS 2.0, *)
  var weekOfMonth: Int
  @available(watchOS 2.0, *)
  var weekOfYear: Int
  @available(watchOS 2.0, *)
  var yearForWeekOfYear: Int
  @available(watchOS 2.0, *)
  var isLeapMonth: Bool
  @available(watchOS 2.0, *)
  @NSCopying var date: Date? { get }
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use weekOfMonth or weekOfYear, depending on which you mean")
  func week() -> Int
  @available(watchOS, introduced=2.0, deprecated=2.0, message="Use setWeekOfMonth: or setWeekOfYear:, depending on which you mean")
  func setWeek(v: Int)
  @available(watchOS 2.0, *)
  func setValue(value: Int, forComponent unit: CalendarUnit)
  @available(watchOS 2.0, *)
  func valueFor(component unit: CalendarUnit) -> Int
  @available(watchOS 2.0, *)
  var isValidDate: Bool { get }
  @available(watchOS 2.0, *)
  func isValidDateIn(calendar: Calendar) -> Bool
  init()
  func copyWith(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
