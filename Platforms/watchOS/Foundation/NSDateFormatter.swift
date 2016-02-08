
class DateFormatter : Formatter {
  @available(watchOS 2.0, *)
  var formattingContext: FormattingContext
  func getObjectValue(obj: AutoreleasingUnsafeMutablePointer<AnyObject?>, forString string: String, range rangep: UnsafeMutablePointer<NSRange>) throws
  func stringFrom(date: Date) -> String
  func dateFrom(string: String) -> Date?
  @available(watchOS 2.0, *)
  class func localizedStringFrom(date: Date, dateStyle dstyle: DateFormatterStyle, time tstyle: DateFormatterStyle) -> String
  @available(watchOS 2.0, *)
  class func dateFormatFrom(template tmplate: String, options opts: Int, locale: Locale?) -> String?
  class func defaultFormatterBehavior() -> DateFormatterBehavior
  class func setDefaultFormatterBehavior(behavior: DateFormatterBehavior)
  @available(watchOS 2.0, *)
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
  @NSCopying var gregorianStartDate: Date?
  @available(watchOS 2.0, *)
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
  case behavior10_4
}
