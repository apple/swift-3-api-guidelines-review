
@available(OSX 10.8, *)
class EKParticipant : EKObject, NSCopying {
  var URL: NSURL { get }
  var name: String? { get }
  var participantStatus: EKParticipantStatus { get }
  var participantRole: EKParticipantRole { get }
  var participantType: EKParticipantType { get }
  @available(OSX 10.9, *)
  var currentUser: Bool { get }
  @available(OSX 10.11, *)
  var contactPredicate: NSPredicate { get }
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use contactPredicate instead")
  func ABPersonInAddressBook(addressBook: ABAddressBook) -> ABPerson?
  init()
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
