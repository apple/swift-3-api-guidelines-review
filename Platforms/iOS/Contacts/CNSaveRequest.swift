
@available(iOS 9.0, *)
class CNSaveRequest : NSObject {
  func add(contact: CNMutableContact, toContainerWithIdentifier identifier: String?)
  func update(contact: CNMutableContact)
  func delete(contact: CNMutableContact)
  func add(group: CNMutableGroup, toContainerWithIdentifier identifier: String?)
  func update(group: CNMutableGroup)
  func delete(group: CNMutableGroup)
  func addMember(contact: CNContact, to group: CNGroup)
  func removeMember(contact: CNContact, from group: CNGroup)
  init()
}
