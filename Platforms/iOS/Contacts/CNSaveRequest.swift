
@available(iOS 9.0, *)
class CNSaveRequest : NSObject {
  func addContact(contact: CNMutableContact, toContainerWithIdentifier identifier: String?)
  func updateContact(contact: CNMutableContact)
  func deleteContact(contact: CNMutableContact)
  func addGroup(group: CNMutableGroup, toContainerWithIdentifier identifier: String?)
  func updateGroup(group: CNMutableGroup)
  func deleteGroup(group: CNMutableGroup)
  func addMember(contact: CNContact, toGroup group: CNGroup)
  func removeMember(contact: CNContact, fromGroup group: CNGroup)
  init()
}
