
@available(watchOS 2.0, *)
class NSPersonNameComponents : NSObject, NSCopying, NSSecureCoding {
  var namePrefix: String?
  var givenName: String?
  var middleName: String?
  var familyName: String?
  var nameSuffix: String?
  var nickname: String?
  @NSCopying var phoneticRepresentation: NSPersonNameComponents?
  init()
  @available(watchOS 2.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
