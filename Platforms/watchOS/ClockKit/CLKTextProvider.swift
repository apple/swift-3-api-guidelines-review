
class CLKTextProvider : Object, Copying {
  var tintColor: UIColor
  init()
  func copyWith(zone: Zone = nil) -> AnyObject
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
  convenience init(date: Date, units calendarUnits: CalendarUnit)
  convenience init(date: Date, units calendarUnits: CalendarUnit, timeZone: TimeZone?)
  var date: Date
  var calendarUnits: CalendarUnit
  var timeZone: TimeZone?
  init()
}
class CLKTimeTextProvider : CLKTextProvider {
  convenience init(date: Date)
  convenience init(date: Date, timeZone: TimeZone?)
  var date: Date
  var timeZone: TimeZone?
  init()
}
class CLKTimeIntervalTextProvider : CLKTextProvider {
  convenience init(start startDate: Date, end endDate: Date)
  convenience init(start startDate: Date, end endDate: Date, timeZone: TimeZone?)
  var startDate: Date
  var endDate: Date
  var timeZone: TimeZone?
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
  convenience init(date: Date, style: CLKRelativeDateStyle, units calendarUnits: CalendarUnit)
  var date: Date
  var relativeDateStyle: CLKRelativeDateStyle
  var calendarUnits: CalendarUnit
  init()
}
