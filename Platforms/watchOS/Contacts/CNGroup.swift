
@available(watchOS 2.0, *)
class CNGroup : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  var identifier: String { get }
  var name: String { get }
  @available(watchOS 2.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  func mutableCopyWithZone(_ zone: NSZone) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(watchOS 2.0, *)
let CNGroupIdentifierKey: String
@available(watchOS 2.0, *)
let CNGroupNameKey: String
