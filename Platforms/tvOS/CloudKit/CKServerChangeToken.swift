
@available(tvOS 8.0, *)
class CKServerChangeToken : Object, Copying, SecureCoding {
  @available(tvOS 8.0, *)
  func copy(with zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
