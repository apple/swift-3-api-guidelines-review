
@available(iOS 4.0, *)
class EKRecurrenceEnd : NSObject, NSCopying {
  convenience init(endDate endDate: NSDate)
  convenience init(occurrenceCount occurrenceCount: Int)
  var endDate: NSDate? { get }
  var occurrenceCount: Int { get }
  @available(iOS 4.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
