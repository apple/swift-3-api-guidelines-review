
extension Date {
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func date(naturalLanguageString string: String, locale: AnyObject?) -> AnyObject?
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func date(naturalLanguageString string: String) -> AnyObject?
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func date(aString: String) -> AnyObject
  @available(OSX, introduced=10.4, deprecated=10.10)
  func date(calendarFormat format: String?, timeZone aTimeZone: TimeZone?) -> CalendarDate
  @available(OSX, introduced=10.4, deprecated=10.10)
  func description(calendarFormat format: String?, timeZone aTimeZone: TimeZone?, locale: AnyObject?) -> String?
  @available(OSX, introduced=10.4, deprecated=10.10)
  convenience init?(string description: String)
}
