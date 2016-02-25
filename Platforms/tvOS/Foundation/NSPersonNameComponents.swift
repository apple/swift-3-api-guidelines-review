
@available(tvOS 9.0, *)
class NSPersonNameComponents : NSObject, NSCopying, NSSecureCoding {
  var namePrefix: String?
  var givenName: String?
  var middleName: String?
  var familyName: String?
  var nameSuffix: String?
  var nickname: String?
  @NSCopying var phoneticRepresentation: NSPersonNameComponents?
  @available(tvOS 9.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(tvOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 9.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
