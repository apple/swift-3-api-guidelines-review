
@available(OSX 10.10, *)
class CKServerChangeToken : NSObject, NSCopying, NSSecureCoding {
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
