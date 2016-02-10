
@available(OSX 10.8, *)
class EKRecurrenceEnd : Object, Copying {
  convenience init(end endDate: Date)
  convenience init(occurrenceCount: Int)
  var endDate: Date? { get }
  var occurrenceCount: Int { get }
  init()
  @available(OSX 10.8, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
