
@available(tvOS 8.0, *)
enum NSDateIntervalFormatterStyle : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case NoStyle
  case ShortStyle
  case MediumStyle
  case LongStyle
  case FullStyle
}
@available(tvOS 8.0, *)
class NSDateIntervalFormatter : NSFormatter {
  @NSCopying var locale: NSLocale!
  @NSCopying var calendar: NSCalendar!
  @NSCopying var timeZone: NSTimeZone!
  var dateTemplate: String!
  var dateStyle: NSDateIntervalFormatterStyle
  var timeStyle: NSDateIntervalFormatterStyle
  func stringFromDate(_ fromDate: NSDate, toDate toDate: NSDate) -> String
}
