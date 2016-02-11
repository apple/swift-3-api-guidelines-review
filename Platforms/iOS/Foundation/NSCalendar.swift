
@available(iOS 4.0, *)
let calendarIdentifierGregorian: String
@available(iOS 4.0, *)
let calendarIdentifierBuddhist: String
@available(iOS 4.0, *)
let calendarIdentifierChinese: String
@available(iOS 4.0, *)
let calendarIdentifierCoptic: String
@available(iOS 4.0, *)
let calendarIdentifierEthiopicAmeteMihret: String
@available(iOS 4.0, *)
let calendarIdentifierEthiopicAmeteAlem: String
@available(iOS 4.0, *)
let calendarIdentifierHebrew: String
@available(iOS 4.0, *)
let calendarIdentifierISO8601: String
@available(iOS 4.0, *)
let calendarIdentifierIndian: String
@available(iOS 4.0, *)
let calendarIdentifierIslamic: String
@available(iOS 4.0, *)
let calendarIdentifierIslamicCivil: String
@available(iOS 4.0, *)
let calendarIdentifierJapanese: String
@available(iOS 4.0, *)
let calendarIdentifierPersian: String
@available(iOS 4.0, *)
let calendarIdentifierRepublicOfChina: String
@available(iOS 8.0, *)
let calendarIdentifierIslamicTabular: String
@available(iOS 8.0, *)
let calendarIdentifierIslamicUmmAlQura: String
struct CalendarUnit : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var era: CalendarUnit { get }
  static var year: CalendarUnit { get }
  static var month: CalendarUnit { get }
  static var day: CalendarUnit { get }
  static var hour: CalendarUnit { get }
  static var minute: CalendarUnit { get }
  static var second: CalendarUnit { get }
  static var weekday: CalendarUnit { get }
  static var weekdayOrdinal: CalendarUnit { get }
  @available(iOS 4.0, *)
  static var quarter: CalendarUnit { get }
  @available(iOS 5.0, *)
  static var weekOfMonth: CalendarUnit { get }
  @available(iOS 5.0, *)
  static var weekOfYear: CalendarUnit { get }
  @available(iOS 5.0, *)
  static var yearForWeekOfYear: CalendarUnit { get }
  @available(iOS 5.0, *)
  static var nanosecond: CalendarUnit { get }
  @available(iOS 4.0, *)
  static var calendar: CalendarUnit { get }
  @available(iOS 4.0, *)
  static var timeZone: CalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitEra instead")
  static var eraCalendarUnit: CalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitYear instead")
  static var yearCalendarUnit: CalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitMonth instead")
  static var monthCalendarUnit: CalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitDay instead")
  static var dayCalendarUnit: CalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitHour instead")
  static var hourCalendarUnit: CalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitMinute instead")
  static var minuteCalendarUnit: CalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitSecond instead")
  static var secondCalendarUnit: CalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitWeekOfMonth or NSCalendarUnitWeekOfYear, depending on which you mean")
  static var weekCalendarUnit: CalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitWeekday instead")
  static var weekdayCalendarUnit: CalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitWeekdayOrdinal instead")
  static var weekdayOrdinalCalendarUnit: CalendarUnit { get }
  @available(iOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarUnitQuarter instead")
  static var quarterCalendarUnit: CalendarUnit { get }
  @available(iOS, introduced=5.0, deprecated=8.0, message="Use NSCalendarUnitWeekOfMonth instead")
  static var weekOfMonthCalendarUnit: CalendarUnit { get }
  @available(iOS, introduced=5.0, deprecated=8.0, message="Use NSCalendarUnitWeekOfYear instead")
  static var weekOfYearCalendarUnit: CalendarUnit { get }
  @available(iOS, introduced=5.0, deprecated=8.0, message="Use NSCalendarUnitYearForWeekOfYear instead")
  static var yearForWeekOfYearCalendarUnit: CalendarUnit { get }
  @available(iOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarUnitCalendar instead")
  static var calendarCalendarUnit: CalendarUnit { get }
  @available(iOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarUnitTimeZone instead")
  static var timeZoneCalendarUnit: CalendarUnit { get }
}
struct CalendarOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var wrapComponents: CalendarOptions { get }
  @available(iOS 7.0, *)
  static var matchStrictly: CalendarOptions { get }
  @available(iOS 7.0, *)
  static var searchBackwards: CalendarOptions { get }
  @available(iOS 7.0, *)
  static var matchPreviousTimePreservingSmallerUnits: CalendarOptions { get }
  @available(iOS 7.0, *)
  static var matchNextTimePreservingSmallerUnits: CalendarOptions { get }
  @available(iOS 7.0, *)
  static var matchNextTime: CalendarOptions { get }
  @available(iOS 7.0, *)
  static var matchFirst: CalendarOptions { get }
  @available(iOS 7.0, *)
  static var matchLast: CalendarOptions { get }
}
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarWrapComponents instead")
var wrapCalendarComponents: Int { get }
class Calendar : Object, Copying, SecureCoding {
  class func current() -> Calendar
  @available(iOS 2.0, *)
  class func autoupdatingCurrent() -> Calendar
  @available(iOS 8.0, *)
  /*not inherited*/ init?(identifier calendarIdentifierConstant: String)
  init?(calendarIdentifier ident: String)
  var calendarIdentifier: String { get }
  @NSCopying var locale: Locale?
  @NSCopying var timeZone: TimeZone
  var firstWeekday: Int
  var minimumDaysInFirstWeek: Int
  @available(iOS 5.0, *)
  var eraSymbols: [String] { get }
  @available(iOS 5.0, *)
  var longEraSymbols: [String] { get }
  @available(iOS 5.0, *)
  var monthSymbols: [String] { get }
  @available(iOS 5.0, *)
  var shortMonthSymbols: [String] { get }
  @available(iOS 5.0, *)
  var veryShortMonthSymbols: [String] { get }
  @available(iOS 5.0, *)
  var standaloneMonthSymbols: [String] { get }
  @available(iOS 5.0, *)
  var shortStandaloneMonthSymbols: [String] { get }
  @available(iOS 5.0, *)
  var veryShortStandaloneMonthSymbols: [String] { get }
  @available(iOS 5.0, *)
  var weekdaySymbols: [String] { get }
  @available(iOS 5.0, *)
  var shortWeekdaySymbols: [String] { get }
  @available(iOS 5.0, *)
  var veryShortWeekdaySymbols: [String] { get }
  @available(iOS 5.0, *)
  var standaloneWeekdaySymbols: [String] { get }
  @available(iOS 5.0, *)
  var shortStandaloneWeekdaySymbols: [String] { get }
  @available(iOS 5.0, *)
  var veryShortStandaloneWeekdaySymbols: [String] { get }
  @available(iOS 5.0, *)
  var quarterSymbols: [String] { get }
  @available(iOS 5.0, *)
  var shortQuarterSymbols: [String] { get }
  @available(iOS 5.0, *)
  var standaloneQuarterSymbols: [String] { get }
  @available(iOS 5.0, *)
  var shortStandaloneQuarterSymbols: [String] { get }
  @available(iOS 5.0, *)
  var amSymbol: String { get }
  @available(iOS 5.0, *)
  var pmSymbol: String { get }
  func minimumRangeOf(unit: CalendarUnit) -> NSRange
  func maximumRangeOf(unit: CalendarUnit) -> NSRange
  func rangeOf(smaller: CalendarUnit, in larger: CalendarUnit, for date: Date) -> NSRange
  func ordinalityOf(smaller: CalendarUnit, in larger: CalendarUnit, for date: Date) -> Int
  @available(iOS 2.0, *)
  func rangeOf(unit: CalendarUnit, start datep: AutoreleasingUnsafeMutablePointer<Date?>, interval tip: UnsafeMutablePointer<TimeInterval>, for date: Date) -> Bool
  func date(from comps: DateComponents) -> Date?
  func components(unitFlags: CalendarUnit, from date: Date) -> DateComponents
  func date(byAdding comps: DateComponents, to date: Date, options opts: CalendarOptions = []) -> Date?
  func components(unitFlags: CalendarUnit, from startingDate: Date, to resultDate: Date, options opts: CalendarOptions = []) -> DateComponents
  @available(iOS 8.0, *)
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, year yearValuePointer: UnsafeMutablePointer<Int>, month monthValuePointer: UnsafeMutablePointer<Int>, day dayValuePointer: UnsafeMutablePointer<Int>, from date: Date)
  @available(iOS 8.0, *)
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, yearForWeekOfYear yearValuePointer: UnsafeMutablePointer<Int>, weekOfYear weekValuePointer: UnsafeMutablePointer<Int>, weekday weekdayValuePointer: UnsafeMutablePointer<Int>, from date: Date)
  @available(iOS 8.0, *)
  func getHour(hourValuePointer: UnsafeMutablePointer<Int>, minute minuteValuePointer: UnsafeMutablePointer<Int>, second secondValuePointer: UnsafeMutablePointer<Int>, nanosecond nanosecondValuePointer: UnsafeMutablePointer<Int>, from date: Date)
  @available(iOS 8.0, *)
  func component(unit: CalendarUnit, from date: Date) -> Int
  @available(iOS 8.0, *)
  func date(withEra eraValue: Int, year yearValue: Int, month monthValue: Int, day dayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> Date?
  @available(iOS 8.0, *)
  func date(withEra eraValue: Int, yearForWeekOfYear yearValue: Int, weekOfYear weekValue: Int, weekday weekdayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> Date?
  @available(iOS 8.0, *)
  func startOfDay(for date: Date) -> Date
  @available(iOS 8.0, *)
  func components(in timezone: TimeZone, from date: Date) -> DateComponents
  @available(iOS 8.0, *)
  func compare(date1: Date, to date2: Date, toUnitGranularity unit: CalendarUnit) -> ComparisonResult
  @available(iOS 8.0, *)
  func isDate(date1: Date, equalTo date2: Date, toUnitGranularity unit: CalendarUnit) -> Bool
  @available(iOS 8.0, *)
  func isDate(date1: Date, inSameDayAs date2: Date) -> Bool
  @available(iOS 8.0, *)
  func isDate(inToday date: Date) -> Bool
  @available(iOS 8.0, *)
  func isDate(inYesterday date: Date) -> Bool
  @available(iOS 8.0, *)
  func isDate(inTomorrow date: Date) -> Bool
  @available(iOS 8.0, *)
  func isDate(inWeekend date: Date) -> Bool
  @available(iOS 8.0, *)
  func rangeOf(weekendStart datep: AutoreleasingUnsafeMutablePointer<Date?>, interval tip: UnsafeMutablePointer<TimeInterval>, containing date: Date) -> Bool
  @available(iOS 8.0, *)
  func nextWeekendStart(datep: AutoreleasingUnsafeMutablePointer<Date?>, interval tip: UnsafeMutablePointer<TimeInterval>, options: CalendarOptions = [], after date: Date) -> Bool
  @available(iOS 8.0, *)
  func components(unitFlags: CalendarUnit, from startingDateComp: DateComponents, to resultDateComp: DateComponents, options: CalendarOptions = []) -> DateComponents
  @available(iOS 8.0, *)
  func date(byAdding unit: CalendarUnit, value: Int, to date: Date, options: CalendarOptions = []) -> Date?
  @available(iOS 8.0, *)
  func enumerateDatesStarting(after start: Date, matching comps: DateComponents, options opts: CalendarOptions = [], using block: (Date?, Bool, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 8.0, *)
  func nextDate(after date: Date, matching comps: DateComponents, options: CalendarOptions = []) -> Date?
  @available(iOS 8.0, *)
  func nextDate(after date: Date, matching unit: CalendarUnit, value: Int, options: CalendarOptions = []) -> Date?
  @available(iOS 8.0, *)
  func nextDate(after date: Date, matchingHour hourValue: Int, minute minuteValue: Int, second secondValue: Int, options: CalendarOptions = []) -> Date?
  @available(iOS 8.0, *)
  func date(bySettingUnit unit: CalendarUnit, value v: Int, of date: Date, options opts: CalendarOptions = []) -> Date?
  @available(iOS 8.0, *)
  func date(bySettingHour h: Int, minute m: Int, second s: Int, of date: Date, options opts: CalendarOptions = []) -> Date?
  @available(iOS 8.0, *)
  func date(date: Date, matchesComponents components: DateComponents) -> Bool
  func copy(with zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 8.0, *)
let calendarDayChangedNotification: String
var dateComponentUndefined: Int { get }
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSDateComponentUndefined instead")
var undefinedDateComponent: Int { get }
class DateComponents : Object, Copying, SecureCoding {
  @available(iOS 4.0, *)
  @NSCopying var calendar: Calendar?
  @available(iOS 4.0, *)
  @NSCopying var timeZone: TimeZone?
  var era: Int
  var year: Int
  var month: Int
  var day: Int
  var hour: Int
  var minute: Int
  var second: Int
  @available(iOS 5.0, *)
  var nanosecond: Int
  var weekday: Int
  var weekdayOrdinal: Int
  @available(iOS 4.0, *)
  var quarter: Int
  @available(iOS 5.0, *)
  var weekOfMonth: Int
  @available(iOS 5.0, *)
  var weekOfYear: Int
  @available(iOS 5.0, *)
  var yearForWeekOfYear: Int
  @available(iOS 6.0, *)
  var isLeapMonth: Bool
  @available(iOS 4.0, *)
  @NSCopying var date: Date? { get }
  @available(iOS 8.0, *)
  func setValue(value: Int, forComponent unit: CalendarUnit)
  @available(iOS 8.0, *)
  func value(forComponent unit: CalendarUnit) -> Int
  @available(iOS 8.0, *)
  var isValidDate: Bool { get }
  @available(iOS 8.0, *)
  func isValidDate(in calendar: Calendar) -> Bool
  init()
  func copy(with zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
