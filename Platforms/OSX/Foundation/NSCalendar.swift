
@available(OSX 10.6, *)
let NSCalendarIdentifierGregorian: String
@available(OSX 10.6, *)
let NSCalendarIdentifierBuddhist: String
@available(OSX 10.6, *)
let NSCalendarIdentifierChinese: String
@available(OSX 10.6, *)
let NSCalendarIdentifierCoptic: String
@available(OSX 10.6, *)
let NSCalendarIdentifierEthiopicAmeteMihret: String
@available(OSX 10.6, *)
let NSCalendarIdentifierEthiopicAmeteAlem: String
@available(OSX 10.6, *)
let NSCalendarIdentifierHebrew: String
@available(OSX 10.6, *)
let NSCalendarIdentifierISO8601: String
@available(OSX 10.6, *)
let NSCalendarIdentifierIndian: String
@available(OSX 10.6, *)
let NSCalendarIdentifierIslamic: String
@available(OSX 10.6, *)
let NSCalendarIdentifierIslamicCivil: String
@available(OSX 10.6, *)
let NSCalendarIdentifierJapanese: String
@available(OSX 10.6, *)
let NSCalendarIdentifierPersian: String
@available(OSX 10.6, *)
let NSCalendarIdentifierRepublicOfChina: String
@available(OSX 10.10, *)
let NSCalendarIdentifierIslamicTabular: String
@available(OSX 10.10, *)
let NSCalendarIdentifierIslamicUmmAlQura: String
struct NSCalendarUnit : OptionSetType {
  init(rawValue rawValue: UInt)
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
  @available(OSX 10.6, *)
  static var Quarter: NSCalendarUnit { get }
  @available(OSX 10.7, *)
  static var WeekOfMonth: NSCalendarUnit { get }
  @available(OSX 10.7, *)
  static var WeekOfYear: NSCalendarUnit { get }
  @available(OSX 10.7, *)
  static var YearForWeekOfYear: NSCalendarUnit { get }
  @available(OSX 10.7, *)
  static var Nanosecond: NSCalendarUnit { get }
  @available(OSX 10.7, *)
  static var Calendar: NSCalendarUnit { get }
  @available(OSX 10.7, *)
  static var TimeZone: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitEra instead")
  static var NSEraCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitYear instead")
  static var NSYearCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitMonth instead")
  static var NSMonthCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitDay instead")
  static var NSDayCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitHour instead")
  static var NSHourCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitMinute instead")
  static var NSMinuteCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitSecond instead")
  static var NSSecondCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitWeekOfMonth or NSCalendarUnitWeekOfYear, depending on which you mean")
  static var NSWeekCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitWeekday instead")
  static var NSWeekdayCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitWeekdayOrdinal instead")
  static var NSWeekdayOrdinalCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use NSCalendarUnitQuarter instead")
  static var NSQuarterCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitWeekOfMonth instead")
  static var NSWeekOfMonthCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitWeekOfYear instead")
  static var NSWeekOfYearCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitYearForWeekOfYear instead")
  static var NSYearForWeekOfYearCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitCalendar instead")
  static var NSCalendarCalendarUnit: NSCalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitTimeZone instead")
  static var NSTimeZoneCalendarUnit: NSCalendarUnit { get }
}
struct NSCalendarOptions : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var WrapComponents: NSCalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchStrictly: NSCalendarOptions { get }
  @available(OSX 10.9, *)
  static var SearchBackwards: NSCalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchPreviousTimePreservingSmallerUnits: NSCalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchNextTimePreservingSmallerUnits: NSCalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchNextTime: NSCalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchFirst: NSCalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchLast: NSCalendarOptions { get }
}
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarWrapComponents instead")
var NSWrapCalendarComponents: Int { get }
class NSCalendar : NSObject, NSCopying, NSSecureCoding {
  class func currentCalendar() -> NSCalendar
  @available(OSX 10.5, *)
  class func autoupdatingCurrentCalendar() -> NSCalendar
  @available(OSX 10.9, *)
  /*not inherited*/ init?(identifier calendarIdentifierConstant: String)
  init?(calendarIdentifier ident: String)
  var calendarIdentifier: String { get }
  @NSCopying var locale: NSLocale?
  @NSCopying var timeZone: NSTimeZone
  var firstWeekday: Int
  var minimumDaysInFirstWeek: Int
  @available(OSX 10.7, *)
  var eraSymbols: [String] { get }
  @available(OSX 10.7, *)
  var longEraSymbols: [String] { get }
  @available(OSX 10.7, *)
  var monthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortMonthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var veryShortMonthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var standaloneMonthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortStandaloneMonthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var veryShortStandaloneMonthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var weekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortWeekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var veryShortWeekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var standaloneWeekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortStandaloneWeekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var veryShortStandaloneWeekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var quarterSymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortQuarterSymbols: [String] { get }
  @available(OSX 10.7, *)
  var standaloneQuarterSymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortStandaloneQuarterSymbols: [String] { get }
  @available(OSX 10.7, *)
  var AMSymbol: String { get }
  @available(OSX 10.7, *)
  var PMSymbol: String { get }
  func minimumRangeOfUnit(_ unit: NSCalendarUnit) -> NSRange
  func maximumRangeOfUnit(_ unit: NSCalendarUnit) -> NSRange
  func rangeOfUnit(_ smaller: NSCalendarUnit, inUnit larger: NSCalendarUnit, forDate date: NSDate) -> NSRange
  func ordinalityOfUnit(_ smaller: NSCalendarUnit, inUnit larger: NSCalendarUnit, forDate date: NSDate) -> Int
  @available(OSX 10.5, *)
  func rangeOfUnit(_ unit: NSCalendarUnit, startDate datep: AutoreleasingUnsafeMutablePointer<NSDate?>, interval tip: UnsafeMutablePointer<NSTimeInterval>, forDate date: NSDate) -> Bool
  func dateFromComponents(_ comps: NSDateComponents) -> NSDate?
  func components(_ unitFlags: NSCalendarUnit, fromDate date: NSDate) -> NSDateComponents
  func dateByAddingComponents(_ comps: NSDateComponents, toDate date: NSDate, options opts: NSCalendarOptions) -> NSDate?
  func components(_ unitFlags: NSCalendarUnit, fromDate startingDate: NSDate, toDate resultDate: NSDate, options opts: NSCalendarOptions) -> NSDateComponents
  @available(OSX 10.9, *)
  func getEra(_ eraValuePointer: UnsafeMutablePointer<Int>, year yearValuePointer: UnsafeMutablePointer<Int>, month monthValuePointer: UnsafeMutablePointer<Int>, day dayValuePointer: UnsafeMutablePointer<Int>, fromDate date: NSDate)
  @available(OSX 10.9, *)
  func getEra(_ eraValuePointer: UnsafeMutablePointer<Int>, yearForWeekOfYear yearValuePointer: UnsafeMutablePointer<Int>, weekOfYear weekValuePointer: UnsafeMutablePointer<Int>, weekday weekdayValuePointer: UnsafeMutablePointer<Int>, fromDate date: NSDate)
  @available(OSX 10.9, *)
  func getHour(_ hourValuePointer: UnsafeMutablePointer<Int>, minute minuteValuePointer: UnsafeMutablePointer<Int>, second secondValuePointer: UnsafeMutablePointer<Int>, nanosecond nanosecondValuePointer: UnsafeMutablePointer<Int>, fromDate date: NSDate)
  @available(OSX 10.9, *)
  func component(_ unit: NSCalendarUnit, fromDate date: NSDate) -> Int
  @available(OSX 10.9, *)
  func dateWithEra(_ eraValue: Int, year yearValue: Int, month monthValue: Int, day dayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> NSDate?
  @available(OSX 10.9, *)
  func dateWithEra(_ eraValue: Int, yearForWeekOfYear yearValue: Int, weekOfYear weekValue: Int, weekday weekdayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> NSDate?
  @available(OSX 10.9, *)
  func startOfDayForDate(_ date: NSDate) -> NSDate
  @available(OSX 10.9, *)
  func componentsInTimeZone(_ timezone: NSTimeZone, fromDate date: NSDate) -> NSDateComponents
  @available(OSX 10.9, *)
  func compareDate(_ date1: NSDate, toDate date2: NSDate, toUnitGranularity unit: NSCalendarUnit) -> NSComparisonResult
  @available(OSX 10.9, *)
  func isDate(_ date1: NSDate, equalToDate date2: NSDate, toUnitGranularity unit: NSCalendarUnit) -> Bool
  @available(OSX 10.9, *)
  func isDate(_ date1: NSDate, inSameDayAsDate date2: NSDate) -> Bool
  @available(OSX 10.9, *)
  func isDateInToday(_ date: NSDate) -> Bool
  @available(OSX 10.9, *)
  func isDateInYesterday(_ date: NSDate) -> Bool
  @available(OSX 10.9, *)
  func isDateInTomorrow(_ date: NSDate) -> Bool
  @available(OSX 10.9, *)
  func isDateInWeekend(_ date: NSDate) -> Bool
  @available(OSX 10.9, *)
  func rangeOfWeekendStartDate(_ datep: AutoreleasingUnsafeMutablePointer<NSDate?>, interval tip: UnsafeMutablePointer<NSTimeInterval>, containingDate date: NSDate) -> Bool
  @available(OSX 10.9, *)
  func nextWeekendStartDate(_ datep: AutoreleasingUnsafeMutablePointer<NSDate?>, interval tip: UnsafeMutablePointer<NSTimeInterval>, options options: NSCalendarOptions, afterDate date: NSDate) -> Bool
  @available(OSX 10.9, *)
  func components(_ unitFlags: NSCalendarUnit, fromDateComponents startingDateComp: NSDateComponents, toDateComponents resultDateComp: NSDateComponents, options options: NSCalendarOptions) -> NSDateComponents
  @available(OSX 10.9, *)
  func dateByAddingUnit(_ unit: NSCalendarUnit, value value: Int, toDate date: NSDate, options options: NSCalendarOptions) -> NSDate?
  @available(OSX 10.9, *)
  func enumerateDatesStartingAfterDate(_ start: NSDate, matchingComponents comps: NSDateComponents, options opts: NSCalendarOptions, usingBlock block: (NSDate?, Bool, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.9, *)
  func nextDateAfterDate(_ date: NSDate, matchingComponents comps: NSDateComponents, options options: NSCalendarOptions) -> NSDate?
  @available(OSX 10.9, *)
  func nextDateAfterDate(_ date: NSDate, matchingUnit unit: NSCalendarUnit, value value: Int, options options: NSCalendarOptions) -> NSDate?
  @available(OSX 10.9, *)
  func nextDateAfterDate(_ date: NSDate, matchingHour hourValue: Int, minute minuteValue: Int, second secondValue: Int, options options: NSCalendarOptions) -> NSDate?
  @available(OSX 10.9, *)
  func dateBySettingUnit(_ unit: NSCalendarUnit, value v: Int, ofDate date: NSDate, options opts: NSCalendarOptions) -> NSDate?
  @available(OSX 10.9, *)
  func dateBySettingHour(_ h: Int, minute m: Int, second s: Int, ofDate date: NSDate, options opts: NSCalendarOptions) -> NSDate?
  @available(OSX 10.9, *)
  func date(_ date: NSDate, matchesComponents components: NSDateComponents) -> Bool
  func copyWithZone(_ zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.9, *)
let NSCalendarDayChangedNotification: String
var NSDateComponentUndefined: Int { get }
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSDateComponentUndefined instead")
var NSUndefinedDateComponent: Int { get }
class NSDateComponents : NSObject, NSCopying, NSSecureCoding {
  @available(OSX 10.7, *)
  @NSCopying var calendar: NSCalendar?
  @available(OSX 10.7, *)
  @NSCopying var timeZone: NSTimeZone?
  var era: Int
  var year: Int
  var month: Int
  var day: Int
  var hour: Int
  var minute: Int
  var second: Int
  @available(OSX 10.7, *)
  var nanosecond: Int
  var weekday: Int
  var weekdayOrdinal: Int
  @available(OSX 10.6, *)
  var quarter: Int
  @available(OSX 10.7, *)
  var weekOfMonth: Int
  @available(OSX 10.7, *)
  var weekOfYear: Int
  @available(OSX 10.7, *)
  var yearForWeekOfYear: Int
  @available(OSX 10.8, *)
  var leapMonth: Bool
  @available(OSX 10.7, *)
  @NSCopying var date: NSDate? { get }
  @available(OSX 10.9, *)
  func setValue(_ value: Int, forComponent unit: NSCalendarUnit)
  @available(OSX 10.9, *)
  func valueForComponent(_ unit: NSCalendarUnit) -> Int
  @available(OSX 10.9, *)
  var validDate: Bool { get }
  @available(OSX 10.9, *)
  func isValidDateInCalendar(_ calendar: NSCalendar) -> Bool
  func copyWithZone(_ zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
