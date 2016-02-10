
@available(watchOS 2.0, *)
class EKParticipant : EKObject, Copying {
  var url: URL { get }
  var name: String? { get }
  var participantStatus: EKParticipantStatus { get }
  var participantRole: EKParticipantRole { get }
  var participantType: EKParticipantType { get }
  @available(watchOS 2.0, *)
  var isCurrentUser: Bool { get }
  @available(watchOS 2.0, *)
  var contactPredicate: Predicate { get }
  init()
  @available(watchOS 2.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
