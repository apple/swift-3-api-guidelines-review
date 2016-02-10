
@available(iOS 9.0, *)
class HKDeletedObject : Object, SecureCoding {
  var uuid: UUID { get }
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
