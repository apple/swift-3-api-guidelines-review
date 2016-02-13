
@available(tvOS 8.0, *)
class CKServerChangeToken : Object, Copying, SecureCoding {
  @available(tvOS 8.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
