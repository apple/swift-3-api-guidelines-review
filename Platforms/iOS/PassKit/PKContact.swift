
@available(iOS 9.0, *)
class PKContact : Object {
  var name: PersonNameComponents?
  var postalAddress: CNPostalAddress?
  var emailAddress: String?
  var phoneNumber: CNPhoneNumber?
  @available(iOS 9.2, *)
  var supplementarySubLocality: String?
  init()
}
