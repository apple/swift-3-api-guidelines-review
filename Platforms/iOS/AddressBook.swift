
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNErrorDomain")
let ABAddressBookErrorDomain: CFString!
var kABOperationNotPermittedByStoreError: Int { get }
var kABOperationNotPermittedByUserError: Int { get }
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContactStore")
typealias ABAddressBookRef = ABAddressBook
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNAuthorizationStatus")
enum ABAuthorizationStatus : CFIndex {
  init?(rawValue: CFIndex)
  var rawValue: CFIndex { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore authorizationStatusForEntityType:]")
func ABAddressBookGetAuthorizationStatus() -> ABAuthorizationStatus
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[CNContactStore alloc] init]")
func ABAddressBookCreateWithOptions(options: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ABAddressBook>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[CNContactStore alloc] init]")
func ABAddressBookCreate() -> Unmanaged<ABAddressBook>!
@available(iOS, introduced=2.0, deprecated=9.0)
typealias ABAddressBookRequestAccessCompletionHandler = (Bool, CFError!) -> Void
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore requestAccessForEntityType:completionHandler:]")
func ABAddressBookRequestAccessWithCompletion(addressBook: ABAddressBook!, _ completion: ABAddressBookRequestAccessCompletionHandler!)
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore executeSaveRequest:error:]")
func ABAddressBookSave(addressBook: ABAddressBook!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0)
func ABAddressBookHasUnsavedChanges(addressBook: ABAddressBook!) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNSaveRequest")
func ABAddressBookAddRecord(addressBook: ABAddressBook!, _ record: ABRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNSaveRequest")
func ABAddressBookRemoveRecord(addressBook: ABAddressBook!, _ record: ABRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNLabeledValue localizedStringForLabel:]")
func ABAddressBookCopyLocalizedLabel(label: CFString!) -> Unmanaged<CFString>!
@available(iOS, introduced=2.0, deprecated=9.0)
typealias ABExternalChangeCallback = @convention(c) (ABAddressBook!, CFDictionary!, UnsafeMutablePointer<Void>) -> Void
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContactStoreDidChangeNotification")
func ABAddressBookRegisterExternalChangeCallback(addressBook: ABAddressBook!, _ callback: ABExternalChangeCallback!, _ context: UnsafeMutablePointer<Void>)
@available(iOS, introduced=2.0, deprecated=9.0)
func ABAddressBookUnregisterExternalChangeCallback(addressBook: ABAddressBook!, _ callback: ABExternalChangeCallback!, _ context: UnsafeMutablePointer<Void>)
@available(iOS, introduced=2.0, deprecated=9.0, message="refetch CN objects")
func ABAddressBookRevert(addressBook: ABAddressBook!)
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
@available(iOS, introduced=2.0, deprecated=9.0, message="use NSArray of CNLabeledValue")
typealias ABMultiValueRef = ABMultiValue
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabeledValue.identifier")
typealias ABMultiValueIdentifier = Int32
var kABMultiValueInvalidIdentifier: Int32 { get }
@available(iOS, introduced=2.0, deprecated=9.0)
func ABMultiValueGetPropertyType(multiValue: ABMultiValue!) -> ABPropertyType
@available(iOS, introduced=2.0, deprecated=9.0, message="use NSArray.count with the labeled value property")
func ABMultiValueGetCount(multiValue: ABMultiValue!) -> CFIndex
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[NSArray objectAtIndex:] value] with the labeled value property")
func ABMultiValueCopyValueAtIndex(multiValue: ABMultiValue!, _ index: CFIndex) -> Unmanaged<AnyObject>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSArray enumerateObjectsUsingBlock:] with the labeled value property and collect the values")
func ABMultiValueCopyArrayOfAllValues(multiValue: ABMultiValue!) -> Unmanaged<CFArray>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[NSArray objectAtIndex:] label] with the labeled value property")
func ABMultiValueCopyLabelAtIndex(multiValue: ABMultiValue!, _ index: CFIndex) -> Unmanaged<CFString>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSArray indexOfObjectPassingTest:] with the labeled value property and find the identifier")
func ABMultiValueGetIndexForIdentifier(multiValue: ABMultiValue!, _ identifier: ABMultiValueIdentifier) -> CFIndex
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[NSArray objectAtIndex:] identifier] with the labeled value property")
func ABMultiValueGetIdentifierAtIndex(multiValue: ABMultiValue!, _ index: CFIndex) -> ABMultiValueIdentifier
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSArray indexOfObjectPassingTest:] with the labeled value property and find the value")
func ABMultiValueGetFirstIndexOfValue(multiValue: ABMultiValue!, _ value: AnyObject!) -> CFIndex
@available(iOS, introduced=2.0, deprecated=9.0, message="use NSMutableArray of CNLabeledValue")
typealias ABMutableMultiValueRef = ABMutableMultiValue
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[NSMutableArray alloc] init]")
func ABMultiValueCreateMutable(type: ABPropertyType) -> Unmanaged<ABMutableMultiValue>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSArray mutableCopy]")
func ABMultiValueCreateMutableCopy(multiValue: ABMultiValue!) -> Unmanaged<ABMutableMultiValue>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSMutableArray addObject:[CNLabeledValue labeledValueWithLabel:value:]]")
func ABMultiValueAddValueAndLabel(multiValue: ABMutableMultiValue!, _ value: AnyObject!, _ label: CFString!, _ outIdentifier: UnsafeMutablePointer<ABMultiValueIdentifier>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSMutableArray insertObject:[CNLabeledValue labeledValueWithLabel:value:] atIndex:]")
func ABMultiValueInsertValueAndLabelAtIndex(multiValue: ABMutableMultiValue!, _ value: AnyObject!, _ label: CFString!, _ index: CFIndex, _ outIdentifier: UnsafeMutablePointer<ABMultiValueIdentifier>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSMutableArray removeObjectAtIndex:]")
func ABMultiValueRemoveValueAndLabelAtIndex(multiValue: ABMutableMultiValue!, _ index: CFIndex) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSMutableArray replaceObjectAtIndex: withObject:[CNLabeledValue labeledValueBySettingValue:]]")
func ABMultiValueReplaceValueAtIndex(multiValue: ABMutableMultiValue!, _ value: AnyObject!, _ index: CFIndex) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use [NSMutableArray replaceObjectAtIndex: withObject:[CNLabeledValue labeledValueBySettingLabel:]]")
func ABMultiValueReplaceLabelAtIndex(multiValue: ABMutableMultiValue!, _ label: CFString!, _ index: CFIndex) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[CNMutableContact alloc] init]")
func ABPersonCreate() -> Unmanaged<ABRecord>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[CNMutableContact alloc] init] and [CNSaveRequest addContact:toContainerWithIdentifier:]")
func ABPersonCreateInSource(source: ABRecord!) -> Unmanaged<ABRecord>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore containersMatchingPredicate:[CNContainer predicateForContainerOfContactWithIdentifier:] error:]")
func ABPersonCopySource(person: ABRecord!) -> Unmanaged<ABRecord>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContactFetchRequest with predicate = [CNContact predicateForContactsLinkedToContact:] and unifyResults = NO")
func ABPersonCopyArrayOfAllLinkedPeople(person: ABRecord!) -> Unmanaged<CFArray>!
@available(iOS, introduced=2.0, deprecated=9.0)
func ABPersonGetTypeOfProperty(property: ABPropertyID) -> ABPropertyType
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContact localizedStringForKey:]")
func ABPersonCopyLocalizedPropertyName(property: ABPropertyID) -> Unmanaged<CFString>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContactSortOrder")
typealias ABPersonSortOrdering = UInt32
var kABPersonSortByFirstName: Int { get }
var kABPersonSortByLastName: Int { get }
@available(iOS, introduced=2.0, deprecated=9.0, message="use [[CNContactsUserDefaults sharedDefaults] sortOrder]")
func ABPersonGetSortOrdering() -> ABPersonSortOrdering
@available(iOS, introduced=2.0, deprecated=9.0)
typealias ABPersonCompositeNameFormat = UInt32
var kABPersonCompositeNameFormatFirstNameFirst: Int { get }
var kABPersonCompositeNameFormatLastNameFirst: Int { get }
@available(iOS, introduced=2.0, deprecated=9.0)
func ABPersonGetCompositeNameFormat() -> ABPersonCompositeNameFormat
@available(iOS, introduced=2.0, deprecated=9.0)
func ABPersonGetCompositeNameFormatForRecord(record: ABRecord!) -> ABPersonCompositeNameFormat
@available(iOS, introduced=2.0, deprecated=9.0)
func ABPersonCopyCompositeNameDelimiterForRecord(record: ABRecord!) -> Unmanaged<CFString>!
@available(iOS, introduced=2.0, deprecated=9.0)
struct ABPersonImageFormat : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kABPersonImageFormatThumbnail: ABPersonImageFormat { get }
var kABPersonImageFormatOriginalSize: ABPersonImageFormat { get }
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNMutableContact.imageData")
func ABPersonSetImageData(person: ABRecord!, _ imageData: CFData!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.imageData")
func ABPersonCopyImageData(person: ABRecord!) -> Unmanaged<CFData>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.imageData or CNContact.thumbnailImageData")
func ABPersonCopyImageDataWithFormat(person: ABRecord!, _ format: ABPersonImageFormat) -> Unmanaged<CFData>!
@available(iOS, introduced=2.0, deprecated=9.0)
func ABPersonHasImageData(person: ABRecord!) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNMutableContact.imageData = nil")
func ABPersonRemoveImageData(person: ABRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContact comparatorForNameSortOrder:]")
func ABPersonComparePeopleByName(person1: ABRecord!, _ person2: ABRecord!, _ ordering: ABPersonSortOrdering) -> CFComparisonResult
@available(iOS, introduced=2.0, deprecated=9.0, message="use count of fetch results for CNContactFetchRequest with predicate = nil")
func ABAddressBookGetPersonCount(addressBook: ABAddressBook!) -> CFIndex
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore unifiedContactWithIdentifier:keysToFetch:error:]")
func ABAddressBookGetPersonWithRecordID(addressBook: ABAddressBook!, _ recordID: ABRecordID) -> Unmanaged<ABRecord>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContactFetchRequest with predicate = nil")
func ABAddressBookCopyArrayOfAllPeople(addressBook: ABAddressBook!) -> Unmanaged<CFArray>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContactFetchRequest with predicate = [CNContact predicateForContactsInContainerWithIdentifier:] and unifyResults = NO")
func ABAddressBookCopyArrayOfAllPeopleInSource(addressBook: ABAddressBook!, _ source: ABRecord!) -> Unmanaged<CFArray>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContactFetchRequest with predicate = [CNContact predicateForContactsInContainerWithIdentifier:] and unifyResults = NO and sortOrder")
func ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering(addressBook: ABAddressBook!, _ source: ABRecord!, _ sortOrdering: ABPersonSortOrdering) -> Unmanaged<CFArray>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore unifiedContactsMatchingPredicate:[CNContact predicateForContactsMatchingName:] keysToFetch: error:]")
func ABAddressBookCopyPeopleWithName(addressBook: ABAddressBook!, _ name: CFString!) -> Unmanaged<CFArray>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactVCardSerialization contactsWithData:error:]")
func ABPersonCreatePeopleInSourceWithVCardRepresentation(source: ABRecord!, _ vCardData: CFData!) -> Unmanaged<CFArray>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactVCardSerialization dataWithContacts:error:]")
func ABPersonCreateVCardRepresentationWithPeople(people: CFArray!) -> Unmanaged<CFData>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelWork")
let kABWorkLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelHome")
let kABHomeLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelOther")
let kABOtherLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.givenName")
let kABPersonFirstNameProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.familyName")
let kABPersonLastNameProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.middleName")
let kABPersonMiddleNameProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.namePrefix")
let kABPersonPrefixProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.nameSuffix")
let kABPersonSuffixProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.nickname")
let kABPersonNicknameProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.phoneticGivenName")
let kABPersonFirstNamePhoneticProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.phoneticFamilyName")
let kABPersonLastNamePhoneticProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.phoneticMiddleName")
let kABPersonMiddleNamePhoneticProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.organizationName")
let kABPersonOrganizationProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.departmentName")
let kABPersonDepartmentProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.jobTitle")
let kABPersonJobTitleProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.emailAddresses")
let kABPersonEmailProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.birthday")
let kABPersonBirthdayProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.note")
let kABPersonNoteProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0)
let kABPersonCreationDateProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0)
let kABPersonModificationDateProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.postalAddresses")
let kABPersonAddressProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNPostalAddress.street")
let kABPersonAddressStreetKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNPostalAddress.city")
let kABPersonAddressCityKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNPostalAddress.state")
let kABPersonAddressStateKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNPostalAddress.postalCode")
let kABPersonAddressZIPKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNPostalAddress.country")
let kABPersonAddressCountryKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNPostalAddress.ISOCountryCode")
let kABPersonAddressCountryCodeKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.dates")
let kABPersonDateProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelDateAnniversary")
let kABPersonAnniversaryLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.contactType")
let kABPersonKindProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContactTypePerson")
let kABPersonKindPerson: CFNumber!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContactTypeOrganization")
let kABPersonKindOrganization: CFNumber!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.phoneNumbers")
let kABPersonPhoneProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelPhoneNumberMobile")
let kABPersonPhoneMobileLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelPhoneNumberiPhone")
let kABPersonPhoneIPhoneLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelPhoneNumberMain")
let kABPersonPhoneMainLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelPhoneNumberHomeFax")
let kABPersonPhoneHomeFAXLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelPhoneNumberWorkFax")
let kABPersonPhoneWorkFAXLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelPhoneNumberOtherFax")
let kABPersonPhoneOtherFAXLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelPhoneNumberPager")
let kABPersonPhonePagerLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.instantMessageAddresses")
let kABPersonInstantMessageProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNInstantMessageAddress.service")
let kABPersonInstantMessageServiceKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNInstantMessageServiceYahoo")
let kABPersonInstantMessageServiceYahoo: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNInstantMessageServiceJabber")
let kABPersonInstantMessageServiceJabber: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNInstantMessageServiceMSN")
let kABPersonInstantMessageServiceMSN: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNInstantMessageServiceICQ")
let kABPersonInstantMessageServiceICQ: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNInstantMessageServiceAIM")
let kABPersonInstantMessageServiceAIM: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNInstantMessageServiceQQ")
let kABPersonInstantMessageServiceQQ: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNInstantMessageServiceGoogleTalk")
let kABPersonInstantMessageServiceGoogleTalk: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNInstantMessageServiceSkype")
let kABPersonInstantMessageServiceSkype: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNInstantMessageServiceFacebook")
let kABPersonInstantMessageServiceFacebook: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNInstantMessageServiceGaduGadu")
let kABPersonInstantMessageServiceGaduGadu: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNInstantMessageAddress.username")
let kABPersonInstantMessageUsernameKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.urlAddresses")
let kABPersonURLProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelURLAddressHomePage")
let kABPersonHomePageLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.contactRelations")
let kABPersonRelatedNamesProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelContactRelationFather")
let kABPersonFatherLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelContactRelationMother")
let kABPersonMotherLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelContactRelationParent")
let kABPersonParentLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelContactRelationBrother")
let kABPersonBrotherLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelContactRelationSister")
let kABPersonSisterLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelContactRelationChild")
let kABPersonChildLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelContactRelationFriend")
let kABPersonFriendLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelContactRelationSpouse")
let kABPersonSpouseLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelContactRelationPartner")
let kABPersonPartnerLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelContactRelationAssistant")
let kABPersonAssistantLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNLabelContactRelationManager")
let kABPersonManagerLabel: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.socialProfiles")
let kABPersonSocialProfileProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNSocialProfile.urlString")
let kABPersonSocialProfileURLKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNSocialProfile.service")
let kABPersonSocialProfileServiceKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNSocialProfile.username")
let kABPersonSocialProfileUsernameKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNSocialProfile.userIdentifier")
let kABPersonSocialProfileUserIdentifierKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNSocialProfileServiceTwitter")
let kABPersonSocialProfileServiceTwitter: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNSocialProfileServiceSinaWeibo")
let kABPersonSocialProfileServiceSinaWeibo: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNSocialProfileServiceGameCenter")
let kABPersonSocialProfileServiceGameCenter: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNSocialProfileServiceFacebook")
let kABPersonSocialProfileServiceFacebook: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNSocialProfileServiceMySpace")
let kABPersonSocialProfileServiceMyspace: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNSocialProfileServiceLinkedIn")
let kABPersonSocialProfileServiceLinkedIn: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNSocialProfileServiceFlickr")
let kABPersonSocialProfileServiceFlickr: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact.nonGregorianBirthday")
let kABPersonAlternateBirthdayProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use NSDateComponents.calendar")
let kABPersonAlternateBirthdayCalendarIdentifierKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use NSDateComponents.era")
let kABPersonAlternateBirthdayEraKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use NSDateComponents.year")
let kABPersonAlternateBirthdayYearKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use NSDateComponents.month")
let kABPersonAlternateBirthdayMonthKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use NSDateComponents.isLeapMonth")
let kABPersonAlternateBirthdayIsLeapMonthKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use NSDateComponents.day")
let kABPersonAlternateBirthdayDayKey: CFString!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContact, CNGroup, or CNContainer")
typealias ABRecordRef = ABRecord
@available(iOS, introduced=2.0, deprecated=9.0, message="use CN object's identifier")
typealias ABRecordID = Int32
@available(iOS, introduced=2.0, deprecated=9.0)
typealias ABPropertyID = Int32
@available(iOS, introduced=2.0, deprecated=9.0)
typealias ABRecordType = UInt32
var kABPersonType: Int { get }
var kABGroupType: Int { get }
var kABSourceType: Int { get }
var kABMultiValueMask: Int32 { get }
var kABRecordInvalidID: Int32 { get }
var kABPropertyInvalidID: Int32 { get }
@available(iOS, introduced=2.0, deprecated=9.0)
typealias ABPropertyType = UInt32
var kABInvalidPropertyType: Int { get }
var kABStringPropertyType: Int { get }
var kABIntegerPropertyType: Int { get }
var kABRealPropertyType: Int { get }
var kABDateTimePropertyType: Int { get }
var kABDictionaryPropertyType: Int { get }
var kABMultiStringPropertyType: Int { get }
var kABMultiIntegerPropertyType: Int { get }
var kABMultiRealPropertyType: Int { get }
var kABMultiDateTimePropertyType: Int { get }
var kABMultiDictionaryPropertyType: Int { get }
@available(iOS, introduced=2.0, deprecated=9.0, message="use CN object's identifier")
func ABRecordGetRecordID(record: ABRecord!) -> ABRecordID
@available(iOS, introduced=2.0, deprecated=9.0)
func ABRecordGetRecordType(record: ABRecord!) -> ABRecordType
@available(iOS, introduced=2.0, deprecated=9.0, message="use CN object's properties")
func ABRecordCopyValue(record: ABRecord!, _ property: ABPropertyID) -> Unmanaged<AnyObject>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use CN mutable object's properties")
func ABRecordSetValue(record: ABRecord!, _ property: ABPropertyID, _ value: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use CN mutable object's properties, setting to @, @[], or nil")
func ABRecordRemoveValue(record: ABRecord!, _ property: ABPropertyID, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContactFormatter or CN object's name")
func ABRecordCopyCompositeName(record: ABRecord!) -> Unmanaged<CFString>!
var kABSourceTypeSearchableMask: Int32 { get }
var kABSourceTypeLocal: Int { get }
var kABSourceTypeExchange: Int { get }
var kABSourceTypeExchangeGAL: Int { get }
var kABSourceTypeMobileMe: Int { get }
var kABSourceTypeLDAP: Int { get }
var kABSourceTypeCardDAV: Int { get }
var kABSourceTypeCardDAVSearch: Int { get }
@available(iOS, introduced=2.0, deprecated=9.0)
typealias ABSourceType = Int32
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContainer.name")
let kABSourceNameProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use CNContainer.type")
let kABSourceTypeProperty: ABPropertyID
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore containersMatchingPredicate:[CNContainer predicateForContainersWithIdentifiers: @[CNContactStore.defaultContainerIdentifier]] error:]")
func ABAddressBookCopyDefaultSource(addressBook: ABAddressBook!) -> Unmanaged<ABRecord>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore containersMatchingPredicate:[CNContainer predicateForContainersWithIdentifiers:] error:]")
func ABAddressBookGetSourceWithRecordID(addressBook: ABAddressBook!, _ sourceID: ABRecordID) -> Unmanaged<ABRecord>!
@available(iOS, introduced=2.0, deprecated=9.0, message="use [CNContactStore containersMatchingPredicate:nil error:]")
func ABAddressBookCopyArrayOfAllSources(addressBook: ABAddressBook!) -> Unmanaged<CFArray>!
