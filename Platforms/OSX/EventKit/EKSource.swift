
@available(OSX 10.8, *)
class EKSource : EKObject {
  var sourceIdentifier: String { get }
  var sourceType: EKSourceType { get }
  var title: String { get }
  @available(OSX 10.8, *)
  func calendars(forEntityType entityType: EKEntityType) -> Set<EKCalendar>
  init()
}
