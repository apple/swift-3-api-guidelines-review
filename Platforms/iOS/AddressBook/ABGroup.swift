
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNGroup.name")
let kABGroupNameProperty: Int32
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[CNMutableGroup alloc] init]")
func ABGroupCreate() -> Unmanaged<ABRecord>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[CNMutableGroup alloc] init] and [CNSaveRequest addGroup:toContainerWithIdentifier:]")
func ABGroupCreateInSource(_ source: ABRecord!) -> Unmanaged<ABRecord>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore containersMatchingPredicate:[CNContainer predicateForContainerOfGroupWithIdentifier:] error:]")
func ABGroupCopySource(_ group: ABRecord!) -> Unmanaged<ABRecord>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContactFetchRequest with predicate = [CNContact predicateForContactsInGroupWithIdentifier:]")
func ABGroupCopyArrayOfAllMembers(_ group: ABRecord!) -> Unmanaged<CFArray>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContactFetchRequest with predicate = [CNContact predicateForContactsInGroupWithIdentifier:] and sortOrder")
func ABGroupCopyArrayOfAllMembersWithSortOrdering(_ group: ABRecord!, _ sortOrdering: ABPersonSortOrdering) -> Unmanaged<CFArray>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNSaveRequest addMember:toGroup:]")
func ABGroupAddMember(_ group: ABRecord!, _ person: ABRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNSaveRequest removeMember:fromGroup:]")
func ABGroupRemoveMember(_ group: ABRecord!, _ member: ABRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore groupsMatchingPredicate:[CNGroup predicateForGroupsWithIdentifiers:] error:]")
func ABAddressBookGetGroupWithRecordID(_ addressBook: ABAddressBook!, _ recordID: ABRecordID) -> Unmanaged<ABRecord>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use count of fetch results for [CNContactStore groupsMatchingPredicate:nil error:]")
func ABAddressBookGetGroupCount(_ addressBook: ABAddressBook!) -> CFIndex
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore groupsMatchingPredicate:nil error:]")
func ABAddressBookCopyArrayOfAllGroups(_ addressBook: ABAddressBook!) -> Unmanaged<CFArray>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore groupsMatchingPredicate:[CNGroup predicateForGroupsInContainerWithIdentifier:] error:]")
func ABAddressBookCopyArrayOfAllGroupsInSource(_ addressBook: ABAddressBook!, _ source: ABRecord!) -> Unmanaged<CFArray>!
