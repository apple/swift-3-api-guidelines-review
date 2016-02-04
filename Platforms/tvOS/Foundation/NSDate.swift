
@available(tvOS 4.0, *)
let NSSystemClockDidChangeNotification: String
typealias NSTimeInterval = Double
var NSTimeIntervalSince1970: Double { get }
class NSDate : NSObject, NSCopying, NSSecureCoding {
  var timeIntervalSinceReferenceDate: NSTimeInterval { get }
  init()
  init(timeIntervalSinceReferenceDate ti: NSTimeInterval)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(aCoder: NSCoder)
}

extension NSDate : CustomPlaygroundQuickLookable {
  var summary: String { get }
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
extension NSDate {
  func timeIntervalSinceDate(anotherDate: NSDate) -> NSTimeInterval
  var timeIntervalSinceNow: NSTimeInterval { get }
  var timeIntervalSince1970: NSTimeInterval { get }
  @available(tvOS 2.0, *)
  func dateByAddingTimeInterval(ti: NSTimeInterval) -> Self
  func earlierDate(anotherDate: NSDate) -> NSDate
  func laterDate(anotherDate: NSDate) -> NSDate
  func compare(other: NSDate) -> NSComparisonResult
  func isEqualToDate(otherDate: NSDate) -> Bool
  var description: String { get }
  func descriptionWithLocale(locale: AnyObject?) -> String
  class func timeIntervalSinceReferenceDate() -> NSTimeInterval
}
extension NSDate {
  class func distantFuture() -> NSDate
  class func distantPast() -> NSDate
  convenience init(timeIntervalSinceNow secs: NSTimeInterval)
  convenience init(timeIntervalSince1970 secs: NSTimeInterval)
  convenience init(timeInterval secsToBeAdded: NSTimeInterval, sinceDate date: NSDate)
}
