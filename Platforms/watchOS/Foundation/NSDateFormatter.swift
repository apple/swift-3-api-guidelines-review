
class NSDateFormatter : NSFormatter {
  @available(watchOS 2.0, *)
  var formattingContext: NSFormattingContext
  func getObjectValue(_ obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFromDate(_ date: NSDate) -> String
  func dateFromString(_ string: String) -> NSDate?
  @available(watchOS 2.0, *)
  class func localizedStringFromDate(_ date: NSDate, dateStyle dstyle: NSDateFormatterStyle, timeStyle tstyle: NSDateFormatterStyle) -> String
  @available(watchOS 2.0, *)
  class func dateFormatFromTemplate(_ tmplate: String, options opts: Int, locale locale: NSLocale?) -> String?
  class func defaultFormatterBehavior() -> NSDateFormatterBehavior
  class func setDefaultFormatterBehavior(_ behavior: NSDateFormatterBehavior)
  @available(watchOS 2.0, *)
  func setLocalizedDateFormatFromTemplate(_ dateFormatTemplate: String)
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
  @available(watchOS 2.0, *)
  var longEraSymbols: [String]!
  @available(watchOS 2.0, *)
  var veryShortMonthSymbols: [String]!
  @available(watchOS 2.0, *)
  var standaloneMonthSymbols: [String]!
  @available(watchOS 2.0, *)
  var shortStandaloneMonthSymbols: [String]!
  @available(watchOS 2.0, *)
  var veryShortStandaloneMonthSymbols: [String]!
  @available(watchOS 2.0, *)
  var veryShortWeekdaySymbols: [String]!
  @available(watchOS 2.0, *)
  var standaloneWeekdaySymbols: [String]!
  @available(watchOS 2.0, *)
  var shortStandaloneWeekdaySymbols: [String]!
  @available(watchOS 2.0, *)
  var veryShortStandaloneWeekdaySymbols: [String]!
  @available(watchOS 2.0, *)
  var quarterSymbols: [String]!
  @available(watchOS 2.0, *)
  var shortQuarterSymbols: [String]!
  @available(watchOS 2.0, *)
  var standaloneQuarterSymbols: [String]!
  @available(watchOS 2.0, *)
  var shortStandaloneQuarterSymbols: [String]!
  @available(watchOS 2.0, *)
  @NSCopying var gregorianStartDate: NSDate?
  @available(watchOS 2.0, *)
  var doesRelativeDateFormatting: Bool
}
enum NSDateFormatterStyle : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case NoStyle
  case ShortStyle
  case MediumStyle
  case LongStyle
  case FullStyle
}
enum NSDateFormatterBehavior : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case BehaviorDefault
  case Behavior10_4
}
