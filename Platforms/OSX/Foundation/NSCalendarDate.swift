
extension NSDate {
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func dateWithNaturalLanguageString(_ string: String, locale locale: AnyObject?) -> AnyObject?
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func dateWithNaturalLanguageString(_ string: String) -> AnyObject?
  @available(OSX, introduced=10.4, deprecated=10.10)
  class func dateWithString(_ aString: String) -> AnyObject
  @available(OSX, introduced=10.4, deprecated=10.10)
  func dateWithCalendarFormat(_ format: String?, timeZone aTimeZone: NSTimeZone?) -> NSCalendarDate
  @available(OSX, introduced=10.4, deprecated=10.10)
  func descriptionWithCalendarFormat(_ format: String?, timeZone aTimeZone: NSTimeZone?, locale locale: AnyObject?) -> String?
  @available(OSX, introduced=10.4, deprecated=10.10)
  convenience init?(string description: String)
}
