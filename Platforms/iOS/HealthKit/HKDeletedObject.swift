
@available(iOS 9.0, *)
class HKDeletedObject : Object, SecureCoding {
  var uuid: UUID { get }
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
