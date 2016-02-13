
@available(OSX 10.6, *)
let systemClockDidChangeNotification: String
typealias TimeInterval = Double
var timeIntervalSince1970: Double { get }
class Date : Object, Copying, SecureCoding {
  var timeIntervalSinceReferenceDate: TimeInterval { get }
  init()
  init(timeIntervalSinceReferenceDate ti: TimeInterval)
  init?(coder aDecoder: Coder)
  func copy(zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encode(aCoder: Coder)
}

extension Date : CustomPlaygroundQuickLookable {
  var summary: String { get }
  func customPlaygroundQuickLook() -> PlaygroundQuickLook
}
extension Date {
  func timeInterval(since anotherDate: Date) -> TimeInterval
  var timeIntervalSinceNow: TimeInterval { get }
  var timeIntervalSince1970: TimeInterval { get }
  @available(OSX 10.6, *)
  func addingTimeInterval(ti: TimeInterval) -> Self
  func earlierDate(anotherDate: Date) -> Date
  func laterDate(anotherDate: Date) -> Date
  func compare(other: Date) -> ComparisonResult
  func isEqual(to otherDate: Date) -> Bool
  var description: String { get }
  func description(locale locale: AnyObject?) -> String
  class func timeIntervalSinceReferenceDate() -> TimeInterval
}
extension Date {
  class func distantFuture() -> Date
  class func distantPast() -> Date
  convenience init(timeIntervalSinceNow secs: TimeInterval)
  convenience init(timeIntervalSince1970 secs: TimeInterval)
  convenience init(timeInterval secsToBeAdded: TimeInterval, since date: Date)
}
