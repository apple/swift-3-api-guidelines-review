
@available(iOS 8.0, *)
class CKServerChangeToken : Object, Copying, SecureCoding {
  @available(iOS 8.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
