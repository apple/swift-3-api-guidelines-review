
@available(iOS 4.0, *)
class EKParticipant : EKObject, Copying {
  var url: URL { get }
  var name: String? { get }
  var participantStatus: EKParticipantStatus { get }
  var participantRole: EKParticipantRole { get }
  var participantType: EKParticipantType { get }
  @available(iOS 6.0, *)
  var isCurrentUser: Bool { get }
  @available(iOS 9.0, *)
  var contactPredicate: Predicate { get }
  @available(iOS, introduced=4.0, deprecated=9.0, message="Use contactPredicate instead")
  func abRecordWith(addressBook: ABAddressBook) -> ABRecord?
  init()
  @available(iOS 4.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
