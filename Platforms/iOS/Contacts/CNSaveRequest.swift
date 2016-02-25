
@available(iOS 9.0, *)
class CNSaveRequest : NSObject {
  func addContact(_ contact: CNMutableContact, toContainerWithIdentifier identifier: String?)
  func updateContact(_ contact: CNMutableContact)
  func deleteContact(_ contact: CNMutableContact)
  func addGroup(_ group: CNMutableGroup, toContainerWithIdentifier identifier: String?)
  func updateGroup(_ group: CNMutableGroup)
  func deleteGroup(_ group: CNMutableGroup)
  func addMember(_ contact: CNContact, toGroup group: CNGroup)
  func removeMember(_ contact: CNContact, fromGroup group: CNGroup)
}
