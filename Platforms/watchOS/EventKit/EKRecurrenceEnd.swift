
@available(watchOS 2.0, *)
class EKRecurrenceEnd : Object, Copying {
  convenience init(end endDate: Date)
  convenience init(occurrenceCount: Int)
  var endDate: Date? { get }
  var occurrenceCount: Int { get }
  init()
  @available(watchOS 2.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
