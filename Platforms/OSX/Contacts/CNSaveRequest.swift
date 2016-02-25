
@available(OSX 10.11, *)
class CNSaveRequest : NSObject {
  func addContact(_ contact: CNMutableContact, toContainerWithIdentifier identifier: String?)
  func updateContact(_ contact: CNMutableContact)
  func deleteContact(_ contact: CNMutableContact)
  func addGroup(_ group: CNMutableGroup, toContainerWithIdentifier identifier: String?)
  func updateGroup(_ group: CNMutableGroup)
  func deleteGroup(_ group: CNMutableGroup)
  @available(OSX 10.11, *)
  func addSubgroup(_ subgroup: CNGroup, toGroup group: CNGroup)
  @available(OSX 10.11, *)
  func removeSubgroup(_ subgroup: CNGroup, fromGroup group: CNGroup)
  func addMember(_ contact: CNContact, toGroup group: CNGroup)
  func removeMember(_ contact: CNContact, fromGroup group: CNGroup)
}
