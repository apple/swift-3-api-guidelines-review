
@available(OSX 10.10, *)
enum DateIntervalFormatterStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case noStyle
  case shortStyle
  case mediumStyle
  case longStyle
  case fullStyle
}
@available(OSX 10.10, *)
class DateIntervalFormatter : Formatter {
  @NSCopying var locale: Locale!
  @NSCopying var calendar: Calendar!
  @NSCopying var timeZone: TimeZone!
  var dateTemplate: String!
  var dateStyle: DateIntervalFormatterStyle
  var timeStyle: DateIntervalFormatterStyle
  func stringFrom(fromDate: Date, to toDate: Date) -> String
  init()
  init?(coder aDecoder: Coder)
}
