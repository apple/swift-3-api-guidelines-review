
@available(iOS 4.0, *)
class EKRecurrenceEnd : Object, Copying {
  convenience init(end endDate: Date)
  convenience init(occurrenceCount: Int)
  var endDate: Date? { get }
  var occurrenceCount: Int { get }
  init()
  @available(iOS 4.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
}
