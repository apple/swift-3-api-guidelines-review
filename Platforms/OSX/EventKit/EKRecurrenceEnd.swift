
@available(OSX 10.8, *)
class EKRecurrenceEnd : NSObject, NSCopying {
  convenience init(endDate: NSDate)
  convenience init(occurrenceCount: Int)
  var endDate: NSDate? { get }
  var occurrenceCount: Int { get }
  init()
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
