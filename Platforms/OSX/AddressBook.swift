
var kABMultiValueMask: Int32 { get }
struct _ABPropertyType : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kABErrorInProperty: _ABPropertyType { get }
var kABStringProperty: _ABPropertyType { get }
var kABIntegerProperty: _ABPropertyType { get }
var kABRealProperty: _ABPropertyType { get }
var kABDateProperty: _ABPropertyType { get }
var kABArrayProperty: _ABPropertyType { get }
var kABDictionaryProperty: _ABPropertyType { get }
var kABDataProperty: _ABPropertyType { get }
var kABDateComponentsProperty: _ABPropertyType { get }
var kABMultiStringProperty: _ABPropertyType { get }
var kABMultiIntegerProperty: _ABPropertyType { get }
var kABMultiRealProperty: _ABPropertyType { get }
var kABMultiDateProperty: _ABPropertyType { get }
var kABMultiArrayProperty: _ABPropertyType { get }
var kABMultiDictionaryProperty: _ABPropertyType { get }
var kABMultiDataProperty: _ABPropertyType { get }
var kABMultiDateComponentsProperty: _ABPropertyType { get }
typealias ABPropertyType = CFIndex
struct _ABSearchComparison : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kABEqual: _ABSearchComparison { get }
var kABNotEqual: _ABSearchComparison { get }
var kABLessThan: _ABSearchComparison { get }
var kABLessThanOrEqual: _ABSearchComparison { get }
var kABGreaterThan: _ABSearchComparison { get }
var kABGreaterThanOrEqual: _ABSearchComparison { get }
var kABEqualCaseInsensitive: _ABSearchComparison { get }
var kABContainsSubString: _ABSearchComparison { get }
var kABContainsSubStringCaseInsensitive: _ABSearchComparison { get }
var kABPrefixMatch: _ABSearchComparison { get }
var kABPrefixMatchCaseInsensitive: _ABSearchComparison { get }
var kABBitsInBitFieldMatch: _ABSearchComparison { get }
var kABDoesNotContainSubString: _ABSearchComparison { get }
var kABDoesNotContainSubStringCaseInsensitive: _ABSearchComparison { get }
var kABNotEqualCaseInsensitive: _ABSearchComparison { get }
var kABSuffixMatch: _ABSearchComparison { get }
var kABSuffixMatchCaseInsensitive: _ABSearchComparison { get }
var kABWithinIntervalAroundToday: _ABSearchComparison { get }
var kABWithinIntervalAroundTodayYearless: _ABSearchComparison { get }
var kABNotWithinIntervalAroundToday: _ABSearchComparison { get }
var kABNotWithinIntervalAroundTodayYearless: _ABSearchComparison { get }
var kABWithinIntervalFromToday: _ABSearchComparison { get }
var kABWithinIntervalFromTodayYearless: _ABSearchComparison { get }
var kABNotWithinIntervalFromToday: _ABSearchComparison { get }
var kABNotWithinIntervalFromTodayYearless: _ABSearchComparison { get }
typealias ABSearchComparison = CFIndex
struct _ABSearchConjunction : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kABSearchAnd: _ABSearchConjunction { get }
var kABSearchOr: _ABSearchConjunction { get }
typealias ABSearchConjunction = CFIndex
typealias ABRecordRef = UnsafeMutablePointer<Void>
typealias ABPersonRef = ABPerson
class ABPerson {
}
typealias ABGroupRef = ABGroup
class ABGroup {
}
typealias ABSearchElementRef = ABSearchElement
class ABSearchElement {
}
typealias ABAddressBookRef = ABAddressBook
class ABAddressBook {
}
typealias ABMultiValueRef = ABMultiValue
class ABMultiValue {
}
class ABMutableMultiValue {
}
typealias ABMutableMultiValueRef = ABMutableMultiValue
func ABGetSharedAddressBook() -> Unmanaged<ABAddressBook>!
func ABCopyArrayOfMatchingRecords(addressBook: ABAddressBook!, _ search: ABSearchElement!) -> Unmanaged<CFArray>!
func ABSave(addressBook: ABAddressBook!) -> Bool
func ABHasUnsavedChanges(addressBook: ABAddressBook!) -> Bool
func ABGetMe(addressBook: ABAddressBook!) -> Unmanaged<ABPerson>!
func ABSetMe(addressBook: ABAddressBook!, _ moi: ABPerson!)
@available(OSX 10.3, *)
func ABCopyRecordTypeFromUniqueId(addressBook: ABAddressBook!, _ uniqueId: CFString!) -> Unmanaged<CFString>!
func ABAddPropertiesAndTypes(addressBook: ABAddressBook!, _ recordType: CFString!, _ propertiesAndTypes: CFDictionary!) -> CFIndex
func ABRemoveProperties(addressBook: ABAddressBook!, _ recordType: CFString!, _ properties: CFArray!) -> CFIndex
func ABCopyArrayOfPropertiesForRecordType(addressBook: ABAddressBook!, _ recordType: CFString!) -> Unmanaged<CFArray>!
func ABTypeOfProperty(addressBook: ABAddressBook!, _ recordType: CFString!, _ property: CFString!) -> ABPropertyType
func ABCopyRecordForUniqueId(addressBook: ABAddressBook!, _ uniqueId: CFString!) -> ABRecordRef
func ABAddRecord(addressBook: ABAddressBook!, _ record: ABRecordRef) -> Bool
func ABRemoveRecord(addressBook: ABAddressBook!, _ record: ABRecordRef) -> Bool
func ABCopyArrayOfAllPeople(addressBook: ABAddressBook!) -> Unmanaged<CFArray>!
func ABCopyArrayOfAllGroups(addressBook: ABAddressBook!) -> Unmanaged<CFArray>!
@available(OSX 10.4, *)
func ABRecordCreateCopy(record: ABRecordRef) -> ABRecordRef
func ABRecordCopyRecordType(record: ABRecordRef) -> Unmanaged<CFString>!
func ABRecordCopyValue(record: ABRecordRef, _ property: CFString!) -> Unmanaged<AnyObject>!
func ABRecordSetValue(record: ABRecordRef, _ property: CFString!, _ value: AnyObject!) -> Bool
func ABRecordRemoveValue(record: ABRecordRef, _ property: CFString!) -> Bool
@available(OSX 10.4, *)
func ABRecordIsReadOnly(record: ABRecordRef) -> Bool
func ABRecordCopyUniqueId(record: ABRecordRef) -> Unmanaged<CFString>!
func ABPersonCreate() -> Unmanaged<ABPerson>!
func ABPersonCreateWithVCardRepresentation(vCard: CFData!) -> Unmanaged<ABPerson>!
func ABPersonCopyVCardRepresentation(person: ABPerson!) -> Unmanaged<CFData>!
func ABPersonCopyParentGroups(person: ABPerson!) -> Unmanaged<CFArray>!
func ABPersonCreateSearchElement(property: CFString!, _ label: CFString!, _ key: CFString!, _ value: AnyObject!, _ comparison: ABSearchComparison) -> Unmanaged<ABSearchElement>!
func ABGroupCreate() -> Unmanaged<ABGroup>!
func ABGroupCopyArrayOfAllMembers(group: ABGroup!) -> Unmanaged<CFArray>!
func ABGroupAddMember(group: ABGroup!, _ personToAdd: ABPerson!) -> Bool
func ABGroupRemoveMember(group: ABGroup!, _ personToRemove: ABPerson!) -> Bool
func ABGroupCopyArrayOfAllSubgroups(group: ABGroup!) -> Unmanaged<CFArray>!
func ABGroupAddGroup(group: ABGroup!, _ groupToAdd: ABGroup!) -> Bool
func ABGroupRemoveGroup(group: ABGroup!, _ groupToRemove: ABGroup!) -> Bool
func ABGroupCopyParentGroups(group: ABGroup!) -> Unmanaged<CFArray>!
func ABGroupSetDistributionIdentifier(group: ABGroup!, _ person: ABPerson!, _ property: CFString!, _ identifier: CFString!) -> Bool
func ABGroupCopyDistributionIdentifier(group: ABGroup!, _ person: ABPerson!, _ property: CFString!) -> Unmanaged<CFString>!
func ABGroupCreateSearchElement(property: CFString!, _ label: CFString!, _ key: CFString!, _ value: AnyObject!, _ comparison: ABSearchComparison) -> Unmanaged<ABSearchElement>!
func ABSearchElementCreateWithConjunction(conjunction: ABSearchConjunction, _ childrenSearchElement: CFArray!) -> Unmanaged<ABSearchElement>!
func ABSearchElementMatchesRecord(searchElement: ABSearchElement!, _ record: ABRecordRef) -> Bool
func ABMultiValueCreate() -> Unmanaged<ABMultiValue>!
func ABMultiValueCount(multiValue: ABMultiValue!) -> CFIndex
func ABMultiValueCopyValueAtIndex(multiValue: ABMultiValue!, _ index: CFIndex) -> Unmanaged<AnyObject>!
func ABMultiValueCopyLabelAtIndex(multiValue: ABMultiValue!, _ index: CFIndex) -> Unmanaged<CFString>!
func ABMultiValueCopyPrimaryIdentifier(multiValue: ABMultiValue!) -> Unmanaged<CFString>!
func ABMultiValueIndexForIdentifier(multiValue: ABMultiValue!, _ identifier: CFString!) -> CFIndex
func ABMultiValueCopyIdentifierAtIndex(multiValue: ABMultiValue!, _ index: CFIndex) -> Unmanaged<CFString>!
func ABMultiValuePropertyType(multiValue: ABMultiValue!) -> ABPropertyType
func ABMultiValueCreateCopy(multiValue: ABMultiValue!) -> Unmanaged<ABMultiValue>!
func ABMultiValueCreateMutable() -> Unmanaged<ABMutableMultiValue>!
func ABMultiValueAdd(multiValue: ABMutableMultiValue!, _ value: AnyObject!, _ label: CFString!, _ outIdentifier: UnsafeMutablePointer<Unmanaged<CFString>?>) -> Bool
func ABMultiValueInsert(multiValue: ABMutableMultiValue!, _ value: AnyObject!, _ label: CFString!, _ index: CFIndex, _ outIdentifier: UnsafeMutablePointer<Unmanaged<CFString>?>) -> Bool
func ABMultiValueRemove(multiValue: ABMutableMultiValue!, _ index: CFIndex) -> Bool
func ABMultiValueReplaceValue(multiValue: ABMutableMultiValue!, _ value: AnyObject!, _ index: CFIndex) -> Bool
func ABMultiValueReplaceLabel(multiValue: ABMutableMultiValue!, _ label: CFString!, _ index: CFIndex) -> Bool
func ABMultiValueSetPrimaryIdentifier(multiValue: ABMutableMultiValue!, _ identifier: CFString!) -> Bool
func ABMultiValueCreateMutableCopy(multiValue: ABMultiValue!) -> Unmanaged<ABMutableMultiValue>!
func ABCopyLocalizedPropertyOrLabel(labelOrProperty: CFString!) -> Unmanaged<CFString>!
@available(OSX 10.3, *)
func ABCreateFormattedAddressFromDictionary(addressBook: ABAddressBook!, _ address: CFDictionary!) -> Unmanaged<CFString>!
@available(OSX 10.3, *)
func ABCopyDefaultCountryCode(addressBook: ABAddressBook!) -> Unmanaged<CFString>!
func ABPersonSetImageData(person: ABPerson!, _ imageData: CFData!) -> Bool
func ABPersonCopyImageData(person: ABPerson!) -> Unmanaged<CFData>!
typealias ABImageClientCallback = @convention(c) (CFData!, CFIndex, UnsafeMutablePointer<Void>) -> Void
func ABBeginLoadingImageDataForClient(person: ABPerson!, _ callback: ABImageClientCallback!, _ refcon: UnsafeMutablePointer<Void>) -> CFIndex
func ABCancelLoadingImageDataForTag(tag: CFIndex)
var ABAddRecordsError: Int { get }
var ABRemoveRecordsError: Int { get }
var ABPropertyValueValidationError: Int { get }
var ABPropertyUnsupportedBySourceError: Int { get }
var ABPropertyReadOnlyError: Int { get }
@available(OSX 10.7, *)
let ABAddressBookErrorDomain: String
@available(OSX 10.7, *)
let ABMultiValueIdentifiersErrorKey: String
class ABAddressBook : NSObject {
  class func shared() -> ABAddressBook!
  func recordsMatching(search: ABSearchElement!) -> [AnyObject]!
  func save() -> Bool
  @available(OSX 10.5, *)
  func saveAndReturnError() throws
  func hasUnsavedChanges() -> Bool
  func me() -> ABPerson!
  func setMe(moi: ABPerson!)
  func recordForUniqueId(uniqueId: String!) -> ABRecord!
  @available(OSX 10.7, *)
  func add(record: ABRecord!, error: ()) throws
  func add(record: ABRecord!) -> Bool
  @available(OSX 10.7, *)
  func remove(record: ABRecord!, error: ()) throws
  func remove(record: ABRecord!) -> Bool
  func people() -> [AnyObject]!
  func groups() -> [AnyObject]!
  @available(OSX 10.3, *)
  func recordClassFromUniqueId(uniqueId: String!) -> String!
  @available(OSX 10.3, *)
  func formattedAddressFrom(address: [NSObject : AnyObject]!) -> NSAttributedString!
  @available(OSX 10.3, *)
  func defaultCountryCode() -> String!
  @available(OSX 10.3, *)
  func defaultNameOrdering() -> Int
  init()
}
struct __ABBookflags {
  var hasUnsavedChanges: UInt32
  var readOnly: UInt32
  var importMe: UInt32
  var needConversion: UInt32
  var cleanedUp: UInt32
  var importTips: UInt32
  var restoreFromMetaData: UInt32
  var prefsNeedSync: UInt32
  var waitingForReset: UInt32
  var enforcesConstraints: UInt32
  var tracksAllSources: UInt32
  var _reserved: UInt32
  init()
  init(hasUnsavedChanges: UInt32, readOnly: UInt32, importMe: UInt32, needConversion: UInt32, cleanedUp: UInt32, importTips: UInt32, restoreFromMetaData: UInt32, prefsNeedSync: UInt32, waitingForReset: UInt32, enforcesConstraints: UInt32, tracksAllSources: UInt32, _reserved: UInt32)
}
let kABUIDProperty: String
let kABCreationDateProperty: String
let kABModificationDateProperty: String
let kABFirstNameProperty: String
let kABLastNameProperty: String
let kABFirstNamePhoneticProperty: String
let kABLastNamePhoneticProperty: String
let kABNicknameProperty: String
let kABMaidenNameProperty: String
let kABBirthdayProperty: String
@available(OSX 10.7, *)
let kABBirthdayComponentsProperty: String
let kABAlternateBirthdayComponentsProperty: String
let kABOrganizationProperty: String
let kABJobTitleProperty: String
let kABHomePageProperty: String
@available(OSX 10.4, *)
let kABURLsProperty: String
@available(OSX 10.4, *)
let kABHomePageLabel: String
@available(OSX 10.5, *)
let kABCalendarURIsProperty: String
let kABEmailProperty: String
let kABEmailWorkLabel: String
let kABEmailHomeLabel: String
let kABEmailMobileMeLabel: String
let kABAddressProperty: String
let kABAddressStreetKey: String
let kABAddressCityKey: String
let kABAddressStateKey: String
let kABAddressZIPKey: String
let kABAddressCountryKey: String
let kABAddressCountryCodeKey: String
let kABAddressHomeLabel: String
let kABAddressWorkLabel: String
@available(OSX 10.3, *)
let kABOtherDatesProperty: String
@available(OSX 10.7, *)
let kABOtherDateComponentsProperty: String
@available(OSX 10.3, *)
let kABAnniversaryLabel: String
@available(OSX 10.3, *)
let kABRelatedNamesProperty: String
@available(OSX 10.3, *)
let kABFatherLabel: String
@available(OSX 10.3, *)
let kABMotherLabel: String
@available(OSX 10.3, *)
let kABParentLabel: String
@available(OSX 10.3, *)
let kABBrotherLabel: String
@available(OSX 10.3, *)
let kABSisterLabel: String
@available(OSX 10.3, *)
let kABChildLabel: String
@available(OSX 10.3, *)
let kABFriendLabel: String
@available(OSX 10.3, *)
let kABSpouseLabel: String
@available(OSX 10.3, *)
let kABPartnerLabel: String
@available(OSX 10.3, *)
let kABAssistantLabel: String
@available(OSX 10.3, *)
let kABManagerLabel: String
@available(OSX 10.3, *)
let kABDepartmentProperty: String
@available(OSX 10.3, *)
let kABPersonFlags: String
var kABShowAsMask: Int32 { get }
var kABShowAsPerson: Int32 { get }
var kABShowAsCompany: Int32 { get }
var kABShowAsResource: Int32 { get }
var kABShowAsRoom: Int32 { get }
var kABNameOrderingMask: Int32 { get }
var kABDefaultNameOrdering: Int32 { get }
var kABFirstNameFirst: Int32 { get }
var kABLastNameFirst: Int32 { get }
let kABPhoneProperty: String
let kABPhoneWorkLabel: String
let kABPhoneHomeLabel: String
let kABPhoneiPhoneLabel: String
let kABPhoneMobileLabel: String
let kABPhoneMainLabel: String
let kABPhoneHomeFAXLabel: String
let kABPhoneWorkFAXLabel: String
let kABPhonePagerLabel: String
@available(OSX 10.7, *)
let kABInstantMessageProperty: String
@available(OSX 10.7, *)
let kABInstantMessageUsernameKey: String
@available(OSX 10.7, *)
let kABInstantMessageServiceKey: String
@available(OSX 10.7, *)
let kABInstantMessageServiceAIM: String
@available(OSX 10.7, *)
let kABInstantMessageServiceFacebook: String
@available(OSX 10.7, *)
let kABInstantMessageServiceGaduGadu: String
@available(OSX 10.7, *)
let kABInstantMessageServiceGoogleTalk: String
@available(OSX 10.7, *)
let kABInstantMessageServiceICQ: String
@available(OSX 10.7, *)
let kABInstantMessageServiceJabber: String
@available(OSX 10.7, *)
let kABInstantMessageServiceMSN: String
@available(OSX 10.7, *)
let kABInstantMessageServiceQQ: String
@available(OSX 10.7, *)
let kABInstantMessageServiceSkype: String
@available(OSX 10.7, *)
let kABInstantMessageServiceYahoo: String
@available(OSX 10.7, *)
let kABSocialProfileProperty: String
@available(OSX 10.7, *)
let kABSocialProfileURLKey: String
@available(OSX 10.7, *)
let kABSocialProfileUsernameKey: String
@available(OSX 10.7, *)
let kABSocialProfileUserIdentifierKey: String
@available(OSX 10.7, *)
let kABSocialProfileServiceKey: String
@available(OSX 10.7, *)
let kABSocialProfileServiceTwitter: String
@available(OSX 10.7, *)
let kABSocialProfileServiceFacebook: String
@available(OSX 10.7, *)
let kABSocialProfileServiceLinkedIn: String
@available(OSX 10.7, *)
let kABSocialProfileServiceFlickr: String
@available(OSX 10.7, *)
let kABSocialProfileServiceMySpace: String
@available(OSX 10.8, *)
let kABSocialProfileServiceSinaWeibo: String
@available(OSX 10.9, *)
let kABSocialProfileServiceTencentWeibo: String
@available(OSX 10.9, *)
let kABSocialProfileServiceYelp: String
let kABNoteProperty: String
let kABMiddleNameProperty: String
let kABMiddleNamePhoneticProperty: String
let kABTitleProperty: String
let kABSuffixProperty: String
let kABGroupNameProperty: String
let kABWorkLabel: String
let kABHomeLabel: String
let kABOtherLabel: String
@available(OSX 10.7, *)
let kABMobileMeLabel: String
let kABDatabaseChangedNotification: String
let kABDatabaseChangedExternallyNotification: String
@available(OSX 10.3, *)
let kABInsertedRecords: String
@available(OSX 10.3, *)
let kABUpdatedRecords: String
@available(OSX 10.3, *)
let kABDeletedRecords: String
func ABLocalizedPropertyOrLabel(propertyOrLabel: String!) -> String!
class ABGroup : ABRecord {
  func members() -> [AnyObject]!
  func addMember(person: ABPerson!) -> Bool
  func removeMember(person: ABPerson!) -> Bool
  func subgroups() -> [AnyObject]!
  func addSubgroup(group: ABGroup!) -> Bool
  func removeSubgroup(group: ABGroup!) -> Bool
  func parentGroups() -> [AnyObject]!
  func setDistributionIdentifier(identifier: String!, forProperty property: String!, person: ABPerson!) -> Bool
  func distributionIdentifierForProperty(property: String!, person: ABPerson!) -> String!
  init!()
  @available(OSX 10.5, *)
  init!(addressBook: ABAddressBook!)
}
extension ABGroup {
  class func addPropertiesAndTypes(properties: [NSObject : AnyObject]!) -> Int
  class func removeProperties(properties: [AnyObject]!) -> Int
  class func properties() -> [AnyObject]!
  class func typeOfProperty(property: String!) -> ABPropertyType
}
extension ABGroup {
  class func searchElementForProperty(property: String!, label: String!, key: String!, value: AnyObject!, comparison: ABSearchComparison) -> ABSearchElement!
}
protocol ABImageClient : NSObjectProtocol {
  func consumeImageData(data: NSData!, forTag tag: Int)
}
extension ABPerson {
  func setImageData(data: NSData!) -> Bool
  func imageData() -> NSData!
  func beginLoadingImageDataFor(client: ABImageClient!) -> Int
  class func cancelLoadingImageDataForTag(tag: Int)
}
class ABMultiValue : NSObject, NSCopying, NSMutableCopying, NSFastEnumeration {
  func count() -> Int
  func valueAt(index: Int) -> AnyObject!
  func labelAt(index: Int) -> String!
  func identifierAt(index: Int) -> String!
  func indexForIdentifier(identifier: String!) -> Int
  func primaryIdentifier() -> String!
  func propertyType() -> ABPropertyType
  func valueForIdentifier(identifier: String!) -> AnyObject!
  func labelForIdentifier(identifier: String!) -> AnyObject!
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  func countByEnumeratingWith(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
class ABMutableMultiValue : ABMultiValue {
  func add(value: AnyObject!, withLabel label: String!) -> String!
  func insert(value: AnyObject!, withLabel label: String!, at index: Int) -> String!
  func removeAndLabelAt(index: Int) -> Bool
  func replaceAt(index: Int, withValue value: AnyObject!) -> Bool
  func replaceLabelAt(index: Int, withLabel label: String!) -> Bool
  func setPrimaryIdentifier(identifier: String!) -> Bool
  init()
}
class ABPerson : ABRecord {
  func parentGroups() -> [AnyObject]!
  @available(OSX 10.8, *)
  func linkedPeople() -> [AnyObject]!
  init!()
  @available(OSX 10.5, *)
  init!(addressBook: ABAddressBook!)
}
extension ABPerson {
  class func addPropertiesAndTypes(properties: [NSObject : AnyObject]!) -> Int
  class func removeProperties(properties: [AnyObject]!) -> Int
  class func properties() -> [AnyObject]!
  class func typeOfProperty(property: String!) -> ABPropertyType
}
extension ABPerson {
  class func searchElementForProperty(property: String!, label: String!, key: String!, value: AnyObject!, comparison: ABSearchComparison) -> ABSearchElement!
}
extension ABPerson {
  init!(vCardRepresentation vCardData: NSData!)
  func vCardRepresentation() -> NSData!
}
class ABRecord : NSObject {
  init!()
  @available(OSX 10.5, *)
  init!(addressBook: ABAddressBook!)
  func valueForProperty(property: String!) -> AnyObject!
  @available(OSX 10.7, *)
  func setValue(value: AnyObject!, forProperty property: String!, error: ()) throws
  func setValue(value: AnyObject!, forProperty property: String!) -> Bool
  func removeValueForProperty(property: String!) -> Bool
  @available(OSX 10.4, *)
  func isReadOnly() -> Bool
}
extension ABRecord {
  var uniqueId: String! { get }
  @available(OSX 10.10, *)
  var displayName: String! { get }
}
class ABSearchElement : NSObject {
  /*not inherited*/ init!(forConjunction conjuction: ABSearchConjunction, children: [AnyObject]!)
  func matchesRecord(record: ABRecord!) -> Bool
  init()
}
