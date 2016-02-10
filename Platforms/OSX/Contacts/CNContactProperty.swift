
@available(OSX 10.11, *)
class CNContactProperty : Object, Copying, SecureCoding {
  @NSCopying var contact: CNContact { get }
  var key: String { get }
  var value: AnyObject? { get }
  var identifier: String? { get }
  var label: String? { get }
  init()
  @available(OSX 10.11, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(OSX 10.11, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.11, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
