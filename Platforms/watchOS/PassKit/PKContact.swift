
@available(watchOS 2.0, *)
class PKContact : Object {
  var name: PersonNameComponents?
  var postalAddress: CNPostalAddress?
  var emailAddress: String?
  var phoneNumber: CNPhoneNumber?
  init()
}
