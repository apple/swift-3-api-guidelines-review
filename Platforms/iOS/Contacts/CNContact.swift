
@available(iOS 9.0, *)
enum CNContactType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Person
  case Organization
}
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
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
  @available(iOS 9.0, *)
  var imageDataAvailable: Bool { get }
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
  @available(iOS 9.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  func mutableCopyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let CNContactPropertyNotFetchedExceptionName: String
@available(iOS 9.0, *)
let CNContactIdentifierKey: String
@available(iOS 9.0, *)
let CNContactNamePrefixKey: String
@available(iOS 9.0, *)
let CNContactGivenNameKey: String
@available(iOS 9.0, *)
let CNContactMiddleNameKey: String
@available(iOS 9.0, *)
let CNContactFamilyNameKey: String
@available(iOS 9.0, *)
let CNContactPreviousFamilyNameKey: String
@available(iOS 9.0, *)
let CNContactNameSuffixKey: String
@available(iOS 9.0, *)
let CNContactNicknameKey: String
@available(iOS 9.0, *)
let CNContactPhoneticGivenNameKey: String
@available(iOS 9.0, *)
let CNContactPhoneticMiddleNameKey: String
@available(iOS 9.0, *)
let CNContactPhoneticFamilyNameKey: String
@available(iOS 9.0, *)
let CNContactOrganizationNameKey: String
@available(iOS 9.0, *)
let CNContactDepartmentNameKey: String
@available(iOS 9.0, *)
let CNContactJobTitleKey: String
@available(iOS 9.0, *)
let CNContactBirthdayKey: String
@available(iOS 9.0, *)
let CNContactNonGregorianBirthdayKey: String
@available(iOS 9.0, *)
let CNContactNoteKey: String
@available(iOS 9.0, *)
let CNContactImageDataKey: String
@available(iOS 9.0, *)
let CNContactThumbnailImageDataKey: String
@available(iOS 9.0, *)
let CNContactImageDataAvailableKey: String
@available(iOS 9.0, *)
let CNContactTypeKey: String
@available(iOS 9.0, *)
let CNContactPhoneNumbersKey: String
@available(iOS 9.0, *)
let CNContactEmailAddressesKey: String
@available(iOS 9.0, *)
let CNContactPostalAddressesKey: String
@available(iOS 9.0, *)
let CNContactDatesKey: String
@available(iOS 9.0, *)
let CNContactUrlAddressesKey: String
@available(iOS 9.0, *)
let CNContactRelationsKey: String
@available(iOS 9.0, *)
let CNContactSocialProfilesKey: String
@available(iOS 9.0, *)
let CNContactInstantMessageAddressesKey: String
