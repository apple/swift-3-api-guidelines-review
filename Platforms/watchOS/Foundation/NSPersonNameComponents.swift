
@available(watchOS 2.0, *)
class PersonNameComponents : Object, Copying, SecureCoding {
  var namePrefix: String?
  var givenName: String?
  var middleName: String?
  var familyName: String?
  var nameSuffix: String?
  var nickname: String?
  @NSCopying var phoneticRepresentation: PersonNameComponents?
  init()
  @available(watchOS 2.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
