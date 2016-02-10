
@available(tvOS 9.0, *)
class PersonNameComponents : Object, Copying, SecureCoding {
  var namePrefix: String?
  var givenName: String?
  var middleName: String?
  var familyName: String?
  var nameSuffix: String?
  var nickname: String?
  @NSCopying var phoneticRepresentation: PersonNameComponents?
  init()
  @available(tvOS 9.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
