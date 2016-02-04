
extension NSDate {
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func dateWithNaturalLanguageString(string: String, locale: AnyObject?) -> AnyObject?
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func dateWithNaturalLanguageString(string: String) -> AnyObject?
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func dateWithString(aString: String) -> AnyObject
  @available(OSX, introduced=10.4, deprecated=10.10)
  func dateWithCalendarFormat(format: String?, timeZone aTimeZone: NSTimeZone?) -> NSCalendarDate
  @available(OSX, introduced=10.4, deprecated=10.10)
  func descriptionWithCalendarFormat(format: String?, timeZone aTimeZone: NSTimeZone?, locale: AnyObject?) -> String?
  @available(OSX, introduced=10.4, deprecated=10.10)
  convenience init?(string description: String)
}
