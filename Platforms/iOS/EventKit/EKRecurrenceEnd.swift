
@available(iOS 4.0, *)
class EKRecurrenceEnd : NSObject, NSCopying {
  convenience init(endDate: NSDate)
  convenience init(occurrenceCount: Int)
  var endDate: NSDate? { get }
  var occurrenceCount: Int { get }
  init()
  @available(iOS 4.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
