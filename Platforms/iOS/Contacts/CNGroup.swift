
@available(iOS 9.0, *)
class CNGroup : Object, Copying, MutableCopying, SecureCoding {
  var identifier: String { get }
  var name: String { get }
  init()
  @available(iOS 9.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  func mutableCopyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 9.0, *)
let CNGroupIdentifierKey: String
@available(iOS 9.0, *)
let CNGroupNameKey: String
