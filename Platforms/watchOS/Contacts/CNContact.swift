
@available(watchOS 2.0, *)
enum CNContactType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case person
  case organization
}
@available(watchOS 2.0, *)
enum CNContactSortOrder : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case userDefault
  case givenName
  case familyName
}
protocol CNKeyDescriptor : ObjectProtocol, SecureCoding, Copying {
}
extension NSString : CNKeyDescriptor {
}
@available(watchOS 2.0, *)
class CNContact : Object, Copying, MutableCopying, SecureCoding {
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
  @NSCopying var imageData: Data? { get }
  @NSCopying var thumbnailImageData: Data? { get }
  @available(watchOS 2.0, *)
  var imageDataAvailable: Bool { get }
  var phoneNumbers: [CNLabeledValue] { get }
  var emailAddresses: [CNLabeledValue] { get }
  var postalAddresses: [CNLabeledValue] { get }
  var urlAddresses: [CNLabeledValue] { get }
  var contactRelations: [CNLabeledValue] { get }
  var socialProfiles: [CNLabeledValue] { get }
  var instantMessageAddresses: [CNLabeledValue] { get }
  @NSCopying var birthday: DateComponents? { get }
  @NSCopying var nonGregorianBirthday: DateComponents? { get }
  var dates: [CNLabeledValue] { get }
  func isKeyAvailable(key: String) -> Bool
  func areKeysAvailable(keyDescriptors: [CNKeyDescriptor]) -> Bool
  class func localizedStringFor(key key: String) -> String
  class func comparatorForNameSortOrder(sortOrder: CNContactSortOrder) -> Comparator
  class func descriptorForAllComparatorKeys() -> CNKeyDescriptor
  func isUnifiedWithContactWith(identifier contactIdentifier: String) -> Bool
  init()
  @available(watchOS 2.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func mutableCopyWith(zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
let CNContactPropertyNotFetchedExceptionName: String
@available(watchOS 2.0, *)
let CNContactIdentifierKey: String
@available(watchOS 2.0, *)
let CNContactNamePrefixKey: String
@available(watchOS 2.0, *)
let CNContactGivenNameKey: String
@available(watchOS 2.0, *)
let CNContactMiddleNameKey: String
@available(watchOS 2.0, *)
let CNContactFamilyNameKey: String
@available(watchOS 2.0, *)
let CNContactPreviousFamilyNameKey: String
@available(watchOS 2.0, *)
let CNContactNameSuffixKey: String
@available(watchOS 2.0, *)
let CNContactNicknameKey: String
@available(watchOS 2.0, *)
let CNContactPhoneticGivenNameKey: String
@available(watchOS 2.0, *)
let CNContactPhoneticMiddleNameKey: String
@available(watchOS 2.0, *)
let CNContactPhoneticFamilyNameKey: String
@available(watchOS 2.0, *)
let CNContactOrganizationNameKey: String
@available(watchOS 2.0, *)
let CNContactDepartmentNameKey: String
@available(watchOS 2.0, *)
let CNContactJobTitleKey: String
@available(watchOS 2.0, *)
let CNContactBirthdayKey: String
@available(watchOS 2.0, *)
let CNContactNonGregorianBirthdayKey: String
@available(watchOS 2.0, *)
let CNContactNoteKey: String
@available(watchOS 2.0, *)
let CNContactImageDataKey: String
@available(watchOS 2.0, *)
let CNContactThumbnailImageDataKey: String
@available(watchOS 2.0, *)
let CNContactImageDataAvailableKey: String
@available(watchOS 2.0, *)
let CNContactTypeKey: String
@available(watchOS 2.0, *)
let CNContactPhoneNumbersKey: String
@available(watchOS 2.0, *)
let CNContactEmailAddressesKey: String
@available(watchOS 2.0, *)
let CNContactPostalAddressesKey: String
@available(watchOS 2.0, *)
let CNContactDatesKey: String
@available(watchOS 2.0, *)
let CNContactUrlAddressesKey: String
@available(watchOS 2.0, *)
let CNContactRelationsKey: String
@available(watchOS 2.0, *)
let CNContactSocialProfilesKey: String
@available(watchOS 2.0, *)
let CNContactInstantMessageAddressesKey: String
