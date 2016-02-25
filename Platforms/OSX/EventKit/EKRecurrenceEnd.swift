
@available(OSX 10.8, *)
class EKRecurrenceEnd : NSObject, NSCopying {
  convenience init(endDate endDate: NSDate)
  convenience init(occurrenceCount occurrenceCount: Int)
  var endDate: NSDate? { get }
  var occurrenceCount: Int { get }
  @available(OSX 10.8, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
}
