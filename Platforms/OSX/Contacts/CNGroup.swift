
@available(OSX 10.11, *)
class CNGroup : Object, Copying, MutableCopying, SecureCoding {
  var identifier: String { get }
  var name: String { get }
  init()
  @available(OSX 10.11, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(OSX 10.11, *)
  func mutableCopy(zone: Zone = nil) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.11, *)
let CNGroupIdentifierKey: String
@available(OSX 10.11, *)
let CNGroupNameKey: String
