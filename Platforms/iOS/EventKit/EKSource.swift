
@available(iOS 5.0, *)
class EKSource : EKObject {
  var sourceIdentifier: String { get }
  var sourceType: EKSourceType { get }
  var title: String { get }
  @available(iOS 6.0, *)
  func calendarsForEntityType(_ entityType: EKEntityType) -> Set<EKCalendar>
}
