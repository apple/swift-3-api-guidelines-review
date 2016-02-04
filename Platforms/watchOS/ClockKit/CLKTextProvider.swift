
class CLKTextProvider : NSObject, NSCopying {
  var tintColor: UIColor
  init()
  func copyWithZone(zone: NSZone) -> AnyObject
}
class CLKSimpleTextProvider : CLKTextProvider {
  convenience init(text: String)
  convenience init(text: String, shortText: String?)
  convenience init(text: String, shortText: String?, accessibilityLabel: String?)
  var text: String
  var shortText: String?
  var accessibilityLabel: String?
  init()
}
class CLKDateTextProvider : CLKTextProvider {
  convenience init(date: NSDate, units calendarUnits: NSCalendarUnit)
  convenience init(date: NSDate, units calendarUnits: NSCalendarUnit, timeZone: NSTimeZone?)
  var date: NSDate
  var calendarUnits: NSCalendarUnit
  var timeZone: NSTimeZone?
  init()
}
class CLKTimeTextProvider : CLKTextProvider {
  convenience init(date: NSDate)
  convenience init(date: NSDate, timeZone: NSTimeZone?)
  var date: NSDate
  var timeZone: NSTimeZone?
  init()
}
class CLKTimeIntervalTextProvider : CLKTextProvider {
  convenience init(startDate: NSDate, endDate: NSDate)
  convenience init(startDate: NSDate, endDate: NSDate, timeZone: NSTimeZone?)
  var startDate: NSDate
  var endDate: NSDate
  var timeZone: NSTimeZone?
  init()
}
enum CLKRelativeDateStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Natural
  case Offset
  case Timer
}
class CLKRelativeDateTextProvider : CLKTextProvider {
  convenience init(date: NSDate, style: CLKRelativeDateStyle, units calendarUnits: NSCalendarUnit)
  var date: NSDate
  var relativeDateStyle: CLKRelativeDateStyle
  var calendarUnits: NSCalendarUnit
  init()
}
