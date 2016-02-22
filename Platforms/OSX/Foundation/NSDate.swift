
@available(OSX 10.6, *)
let NSSystemClockDidChangeNotification: String
typealias NSTimeInterval = Double
var NSTimeIntervalSince1970: Double { get }
class NSDate : NSObject, NSCopying, NSSecureCoding {
  var timeIntervalSinceReferenceDate: NSTimeInterval { get }
  init()
  init(timeIntervalSinceReferenceDate ti: NSTimeInterval)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(with aCoder: NSCoder)
}

extension NSDate : CustomPlaygroundQuickLookable {
  var summary: String { get }
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
extension NSDate {
  func timeInterval(since anotherDate: NSDate) -> NSTimeInterval
  var timeIntervalSinceNow: NSTimeInterval { get }
  var timeIntervalSince1970: NSTimeInterval { get }
  @available(OSX 10.6, *)
  func addingTimeInterval(ti: NSTimeInterval) -> Self
  func earlierDate(anotherDate: NSDate) -> NSDate
  func laterDate(anotherDate: NSDate) -> NSDate
  func compare(other: NSDate) -> NSComparisonResult
  func isEqual(to otherDate: NSDate) -> Bool
  var description: String { get }
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
