
class NSDateFormatter : NSFormatter {
  @available(tvOS 8.0, *)
  var formattingContext: NSFormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFromDate(date: NSDate) -> String
  func dateFromString(string: String) -> NSDate?
  @available(tvOS 4.0, *)
  class func localizedStringFromDate(date: NSDate, dateStyle dstyle: NSDateFormatterStyle, timeStyle tstyle: NSDateFormatterStyle) -> String
  @available(tvOS 4.0, *)
  class func dateFormatFromTemplate(tmplate: String, options opts: Int, locale: NSLocale?) -> String?
  class func defaultFormatterBehavior() -> NSDateFormatterBehavior
  class func setDefaultFormatterBehavior(behavior: NSDateFormatterBehavior)
  @available(tvOS 8.0, *)
  func setLocalizedDateFormatFromTemplate(dateFormatTemplate: String)
  var dateFormat: String!
  var dateStyle: NSDateFormatterStyle
  var timeStyle: NSDateFormatterStyle
  @NSCopying var locale: NSLocale!
  var generatesCalendarDates: Bool
  var formatterBehavior: NSDateFormatterBehavior
  @NSCopying var timeZone: NSTimeZone!
  @NSCopying var calendar: NSCalendar!
  var lenient: Bool
  @NSCopying var twoDigitStartDate: NSDate?
  @NSCopying var defaultDate: NSDate?
  var eraSymbols: [String]!
  var monthSymbols: [String]!
  var shortMonthSymbols: [String]!
  var weekdaySymbols: [String]!
  var shortWeekdaySymbols: [String]!
  var AMSymbol: String!
  var PMSymbol: String!
  @available(tvOS 2.0, *)
  var longEraSymbols: [String]!
  @available(tvOS 2.0, *)
  var veryShortMonthSymbols: [String]!
  @available(tvOS 2.0, *)
  var standaloneMonthSymbols: [String]!
  @available(tvOS 2.0, *)
  var shortStandaloneMonthSymbols: [String]!
  @available(tvOS 2.0, *)
  var veryShortStandaloneMonthSymbols: [String]!
  @available(tvOS 2.0, *)
  var veryShortWeekdaySymbols: [String]!
  @available(tvOS 2.0, *)
  var standaloneWeekdaySymbols: [String]!
  @available(tvOS 2.0, *)
  var shortStandaloneWeekdaySymbols: [String]!
  @available(tvOS 2.0, *)
  var veryShortStandaloneWeekdaySymbols: [String]!
  @available(tvOS 2.0, *)
  var quarterSymbols: [String]!
  @available(tvOS 2.0, *)
  var shortQuarterSymbols: [String]!
  @available(tvOS 2.0, *)
  var standaloneQuarterSymbols: [String]!
  @available(tvOS 2.0, *)
  var shortStandaloneQuarterSymbols: [String]!
  @available(tvOS 2.0, *)
  @NSCopying var gregorianStartDate: NSDate?
  @available(tvOS 4.0, *)
  var doesRelativeDateFormatting: Bool
  init()
  init?(coder aDecoder: NSCoder)
}
enum NSDateFormatterStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case NoStyle
  case ShortStyle
  case MediumStyle
  case LongStyle
  case FullStyle
}
enum NSDateFormatterBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case BehaviorDefault
  case Behavior10_4
}
