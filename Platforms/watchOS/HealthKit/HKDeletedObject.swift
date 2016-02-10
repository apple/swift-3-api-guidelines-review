
@available(watchOS 2.0, *)
class HKDeletedObject : Object, SecureCoding {
  var uuid: UUID { get }
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
