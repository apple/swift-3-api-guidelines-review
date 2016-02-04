
@available(OSX 10.11, *)
class CNSaveRequest : NSObject {
  func addContact(contact: CNMutableContact, toContainerWithIdentifier identifier: String?)
  func updateContact(contact: CNMutableContact)
  func deleteContact(contact: CNMutableContact)
  func addGroup(group: CNMutableGroup, toContainerWithIdentifier identifier: String?)
  func updateGroup(group: CNMutableGroup)
  func deleteGroup(group: CNMutableGroup)
  @available(OSX 10.11, *)
  func addSubgroup(subgroup: CNGroup, toGroup group: CNGroup)
  @available(OSX 10.11, *)
  func removeSubgroup(subgroup: CNGroup, fromGroup group: CNGroup)
  func addMember(contact: CNContact, toGroup group: CNGroup)
  func removeMember(contact: CNContact, fromGroup group: CNGroup)
  init()
}
