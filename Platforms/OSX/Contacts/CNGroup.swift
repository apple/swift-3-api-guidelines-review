
@available(OSX 10.11, *)
class CNGroup : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var identifier: String { get }
  var name: String { get }
  @available(OSX 10.11, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.11, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.11, *)
let CNGroupIdentifierKey: String
@available(OSX 10.11, *)
let CNGroupNameKey: String
