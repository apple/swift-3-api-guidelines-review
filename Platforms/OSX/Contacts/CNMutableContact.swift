
@available(OSX 10.11, *)
class CNMutableContact : CNContact {
  var contactType: CNContactType
  var namePrefix: String
  var givenName: String
  var middleName: String
  var familyName: String
  var previousFamilyName: String
  var nameSuffix: String
  var nickname: String
  var phoneticGivenName: String
  var phoneticMiddleName: String
  var phoneticFamilyName: String
  var organizationName: String
  var departmentName: String
  var jobTitle: String
  var note: String
  @NSCopying var imageData: Data?
  var phoneNumbers: [CNLabeledValue]
  var emailAddresses: [CNLabeledValue]
  var postalAddresses: [CNLabeledValue]
  var urlAddresses: [CNLabeledValue]
  var contactRelations: [CNLabeledValue]
  var socialProfiles: [CNLabeledValue]
  var instantMessageAddresses: [CNLabeledValue]
  @NSCopying var birthday: DateComponents?
  @NSCopying var nonGregorianBirthday: DateComponents?
  var dates: [CNLabeledValue]
  init()
  init?(coder aDecoder: Coder)
}
