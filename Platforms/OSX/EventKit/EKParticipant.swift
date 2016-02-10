
@available(OSX 10.8, *)
class EKParticipant : EKObject, Copying {
  var url: URL { get }
  var name: String? { get }
  var participantStatus: EKParticipantStatus { get }
  var participantRole: EKParticipantRole { get }
  var participantType: EKParticipantType { get }
  @available(OSX 10.9, *)
  var isCurrentUser: Bool { get }
  @available(OSX 10.11, *)
  var contactPredicate: Predicate { get }
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use contactPredicate instead")
  func abPersonIn(addressBook: ABAddressBook) -> ABPerson?
  init()
  @available(OSX 10.8, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}
