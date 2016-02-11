
@available(OSX 10.11, *)
class CNSaveRequest : Object {
  func add(contact: CNMutableContact, toContainerWithIdentifier identifier: String?)
  func update(contact: CNMutableContact)
  func delete(contact: CNMutableContact)
  func add(group: CNMutableGroup, toContainerWithIdentifier identifier: String?)
  func update(group: CNMutableGroup)
  func delete(group: CNMutableGroup)
  @available(OSX 10.11, *)
  func addSubgroup(subgroup: CNGroup, to group: CNGroup)
  @available(OSX 10.11, *)
  func removeSubgroup(subgroup: CNGroup, from group: CNGroup)
  func addMember(contact: CNContact, to group: CNGroup)
  func removeMember(contact: CNContact, from group: CNGroup)
  init()
}
