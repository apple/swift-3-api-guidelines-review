
@available(OSX 10.11, *)
enum CNContactType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Person
  case Organization
}
@available(OSX 10.11, *)
enum CNContactSortOrder : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case UserDefault
  case GivenName
  case FamilyName
}
protocol CNKeyDescriptor : NSObjectProtocol, NSSecureCoding, NSCopying {
}
extension NSString : CNKeyDescriptor {
}
@available(OSX 10.11, *)
class CNContact : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var identifier: String { get }
  var contactType: CNContactType { get }
  var namePrefix: String { get }
  var givenName: String { get }
  var middleName: String { get }
  var familyName: String { get }
  var previousFamilyName: String { get }
  var nameSuffix: String { get }
  var nickname: String { get }
  var phoneticGivenName: String { get }
  var phoneticMiddleName: String { get }
  var phoneticFamilyName: String { get }
  var organizationName: String { get }
  var departmentName: String { get }
  var jobTitle: String { get }
  var note: String { get }
  @NSCopying var imageData: NSData? { get }
  @NSCopying var thumbnailImageData: NSData? { get }
  var phoneNumbers: [CNLabeledValue] { get }
  var emailAddresses: [CNLabeledValue] { get }
  var postalAddresses: [CNLabeledValue] { get }
  var urlAddresses: [CNLabeledValue] { get }
  var contactRelations: [CNLabeledValue] { get }
  var socialProfiles: [CNLabeledValue] { get }
  var instantMessageAddresses: [CNLabeledValue] { get }
  @NSCopying var birthday: NSDateComponents? { get }
  @NSCopying var nonGregorianBirthday: NSDateComponents? { get }
  var dates: [CNLabeledValue] { get }
  func isKeyAvailable(key: String) -> Bool
  func areKeysAvailable(keyDescriptors: [CNKeyDescriptor]) -> Bool
  class func localizedStringForKey(key: String) -> String
  class func comparatorForNameSortOrder(sortOrder: CNContactSortOrder) -> NSComparator
  class func descriptorForAllComparatorKeys() -> CNKeyDescriptor
  func isUnifiedWithContactWithIdentifier(contactIdentifier: String) -> Bool
  init()
  @available(OSX 10.11, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.11, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let CNContactPropertyNotFetchedExceptionName: String
@available(OSX 10.11, *)
let CNContactIdentifierKey: String
@available(OSX 10.11, *)
let CNContactNamePrefixKey: String
@available(OSX 10.11, *)
let CNContactGivenNameKey: String
@available(OSX 10.11, *)
let CNContactMiddleNameKey: String
@available(OSX 10.11, *)
let CNContactFamilyNameKey: String
@available(OSX 10.11, *)
let CNContactPreviousFamilyNameKey: String
@available(OSX 10.11, *)
let CNContactNameSuffixKey: String
@available(OSX 10.11, *)
let CNContactNicknameKey: String
@available(OSX 10.11, *)
let CNContactPhoneticGivenNameKey: String
@available(OSX 10.11, *)
let CNContactPhoneticMiddleNameKey: String
@available(OSX 10.11, *)
let CNContactPhoneticFamilyNameKey: String
@available(OSX 10.11, *)
let CNContactOrganizationNameKey: String
@available(OSX 10.11, *)
let CNContactDepartmentNameKey: String
@available(OSX 10.11, *)
let CNContactJobTitleKey: String
@available(OSX 10.11, *)
let CNContactBirthdayKey: String
@available(OSX 10.11, *)
let CNContactNonGregorianBirthdayKey: String
@available(OSX 10.11, *)
let CNContactNoteKey: String
@available(OSX 10.11, *)
let CNContactImageDataKey: String
@available(OSX 10.11, *)
let CNContactThumbnailImageDataKey: String
@available(OSX 10.11, *)
let CNContactTypeKey: String
@available(OSX 10.11, *)
let CNContactPhoneNumbersKey: String
@available(OSX 10.11, *)
let CNContactEmailAddressesKey: String
@available(OSX 10.11, *)
let CNContactPostalAddressesKey: String
@available(OSX 10.11, *)
let CNContactDatesKey: String
@available(OSX 10.11, *)
let CNContactUrlAddressesKey: String
@available(OSX 10.11, *)
let CNContactRelationsKey: String
@available(OSX 10.11, *)
let CNContactSocialProfilesKey: String
@available(OSX 10.11, *)
let CNContactInstantMessageAddressesKey: String
