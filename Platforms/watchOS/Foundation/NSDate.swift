
@available(watchOS 2.0, *)
let NSSystemClockDidChangeNotification: String
typealias NSTimeInterval = Double
var NSTimeIntervalSince1970: Double { get }
class NSDate : NSObject, NSCopying, NSSecureCoding {
  var timeIntervalSinceReferenceDate: NSTimeInterval { get }
  init(timeIntervalSinceReferenceDate ti: NSTimeInterval)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
}

extension NSDate : CustomPlaygroundQuickLookable {
  var summary: String { get }
}
extension NSDate {
  func timeInterval(since anotherDate: NSDate) -> NSTimeInterval
  var timeIntervalSinceNow: NSTimeInterval { get }
  var timeIntervalSince1970: NSTimeInterval { get }
  @available(watchOS, introduced=2.0, deprecated=2.0)
  func addTimeInterval(_ seconds: NSTimeInterval) -> AnyObject
  @available(watchOS 2.0, *)
  func addingTimeInterval(_ ti: NSTimeInterval) -> Self
  func earlierDate(_ anotherDate: NSDate) -> NSDate
  func laterDate(_ anotherDate: NSDate) -> NSDate
  func compare(_ other: NSDate) -> NSComparisonResult
  func isEqual(to otherDate: NSDate) -> Bool
  func description(withLocale locale: AnyObject?) -> String
  class func timeIntervalSinceReferenceDate() -> NSTimeInterval
}
extension NSDate {
  class func distantFuture() -> NSDate
  class func distantPast() -> NSDate
  convenience init(timeIntervalSinceNow secs: NSTimeInterval)
  convenience init(timeIntervalSince1970 secs: NSTimeInterval)
  convenience init(timeInterval secsToBeAdded: NSTimeInterval, since date: NSDate)
}
