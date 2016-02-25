
@available(OSX 10.11, *)
class NSPersonNameComponents : NSObject, NSCopying, NSSecureCoding {
  var namePrefix: String?
  var givenName: String?
  var middleName: String?
  var familyName: String?
  var nameSuffix: String?
  var nickname: String?
  @NSCopying var phoneticRepresentation: NSPersonNameComponents?
  @available(OSX 10.11, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
