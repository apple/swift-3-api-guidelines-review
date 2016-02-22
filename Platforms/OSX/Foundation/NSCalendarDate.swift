
extension NSDate {
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func date(withNaturalLanguageString string: String, locale locale: AnyObject?) -> AnyObject?
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func date(withNaturalLanguageString string: String) -> AnyObject?
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func date(with aString: String) -> AnyObject
  @available(OSX, introduced=10.4, deprecated=10.10)
  func date(withCalendarFormat format: String?, timeZone aTimeZone: NSTimeZone?) -> NSCalendarDate
  @available(OSX, introduced=10.4, deprecated=10.10)
  func description(withCalendarFormat format: String?, timeZone aTimeZone: NSTimeZone?, locale locale: AnyObject?) -> String?
  @available(OSX, introduced=10.4, deprecated=10.10)
  convenience init?(string description: String)
}
