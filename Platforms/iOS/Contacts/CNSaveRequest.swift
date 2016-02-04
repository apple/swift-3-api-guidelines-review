
@available(iOS 9.0, *)
class CNSaveRequest : Object {
  func add(contact: CNMutableContact, toContainerWithIdentifier identifier: String?)
  func updateContact(contact: CNMutableContact)
  func delete(contact: CNMutableContact)
  func add(group: CNMutableGroup, toContainerWithIdentifier identifier: String?)
  func updateGroup(group: CNMutableGroup)
  func delete(group: CNMutableGroup)
  func addMember(contact: CNContact, to group: CNGroup)
  func removeMember(contact: CNContact, from group: CNGroup)
  init()
}
