
@available(iOS 4.0, *)
let NSCalendarIdentifierGregorian: String
@available(iOS 4.0, *)
let NSCalendarIdentifierBuddhist: String
@available(iOS 4.0, *)
let NSCalendarIdentifierChinese: String
@available(iOS 4.0, *)
let NSCalendarIdentifierCoptic: String
@available(iOS 4.0, *)
let NSCalendarIdentifierEthiopicAmeteMihret: String
@available(iOS 4.0, *)
let NSCalendarIdentifierEthiopicAmeteAlem: String
@available(iOS 4.0, *)
let NSCalendarIdentifierHebrew: String
@available(iOS 4.0, *)
let NSCalendarIdentifierISO8601: String
@available(iOS 4.0, *)
let NSCalendarIdentifierIndian: String
@available(iOS 4.0, *)
let NSCalendarIdentifierIslamic: String
@available(iOS 4.0, *)
let NSCalendarIdentifierIslamicCivil: String
@available(iOS 4.0, *)
let NSCalendarIdentifierJapanese: String
@available(iOS 4.0, *)
let NSCalendarIdentifierPersian: String
@available(iOS 4.0, *)
let NSCalendarIdentifierRepublicOfChina: String
@available(iOS 8.0, *)
let NSCalendarIdentifierIslamicTabular: String
@available(iOS 8.0, *)
let NSCalendarIdentifierIslamicUmmAlQura: String
struct NSCalendarUnit : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Era: NSCalendarUnit { get }
  static var Year: NSCalendarUnit { get }
  static var Month: NSCalendarUnit { get }
  static var Day: NSCalendarUnit { get }
  static var Hour: NSCalendarUnit { get }
  static var Minute: NSCalendarUnit { get }
  static var Second: NSCalendarUnit { get }
  static var Weekday: NSCalendarUnit { get }
  static var WeekdayOrdinal: NSCalendarUnit { get }
  @available(iOS 4.0, *)
  static var Quarter: NSCalendarUnit { get }
  @available(iOS 5.0, *)
  static var WeekOfMonth: NSCalendarUnit { get }
  @available(iOS 5.0, *)
  static var WeekOfYear: NSCalendarUnit { get }
  @available(iOS 5.0, *)
  static var YearForWeekOfYear: NSCalendarUnit { get }
  @available(iOS 5.0, *)
  static var Nanosecond: NSCalendarUnit { get }
  @available(iOS 4.0, *)
  static var Calendar: NSCalendarUnit { get }
  @available(iOS 4.0, *)
  static var TimeZone: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitEra instead")
  static var NSEraCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitYear instead")
  static var NSYearCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitMonth instead")
  static var NSMonthCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitDay instead")
  static var NSDayCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitHour instead")
  static var NSHourCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitMinute instead")
  static var NSMinuteCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitSecond instead")
  static var NSSecondCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitWeekOfMonth or NSCalendarUnitWeekOfYear, depending on which you mean")
  static var NSWeekCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitWeekday instead")
  static var NSWeekdayCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarUnitWeekdayOrdinal instead")
  static var NSWeekdayOrdinalCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarUnitQuarter instead")
  static var NSQuarterCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=5.0, deprecated=8.0, message="Use NSCalendarUnitWeekOfMonth instead")
  static var NSWeekOfMonthCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=5.0, deprecated=8.0, message="Use NSCalendarUnitWeekOfYear instead")
  static var NSWeekOfYearCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=5.0, deprecated=8.0, message="Use NSCalendarUnitYearForWeekOfYear instead")
  static var NSYearForWeekOfYearCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarUnitCalendar instead")
  static var NSCalendarCalendarUnit: NSCalendarUnit { get }
  @available(iOS, introduced=4.0, deprecated=8.0, message="Use NSCalendarUnitTimeZone instead")
  static var NSTimeZoneCalendarUnit: NSCalendarUnit { get }
}
struct NSCalendarOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WrapComponents: NSCalendarOptions { get }
  @available(iOS 7.0, *)
  static var MatchStrictly: NSCalendarOptions { get }
  @available(iOS 7.0, *)
  static var SearchBackwards: NSCalendarOptions { get }
  @available(iOS 7.0, *)
  static var MatchPreviousTimePreservingSmallerUnits: NSCalendarOptions { get }
  @available(iOS 7.0, *)
  static var MatchNextTimePreservingSmallerUnits: NSCalendarOptions { get }
  @available(iOS 7.0, *)
  static var MatchNextTime: NSCalendarOptions { get }
  @available(iOS 7.0, *)
  static var MatchFirst: NSCalendarOptions { get }
  @available(iOS 7.0, *)
  static var MatchLast: NSCalendarOptions { get }
}
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSCalendarWrapComponents instead")
var NSWrapCalendarComponents: Int { get }
class NSCalendar : NSObject, NSCopying, NSSecureCoding {
  class func currentCalendar() -> NSCalendar
  @available(iOS 2.0, *)
  class func autoupdatingCurrentCalendar() -> NSCalendar
  @available(iOS 8.0, *)
  /*not inherited*/ init?(identifier calendarIdentifierConstant: String)
  init?(calendarIdentifier ident: String)
  var calendarIdentifier: String { get }
  @NSCopying var locale: NSLocale?
  @NSCopying var timeZone: NSTimeZone
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
  var AMSymbol: String { get }
  @available(iOS 5.0, *)
  var PMSymbol: String { get }
  func minimumRangeOfUnit(unit: NSCalendarUnit) -> NSRange
  func maximumRangeOfUnit(unit: NSCalendarUnit) -> NSRange
  func rangeOfUnit(smaller: NSCalendarUnit, inUnit larger: NSCalendarUnit, forDate date: NSDate) -> NSRange
  func ordinalityOfUnit(smaller: NSCalendarUnit, inUnit larger: NSCalendarUnit, forDate date: NSDate) -> Int
  @available(iOS 2.0, *)
  func rangeOfUnit(unit: NSCalendarUnit, startDate datep: AutoreleasingUnsafeMutablePointer<NSDate?>, interval tip: UnsafeMutablePointer<NSTimeInterval>, forDate date: NSDate) -> Bool
  func dateFromComponents(comps: NSDateComponents) -> NSDate?
  func components(unitFlags: NSCalendarUnit, fromDate date: NSDate) -> NSDateComponents
  func dateByAddingComponents(comps: NSDateComponents, toDate date: NSDate, options opts: NSCalendarOptions) -> NSDate?
  func components(unitFlags: NSCalendarUnit, fromDate startingDate: NSDate, toDate resultDate: NSDate, options opts: NSCalendarOptions) -> NSDateComponents
  @available(iOS 8.0, *)
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, year yearValuePointer: UnsafeMutablePointer<Int>, month monthValuePointer: UnsafeMutablePointer<Int>, day dayValuePointer: UnsafeMutablePointer<Int>, fromDate date: NSDate)
  @available(iOS 8.0, *)
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, yearForWeekOfYear yearValuePointer: UnsafeMutablePointer<Int>, weekOfYear weekValuePointer: UnsafeMutablePointer<Int>, weekday weekdayValuePointer: UnsafeMutablePointer<Int>, fromDate date: NSDate)
  @available(iOS 8.0, *)
  func getHour(hourValuePointer: UnsafeMutablePointer<Int>, minute minuteValuePointer: UnsafeMutablePointer<Int>, second secondValuePointer: UnsafeMutablePointer<Int>, nanosecond nanosecondValuePointer: UnsafeMutablePointer<Int>, fromDate date: NSDate)
  @available(iOS 8.0, *)
  func component(unit: NSCalendarUnit, fromDate date: NSDate) -> Int
  @available(iOS 8.0, *)
  func dateWithEra(eraValue: Int, year yearValue: Int, month monthValue: Int, day dayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> NSDate?
  @available(iOS 8.0, *)
  func dateWithEra(eraValue: Int, yearForWeekOfYear yearValue: Int, weekOfYear weekValue: Int, weekday weekdayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> NSDate?
  @available(iOS 8.0, *)
  func startOfDayForDate(date: NSDate) -> NSDate
  @available(iOS 8.0, *)
  func componentsInTimeZone(timezone: NSTimeZone, fromDate date: NSDate) -> NSDateComponents
  @available(iOS 8.0, *)
  func compareDate(date1: NSDate, toDate date2: NSDate, toUnitGranularity unit: NSCalendarUnit) -> NSComparisonResult
  @available(iOS 8.0, *)
  func isDate(date1: NSDate, equalToDate date2: NSDate, toUnitGranularity unit: NSCalendarUnit) -> Bool
  @available(iOS 8.0, *)
  func isDate(date1: NSDate, inSameDayAsDate date2: NSDate) -> Bool
  @available(iOS 8.0, *)
  func isDateInToday(date: NSDate) -> Bool
  @available(iOS 8.0, *)
  func isDateInYesterday(date: NSDate) -> Bool
  @available(iOS 8.0, *)
  func isDateInTomorrow(date: NSDate) -> Bool
  @available(iOS 8.0, *)
  func isDateInWeekend(date: NSDate) -> Bool
  @available(iOS 8.0, *)
  func rangeOfWeekendStartDate(datep: AutoreleasingUnsafeMutablePointer<NSDate?>, interval tip: UnsafeMutablePointer<NSTimeInterval>, containingDate date: NSDate) -> Bool
  @available(iOS 8.0, *)
  func nextWeekendStartDate(datep: AutoreleasingUnsafeMutablePointer<NSDate?>, interval tip: UnsafeMutablePointer<NSTimeInterval>, options: NSCalendarOptions, afterDate date: NSDate) -> Bool
  @available(iOS 8.0, *)
  func components(unitFlags: NSCalendarUnit, fromDateComponents startingDateComp: NSDateComponents, toDateComponents resultDateComp: NSDateComponents, options: NSCalendarOptions) -> NSDateComponents
  @available(iOS 8.0, *)
  func dateByAddingUnit(unit: NSCalendarUnit, value: Int, toDate date: NSDate, options: NSCalendarOptions) -> NSDate?
  @available(iOS 8.0, *)
  func enumerateDatesStartingAfterDate(start: NSDate, matchingComponents comps: NSDateComponents, options opts: NSCalendarOptions, usingBlock block: (NSDate?, Bool, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(iOS 8.0, *)
  func nextDateAfterDate(date: NSDate, matchingComponents comps: NSDateComponents, options: NSCalendarOptions) -> NSDate?
  @available(iOS 8.0, *)
  func nextDateAfterDate(date: NSDate, matchingUnit unit: NSCalendarUnit, value: Int, options: NSCalendarOptions) -> NSDate?
  @available(iOS 8.0, *)
  func nextDateAfterDate(date: NSDate, matchingHour hourValue: Int, minute minuteValue: Int, second secondValue: Int, options: NSCalendarOptions) -> NSDate?
  @available(iOS 8.0, *)
  func dateBySettingUnit(unit: NSCalendarUnit, value v: Int, ofDate date: NSDate, options opts: NSCalendarOptions) -> NSDate?
  @available(iOS 8.0, *)
  func dateBySettingHour(h: Int, minute m: Int, second s: Int, ofDate date: NSDate, options opts: NSCalendarOptions) -> NSDate?
  @available(iOS 8.0, *)
  func date(date: NSDate, matchesComponents components: NSDateComponents) -> Bool
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
let NSCalendarDayChangedNotification: String
var NSDateComponentUndefined: Int { get }
@available(iOS, introduced=2.0, deprecated=8.0, message="Use NSDateComponentUndefined instead")
var NSUndefinedDateComponent: Int { get }
class NSDateComponents : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 4.0, *)
  @NSCopying var calendar: NSCalendar?
  @available(iOS 4.0, *)
  @NSCopying var timeZone: NSTimeZone?
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
  var leapMonth: Bool
  @available(iOS 4.0, *)
  @NSCopying var date: NSDate? { get }
  @available(iOS 8.0, *)
  func setValue(value: Int, forComponent unit: NSCalendarUnit)
  @available(iOS 8.0, *)
  func valueForComponent(unit: NSCalendarUnit) -> Int
  @available(iOS 8.0, *)
  var validDate: Bool { get }
  @available(iOS 8.0, *)
  func isValidDateInCalendar(calendar: NSCalendar) -> Bool
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
