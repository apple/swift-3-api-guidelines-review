
@available(iOS 4.0, *)
let systemClockDidChangeNotification: String
typealias TimeInterval = Double
var timeIntervalSince1970: Double { get }
class Date : Object, Copying, SecureCoding {
  var timeIntervalSinceReferenceDate: TimeInterval { get }
  init()
  init(timeIntervalSinceReferenceDate ti: TimeInterval)
  init?(coder aDecoder: Coder)
  func copyWith(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
}

extension Date : CustomPlaygroundQuickLookable {
  var summary: String { get }
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
extension Date {
  func timeIntervalSince(anotherDate: Date) -> TimeInterval
  var timeIntervalSinceNow: TimeInterval { get }
  var timeIntervalSince1970: TimeInterval { get }
  @available(iOS 2.0, *)
  func addingTimeInterval(ti: TimeInterval) -> Self
  func earlierDate(anotherDate: Date) -> Date
  func laterDate(anotherDate: Date) -> Date
  func compare(other: Date) -> ComparisonResult
  func isEqualTo(otherDate: Date) -> Bool
  var description: String { get }
  func descriptionWith(locale locale: AnyObject?) -> String
  class func timeIntervalSinceReferenceDate() -> TimeInterval
}
extension Date {
  class func distantFuture() -> Date
  class func distantPast() -> Date
  convenience init(timeIntervalSinceNow secs: TimeInterval)
  convenience init(timeIntervalSince1970 secs: TimeInterval)
  convenience init(timeInterval secsToBeAdded: TimeInterval, since date: Date)
}
