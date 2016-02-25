
@available(OSX 10.6, *)
let NSSystemClockDidChangeNotification: String
typealias NSTimeInterval = Double
var NSTimeIntervalSince1970: Double { get }
class NSDate : NSObject, NSCopying, NSSecureCoding {
  var timeIntervalSinceReferenceDate: NSTimeInterval { get }
  init(timeIntervalSinceReferenceDate ti: NSTimeInterval)
  init?(coder aDecoder: NSCoder)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWithCoder(_ aCoder: NSCoder)
}

extension NSDate : CustomPlaygroundQuickLookable {
  var summary: String { get }
}
extension NSDate {
  func timeIntervalSinceDate(_ anotherDate: NSDate) -> NSTimeInterval
  var timeIntervalSinceNow: NSTimeInterval { get }
  var timeIntervalSince1970: NSTimeInterval { get }
  @available(OSX 10.6, *)
  func dateByAddingTimeInterval(_ ti: NSTimeInterval) -> Self
  func earlierDate(_ anotherDate: NSDate) -> NSDate
  func laterDate(_ anotherDate: NSDate) -> NSDate
  func compare(_ other: NSDate) -> NSComparisonResult
  func isEqualToDate(_ otherDate: NSDate) -> Bool
  func descriptionWithLocale(_ locale: AnyObject?) -> String
  class func timeIntervalSinceReferenceDate() -> NSTimeInterval
}
extension NSDate {
  class func distantFuture() -> NSDate
  class func distantPast() -> NSDate
  convenience init(timeIntervalSinceNow secs: NSTimeInterval)
  convenience init(timeIntervalSince1970 secs: NSTimeInterval)
  convenience init(timeInterval secsToBeAdded: NSTimeInterval, sinceDate date: NSDate)
}
