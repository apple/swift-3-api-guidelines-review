
class DateFormatter : Formatter {
  @available(OSX 10.10, *)
  var formattingContext: FormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func string(from date: Date) -> String
  func date(from string: String) -> Date?
  @available(OSX 10.6, *)
  class func localizedString(from date: Date, dateStyle dstyle: DateFormatterStyle, time tstyle: DateFormatterStyle) -> String
  @available(OSX 10.6, *)
  class func dateFormat(fromTemplate tmplate: String, options opts: Int, locale: Locale?) -> String?
  class func defaultFormatterBehavior() -> DateFormatterBehavior
  class func setDefaultFormatterBehavior(behavior: DateFormatterBehavior)
  @available(OSX 10.10, *)
  func setLocalizedDateFormatFromTemplate(dateFormatTemplate: String)
  var dateFormat: String!
  var dateStyle: DateFormatterStyle
  var timeStyle: DateFormatterStyle
  @NSCopying var locale: Locale!
  var generatesCalendarDates: Bool
  var formatterBehavior: DateFormatterBehavior
  @NSCopying var timeZone: TimeZone!
  @NSCopying var calendar: Calendar!
  var isLenient: Bool
  @NSCopying var twoDigitStartDate: Date?
  @NSCopying var defaultDate: Date?
  var eraSymbols: [String]!
  var monthSymbols: [String]!
  var shortMonthSymbols: [String]!
  var weekdaySymbols: [String]!
  var shortWeekdaySymbols: [String]!
  var amSymbol: String!
  var pmSymbol: String!
  @available(OSX 10.5, *)
  var longEraSymbols: [String]!
  @available(OSX 10.5, *)
  var veryShortMonthSymbols: [String]!
  @available(OSX 10.5, *)
  var standaloneMonthSymbols: [String]!
  @available(OSX 10.5, *)
  var shortStandaloneMonthSymbols: [String]!
  @available(OSX 10.5, *)
  var veryShortStandaloneMonthSymbols: [String]!
  @available(OSX 10.5, *)
  var veryShortWeekdaySymbols: [String]!
  @available(OSX 10.5, *)
  var standaloneWeekdaySymbols: [String]!
  @available(OSX 10.5, *)
  var shortStandaloneWeekdaySymbols: [String]!
  @available(OSX 10.5, *)
  var veryShortStandaloneWeekdaySymbols: [String]!
  @available(OSX 10.5, *)
  var quarterSymbols: [String]!
  @available(OSX 10.5, *)
  var shortQuarterSymbols: [String]!
  @available(OSX 10.5, *)
  var standaloneQuarterSymbols: [String]!
  @available(OSX 10.5, *)
  var shortStandaloneQuarterSymbols: [String]!
  @available(OSX 10.5, *)
  @NSCopying var gregorianStartDate: Date?
  @available(OSX 10.6, *)
  var doesRelativeDateFormatting: Bool
  init()
  init?(coder aDecoder: Coder)
}
enum DateFormatterStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case noStyle
  case shortStyle
  case mediumStyle
  case longStyle
  case fullStyle
}
enum DateFormatterBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case behaviorDefault
  case behavior10_0
  case behavior10_4
}
extension DateFormatter {
}
