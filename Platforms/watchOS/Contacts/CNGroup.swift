
@available(watchOS 2.0, *)
class CNGroup : Object, Copying, MutableCopying, SecureCoding {
  var identifier: String { get }
  var name: String { get }
  init()
  @available(watchOS 2.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  func mutableCopy(with zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(watchOS 2.0, *)
let CNGroupIdentifierKey: String
@available(watchOS 2.0, *)
let CNGroupNameKey: String
