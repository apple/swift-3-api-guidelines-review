
@available(OSX 10.10, *)
class CKServerChangeToken : Object, Copying, SecureCoding {
  @available(OSX 10.10, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
