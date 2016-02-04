
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNGroup.name")
let kABGroupNameProperty: Int32
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[CNMutableGroup alloc] init]")
func ABGroupCreate() -> Unmanaged<ABRecord>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[CNMutableGroup alloc] init] and [CNSaveRequest addGroup:toContainerWithIdentifier:]")
func ABGroupCreateInSource(source: ABRecord!) -> Unmanaged<ABRecord>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore containersMatchingPredicate:[CNContainer predicateForContainerOfGroupWithIdentifier:] error:]")
func ABGroupCopySource(group: ABRecord!) -> Unmanaged<ABRecord>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContactFetchRequest with predicate = [CNContact predicateForContactsInGroupWithIdentifier:]")
func ABGroupCopyArrayOfAllMembers(group: ABRecord!) -> Unmanaged<CFArray>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContactFetchRequest with predicate = [CNContact predicateForContactsInGroupWithIdentifier:] and sortOrder")
func ABGroupCopyArrayOfAllMembersWithSortOrdering(group: ABRecord!, _ sortOrdering: ABPersonSortOrdering) -> Unmanaged<CFArray>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNSaveRequest addMember:toGroup:]")
func ABGroupAddMember(group: ABRecord!, _ person: ABRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNSaveRequest removeMember:fromGroup:]")
func ABGroupRemoveMember(group: ABRecord!, _ member: ABRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore groupsMatchingPredicate:[CNGroup predicateForGroupsWithIdentifiers:] error:]")
func ABAddressBookGetGroupWithRecordID(addressBook: ABAddressBook!, _ recordID: ABRecordID) -> Unmanaged<ABRecord>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use count of fetch results for [CNContactStore groupsMatchingPredicate:nil error:]")
func ABAddressBookGetGroupCount(addressBook: ABAddressBook!) -> CFIndex
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore groupsMatchingPredicate:nil error:]")
func ABAddressBookCopyArrayOfAllGroups(addressBook: ABAddressBook!) -> Unmanaged<CFArray>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore groupsMatchingPredicate:[CNGroup predicateForGroupsInContainerWithIdentifier:] error:]")
func ABAddressBookCopyArrayOfAllGroupsInSource(addressBook: ABAddressBook!, _ source: ABRecord!) -> Unmanaged<CFArray>!
